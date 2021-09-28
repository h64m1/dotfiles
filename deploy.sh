#! /bin/bash

# get current directory
current=$(cd $(dirname $0); pwd)

# 対象dotfiles
dotfiles=(
	".cargo"
	".config"
	".gitconfig"
	".vimrc"
	".zsh"
	".zshenv"
	".zshrc"
)

for dotfile in "${dotfiles[@]}"
do
	# ln
	# -s, --symbolic: make symbolic links instead of hard links
	# -f, --force: remove existing destination files
	# -n, --no-dereference: treat LINK_NAME as a normal file if it is a symbolic link to a directory
	# -v, --verbose: print name of each linked file
	link="ln -sfnv"
	if [ ${dotfile} = ".config" ]; then
		for config in `ls -1 ${dotfile}`
		do
			source_file="${current}/${dotfile}/${config}"
			target_file="${HOME}/${dotfile}/${config}"
			link_dotfile="${link} ${source_file} ${target_file}"
			$link_dotfile
		done
	else
		source_file="${current}/${dotfile}"
		target_file="${HOME}/${dotfile}"
		link_dotfile="${link} ${source_file} ${target_file}"
		$link_dotfile
	fi
done
