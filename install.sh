current_directory="$(pwd)"

echo "Checking for .bash_aliases...
"
if [ ! -f ~/.bash_aliases ]
  then
    echo "Creating .bash_aliases..."
    touch ~/.bash_aliases
  else
    echo ".bash_aliases already exits"
    echo "skipping..."
fi

echo "alias make_shortcut='bash ${current_directory}/make_shortcut.sh'" >> ~/.bash_aliases
echo "${current_directory}/" > install_directory.txt
install_directory=$(cat install_directory.txt)
printf "%s"  "alias make_shortcut_update='cd ${install_directory} && git pull origin master'" >> ~/.bash_aliases

echo "
All done!!"
echo "Type 'make_shortcut' into terminal to create a shortcut!!"
echo "Type 'make_shortcut_update' into terminal to update!!"
echo "
Go fuck yourself!!"
