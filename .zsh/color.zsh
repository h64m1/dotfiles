#_______________________________________________________________________________
# ls color settings
if [ ! -f ~/.dircolors.256dark ]; then
  wget https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark -O $HOME/.dircolors.256dark
fi
eval $(dircolors ~/.dircolors.256dark)

