#!/usr/bin/env bash

_VIM_="$HOME/.vimrc"
VIMRC=vimrc
MANAGER=

VUNDLE_GIT="https://github.com/VundleVim/Vundle.vim.git"
NEOBUNDLE_GIT="https://github.com/Shougo/neobundle.vim.git"
PATHOGEN_GIT="https://github.com/tpope/vim-pathogen.git"
DEIN_GIT="https://github.com/Shougo/dein.vim.git"
VAM_GIT="https://github.com/MarcWeber/vim-addon-manager.git"

PLUG_URL="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

function app()
{
   local root=$(get_pwd)
   select_manager
   create "$root" $MANAGER "$root/$VIMRC"
   link "$root/$VIMRC"
   if [ $? -eq 0 ]; then
     echo -en "\n"
     install $MANAGER
   else
     echo -en "\nfailed!\n"
   fi
}

function may_download()
{
   if [ $# -eq 2 ]; then
     local s=$1
     local m=$2
     if [ ! -e $s ]; then
        case "$m" in
	   "vundle")
               git clone $VUNDLE_GIT "$s" -j4
	    ;;
	   "neobundle")
               git clone $NEOBUNDLE_GIT "$s" -j4
	    ;;
           "pathogen")
	       git clone $PATHOGEN_GIT "$s" -j4
	    ;;
	   "plug")
               curl -fLo "$s/autoload/plug.vim" --create-dirs $PLUG_URL
	    ;;
           "dein")
	       git clone $DEIN_GIT "$s" -j4
	    ;;
	   "vam")
	       git clone $VAM_GIT "$s" -j4
	    ;;
	esac
     else
	echo "$m is ok!"
     fi
   fi
}

function install()
{
  if [ $# -eq 1 ]; then
     echo "installing plugins by $1..."
     case "$1" in
	"vundle") vim +PluginInstall +qall ;;
	"neobundle") vim +NeoBundleInstall +qall ;;
	"pathogen") echo "pathogen pass" ;;
	"plug") vim +PlugInstall +qall ;;
	"dein") echo "dein pass" ;;
	"vam") echo "vam pass" ;;
     esac
     echo "success!"
  fi
}

function link()
{
  if [ $# -eq 1 ]; then
     local path=$1
     if [ -e "$path" ]; then
       if [ -e "$_VIM_" ]; then
          read -p "$_VIM_ is exist, continue?(Y/n)" opt
	  if [ "$opt" == "Y" ]; then
	     mv "$_VIM_" "$_VIM_.bkp"
	     ln -sf "$path" "$_VIM_"
	     return 0
	  else
	     exit 0
          fi
       else
          ln -sf "$path" "$_VIM_"
	  return 0
       fi
     fi
  fi
  return 1
}

function create()
{
  if [ $# -eq 3 ]; then
     local path=$1
     local manager=$2
     local outfile=$3
     local temp=$(mktemp -u)

     local source="$path/manager/$manager/source"
     may_download "$source" "$manager"

     echo "\"初始化" > "$temp"
     echo -en "let g:kingVimRoot='$path'\n" >> "$temp"
     echo "set rtp+=$source" >> "$temp"
     echo -en "\n" >> "$temp"
     cat "$path/vimrc.d/path.vimrc" >> "$temp"
     echo -en "\n" >> "$temp"
     cat "$path/vimrc.d/charset.vimrc" >> "$temp"
     echo -en "\n" >> "$temp"
     echo "\"$manager插件管理" >> "$temp"
     echo "execute 'source' g:kingVimManager.'/"$manager"/init.vimrc'" >> "$temp" 
     echo -en "\n" >> "$temp"
     cat "$path/vimrc.d/common.vimrc" >> "$temp"
     if [ -e $temp ]; then
        mv $temp $outfile
     fi
  fi
}

function select_manager()
{
   echo "Manager List:"
   echo -e "\t 0  ---  Vundle"
   echo -e "\t 1  ---  NeoBundle"
   echo -e "\t 2  ---  Pathogen"
   echo -e "\t 3  ---  Plug"
   echo -e "\t 4  ---  Dein"
   echo -e "\t 5  ---  VAM"
   echo -e "\t 99 ---  Quit"
   echo ""
   read -p "please select:" opt
   case $opt in
      "0") MANAGER="vundle" ;;
      "1") MANAGER="neobundle" ;;
      "2") MANAGER="pathogen" ;;
      "3") MANAGER="plug" ;;
      "4") MANAGER="dein" ;;
      "5") MANAGER="vam" ;;
      "99") exit 0 ;;
       * ) echo select error!; exit 1 ;;
   esac
}

function get_pwd()
{
  local s="${BASH_SOURCE[0]}"
  local d=""
  while [ -h "$s" ]; do #resolve $SOURCE until the file is no longer a symlink
     d="$( cd -P "$( dirname "$s" )" >/dev/null && pwd )"
     s="$(readlink "$s")"
     [[ $s != /* ]] && s="$d/$s" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
  done
  d="$( cd -P "$( dirname "$s" )" >/dev/null && pwd )"
  echo $d
}

app
