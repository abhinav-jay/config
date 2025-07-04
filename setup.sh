#! /bin/bash
mv ~/.config/ ~/config_backup/
git clone https://github.com/abhinav-jay/dotfiles ~/.config/
cd ~/config_backup/
rm -rf fish sway qutebrowser wofi alacritty ~/.config/nvim/
cp -rf ~/config_backup/ ~/.config/
chmod +x ~/.config/sway/status.sh
echo -e "\e[42mThe config backup file has successfully been created, you can find it at ~/config_backup/"
echo "The Installation has been completed! You may have to open another sway session or type swaymsg reload to load the new configuration.\e[0m"
