#!/usr/bin/bash

SRC="$(dirname "$(realpath "$0")")"

# Helpers
source "$SRC/printers.sh"

DIRS=(
				"$HOME/.config"
				"$HOME/Archives"
				"$HOME/Development"
				"$HOME/Development/personal"
				"$HOME/Pictures/Screenshots"
)

populate() {
				info "Build places to call home!"
				printf "\n"

				for dir in "${DIRS[@]}"; do
								if [ -d "$dir" ]; then
												warning "Directory $dir already exists, skipping..."
								else
												mkdir -p "$dir"
												success "Directory $dir created successfully!"
								fi
				done

				printf "\n"
				success "A new file system in place!"
}
