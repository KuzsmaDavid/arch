pacman -Syu;
pacman -s --needed git;
cd ~/;
mkdir aur;
cd aur;
git clone https://aur.archlinux.org/burpsuite.git;
cd burpsuite;
git pull origin;
makepkg -si;
