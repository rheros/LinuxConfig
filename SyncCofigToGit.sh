rsync -apzt --delete ~/.vimrc ~/GitHub/LinuxConfig/Vim
rsync -apzt --delete ~/.vim ~/GitHub/LinuxConfig/Vim
rsync -apzt ~/SyncCofigToGit.sh ~/GitHub/LinuxConfig

cd ~/GitHub/LinuxConfig/Vim
git pull
git add .
git commit -m "anychange"
git push
