#/bin/bash

if [ -d ~/.betterfish ]; then
    read -p "Betterfish is already installed. Do you want to proceed? [Y/n] " answer
    if [[ $answer == "y" || $answer == "Y" ]] then
        echo "";
    else
        exit 1;
    fi
fi

cp dotfile ~/.betterfish
cat config >> ~/.config/fish/config.fish
touch ~/.config/fish/bftheme.fish
echo "set -g bfish_default_theme" ~/.betterfish/themes/bash.bftheme > ~/.config/fish/bftheme.fish

echo "Successfully installed betterfish! Restarting the shell..."
exec fish
