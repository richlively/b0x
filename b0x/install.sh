#!/bin/bash
pushd ~
git clone --bare git@github.com:richlively/b0x.git $HOME/.b0x
function b0x {
	/usr/bin/git --git-dir=$HOME/.b0x/ --work-tree=$HOME $@
}
b0x checkout
if [ $? = 0 ]; then
	echo "Checked out b0x.";
else
	echo "Backing up pre-existing dot files.";
	mkdir -p .b0x-backup
	b0x checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .b0x-backup/{}
	b0x checkout
fi;
b0x config status.showUntrackedFiles no
popd
