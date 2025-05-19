#/bin/bash


if sudo bash -c '[ -d /root/.betterfish ]'; then
    read -p "Betterfish is already installed. Do you want to proceed? [Y/n] " answer
    if [[ $answer == "y" || $answer == "Y" ]] then
        echo "";
    else
        exit 1;
    fi
fi

sudo bash -c 'cp dotfile /root/.betterfish -r'
sudo bash -c 'sudo cat config >> /root/.config/fish/config.fish'
sudo bash -c 'sudo touch /root/.config/fish/bftheme.fish'
sudo bash -c 'echo "set -g bfish_default_theme" /root/.betterfish/themes/bash.bftheme > /root/.config/fish/bftheme.fish'

echo "Successfully installed betterfish! Restarting the shell..."
exec fish
