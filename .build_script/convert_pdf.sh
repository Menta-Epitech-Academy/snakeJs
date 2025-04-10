#!/bin/bash

files_list=()

parts=$(jq -c '.parts[]' "config.json")
if [ $? -ne 0 ] || [ -z "$parts" ]; then
    echo "Erreur : Impossible de lire les parties depuis config.json. Vérifiez que le fichier est valide."
    exit 1
fi

for part in $parts; do
    subparts=$(jq -c '.subparts[]' <<< "$part" 2>/dev/null)
    if [ $? -ne 0 ] || [ -z "$subparts" ]; then
        echo "Erreur : Impossible de lire les sous-parties pour la partie suivante : $part. Vérifiez que le fichier est valide."
        continue
    fi

    for subpart in $subparts; do
        subpart_name=$(jq -r '.name' <<< "$subpart" 2>/dev/null)
        subpart_file=$(jq -r '.path' <<< "$subpart" 2>/dev/null)

        if [ -f "$subpart_file" ]; then
            files_list+=("$subpart_file")
        else
            echo "Fichier $subpart_file introuvable."
        fi

        if (jq -r '.showHint' <<< "$subpart" | grep -q "true"); then
            hint_file=$(jq -r '.hintPath' <<< "$subpart" 2>/dev/null)
            if [ -f "$hint_file" ]; then
                files_list+=("$hint_file")
            else
                echo "Fichier d'indice $hint_file introuvable."
            fi
        fi

        if (jq -r '.showSolution' <<< "$subpart" | grep -q "true"); then
            solution_file=$(jq -r '.solutionPath' <<< "$subpart" 2>/dev/null)
            if [ -f "$solution_file" ]; then
                files_list+=("$solution_file")
            else
                echo "Fichier de solution $solution_file introuvable."
            fi
        fi
    done
done

if [ ${#files_list[@]} -eq 0 ]; then
    echo "Aucun fichier valide trouvé pour la conversion."
    exit 1
fi
echo "Fichiers à convertir :"
for file in "${files_list[@]}"; do
    echo " - $file"
done

output_name=$(jq -r '.subjectname' "config.json" 2>/dev/null)
if [ $? -ne 0 ] || [ -z "$output_name" ]; then
    echo "Erreur : Le nom de sortie est vide ou absent dans config.json."
    exit 1
fi
echo "Nom de sortie : $output_name"

pandoc "${files_list[@]}" --pdf-engine=xelatex --template=./.build_script/template.tex -o "$output_name.pdf"
if [ $? -eq 0 ]; then
    echo "PDF généré avec succès : $output_name.pdf"
else
    echo "Erreur lors de la génération du PDF."
    exit 1
fi