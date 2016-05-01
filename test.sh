current_directory="$(pwd)"
echo "${current_directory}/" > install_directory.txt
install_directory=$(cat install_directory.txt)
printf "%s"  "alias make_shortcut_update='cd ${install_directory} && git pull origin master'" >> install_directory.txt
