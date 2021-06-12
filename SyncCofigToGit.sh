rsync -apzt --delete ~/.vimrc ~/LinuxConfig/Vim
rsync -apzt --delete ~/.vim ~/LinuxConfig/Vim

cd ~/LinuxConfig/Vim
git pull
git add .
git commit -m "anychange"
git push
