build:
	podman build -t dotfiles .

run:
	podman run --rm -it dotfiles
