#pacman
pacman -Syu;
pacman -S --needed --noconfirm git john nmap hashcat netcat metasploit skypeforlinux-stable-bin hydra nikto

#aur
mkdir ~/aur
cd ~/aur
git clone https://aur.archlinux.org/burpsuite.git
git clone https://aur.archlinux.org/seclists.git
git clone https://aur.archlinux.org/polenum.git
git clone https://aur.archlinux.org/openldap-ppm.git
git clone https://aur.archlinux.org/enum4linux.git
git clone https://aur.archlinux.org/exploit-db-git.git
git clone https://aur.archlinux.org/gobuster.git
git clone https://aur.archlinux.org/peass.git
git clone https://aur.archlinux.org/hash-identifier.git
for i in `ls`; do
	cd $i
  git pull origin
	makepkg -si --noconfirm
	cd ..
done
