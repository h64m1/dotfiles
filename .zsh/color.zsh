#_______________________________________________________________________________
# ls color settings
if [ ! -f ~/.dircolors.256dark ]; then
  curl -o $HOME/.dircolors.256dark https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark 
fi
eval $(dircolors ~/.dircolors.256dark)

# set foreground, background color for zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#148383,bg=#002b36,bold,underline"

