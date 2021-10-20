#!/bin/bash
# echo "$python_dir"
# variabel med katalog som innehåller pythonprojekt behövs 5 min
# (printa ut alla filnamn inkl sökväg(optional) som sluter på .py som ligger under ovanstående)
# utgå ifrån katalogen i variablen. gå in i samtliga underkataloger 5 min
# cd "$python_dir"
while true; do

    python_dir=C:/Users/src/Documents
    pushd "$python_dir" > /dev/null

    let count=0
    for file in *
    do
        echo $file
        let count=count+1
    done
    echo ""
    echo "Count: $count"

    echo "What folder would you like to go ahead and open or type q to quit?"
    read folder
    if [[ $folder == 'q' ]]; then
        echo "You are now leaving this program!"
        break
    fi
    python_dir=C:/Users/src/Documents/${folder}
    cd ${python_dir}

    let count=0
    for file in *
    do
        echo $file
        let count=count+1
    done
    echo ""
    echo "Count: $count"

    echo "What folder would you like to go ahead and open or type q to quit?"
    read next_folder
    if [[ $folder == 'q' ]]; then
        echo "You are now leaving this program!"
        break
    fi
    python_dir=C:/Users/src/Documents/${folder}/${next_folder}
    cd ${python_dir}

    let count=0
    for file in `ls | grep .*.py`
    do
        echo $file
        let count=count+1
    done
    echo ""
    echo "Count: $count"
done