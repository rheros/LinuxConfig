
cd ~/GitHub/LinuxConfig
git pull
rsync -apzt --delete ~/.vimrc ~/GitHub/LinuxConfig/Vim
rsync -apzt --delete ~/.vim ~/GitHub/LinuxConfig/Vim
rsync -apzt ~/SyncCofigToGit.sh ~/GitHub/LinuxConfig

git add .
git commit -m "anychange"
git push
