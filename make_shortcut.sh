echo "Enter a word you would like to use for a shortcut: "
read shortcut

echo "Enter the command that you would like to run:"
echo "Be sure to double check your spelling!"
read c

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

echo "alias ${shortcut}='${c}'" >> ~/.bash_aliases

echo "
All done!!"
echo "
Go fuck yourself!!"
