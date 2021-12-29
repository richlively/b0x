#!/bin/bash
pushd ~ || exit
git clone --bare git@github.com:richlively/b0x.git "$HOME"/.b0x
function b0x {
	/usr/bin/git --git-dir="$HOME"/.b0x/ --work-tree="$HOME" "$@"
}
if b0x checkout; then
	echo "Checked out b0x.";
else
	echo "Backing up pre-existing dot files.";
	mkdir -p .b0x-backup
	b0x checkout 2>&1 | grep -e "\s+\." | awk "{print $1}" | xargs -I{} mv {} .b0x-backup/{}
	b0x checkout
fi;
b0x config status.showUntrackedFiles no
popd || exit
