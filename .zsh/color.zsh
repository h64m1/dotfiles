#_______________________________________________________________________________
# ls color settings
if [ ! -f ~/.dircolors.256dark ]; then
   git clone https://github.com/seebi/dircolors-solarized/blob/master/dircolors.256dark ~/.dircolors.256dark
fi
eval $(dircolors ~/.dircolors.256dark)

