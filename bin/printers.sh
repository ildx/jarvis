# Define printers
info () {
	echo -e "\r[ \033[00;34m!!\033[0m ] $1"
}

success () {
	echo -e "\r\033[2K[ \033[00;32mOK\033[0m ] $1"
}

warning () {
  echo -e "\r[ \033[00;33m..\033[0m ] $1"
}
