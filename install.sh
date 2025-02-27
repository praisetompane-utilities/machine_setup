package=$1

if [ -z "$package" ]; then
    echo "Package cannot be empty. Please supply package name."
else
    if [[ $package == "all" ]]; then
        echo "instlling all"
        for file in **/*.sh; do
            echo "Executing: $file"
            if [[ $file = "install.sh" ]]; then
                echo "Skipping the main install file to prevent an infinite loop"
                continue
            fi
            zsh $file
            echo "\n"
        done
    else
        for module in $package/*.sh; do
            echo "Executing module: $module\n"
            zsh $module
        done
    fi
fi