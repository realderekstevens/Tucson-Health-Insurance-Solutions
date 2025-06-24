# MedicareAPI
The open-source database dedicated to cataloging Medicare data. Right now it is being developed with PostgREST API to complement the PostgreSQL 15 on an Arch Linux.

# Move everything in this folder to /home/healthcareapi/
sudo pacman -Syu git neovim
sudo useradd -m -G wheel healthcareapi
sudo EDITOR=nvim visudo
    *uncomment wheel group, around line 108*
passwd healthcareapi
    *confirm password*

# Install yay
su - healthcareapi
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Install this
yay -S realderekstevens/HealthcareAPI
	*Copy/Paste below files to /home/healthcareapi/ directory
chown healthcareapi /home/healthcareapi/

# Initalize the postgres database
yay -Syu postgrest-bin postgresql ufw gum
su postgres
initdb --locale=C.UTF-8 --encoding=UTF8 -D /var/lib/postgres/data --data-checksums
exit
systemctl start postgresql
systemctl enable postgresql
vim /var/lib/postgres/.psql_history
	:wq
chown postgres /var/lib/postgres/.psql_history
timedatectl set-timezone America/Phoenix

# 2.) Copy the MakeFile, arch_pg_render--1.0, arch_pg_render.control
```bash
yay -Syu git
cd ~/home/user
git clone https://github.com/realderekstevens/arch_pg_render
sudo cp arch_pg_render--1.0.sql /usr/share/postgresql/extension
sudo cp arch_pg_render.control /usr/share/postgresql/extension
```

# 3.) execute the general database setup:
```bash
psql -U postgres -d medicare -a -f 01_schema.sql
psql -U postgres -d medicare -a -f 02_views.sql
psql -U postgres -d medicare -a -f 03_data.sql
```

# 4.) Start PostgREST Server
