SRC="$(dirname "$(realpath "$0")")"

# Helpers
source "$SRC/printers.sh" # info, success

# Nix
kill_nix() {
	warning "Killing Nix..."
	success "Nix is dead!"
	printf "\n"
}

# Homebrew
kill_brew() {
	warning "Killing Brew..."
	success "Brew is dead!"
	printf "\n"
}

# System preferences
kill_prefs() {
	warning "Resetting system..."
	success "System rebooted!"
	printf "\n"
}

# Nuke
nuke() {
	info "Declaring bankruptcy!"
	printf "\n"
	
	kill_nix
	kill_brew
	kill_prefs

	success "The system was nuked successfully!"
}
