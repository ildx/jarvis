SRC="$(dirname "$(realpath "$0")")"
SSH="$HOME/.ssh"

# Helpers
source "$SRC/printers.sh"

keygen() {
				if ! [[ -f "$SSH/authorized_keys" ]]; then
								warning "Generating ssh keys..."
								printf "\n"

								mkdir -p "$SSH"
								ssh-keygen -t ed25519 -C "iivari.leinonen@gmail.com" -f "$SSH/id.personal"
								cat "$SSH/id.personal.pub" >> "$SSH/authorized_keys"
								eval "$(ssh-agent -s)"

								echo "# Github
												Host github.com
												AddKeysToAgent yes
												IdentityFile ~/.ssh/id.personal
												IgnoreUnknown UseKeychain" >> "$SSH/config"
								ssh-add ~/.ssh/id.personal

								printf "\n"
								success "SSH keys generated successfully!"
				else
								success "SSH keys already generated, skipping..."
				fi
}
