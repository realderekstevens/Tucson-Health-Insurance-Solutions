# arch_pg_render
Render engine extension for bare metal PostgreSQL 15 on Arch Linux.

# MedicareAPI
The open-source database dedicated to cataloging Medicare data. Right now it is being developed with PostgREST API to complement the PostgreSQL 15 on an Arch Linux.

# 0.) Install YaY
```bash
pacman -Syu git
sudo useradd -m -G wheel user
sudo EDITOR=vim visudo
(Find the and uncomment wheel group without password line 108
passwd user
confirm password
su - user
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

# 1.) Initalize the postgres database
```bash
yay -Syu postgrest-bin postgresql
su postgres
initdb --locale=C.UTF-8 --encoding=UTF8 -D /var/lib/postgres/data --data-checksums
exit
systemctl start postgresql
systemctl enable postgresql
vim /var/lib/postgres/.psql_history
wq
chown postgres /var/lib/postgres/.psql_history
```

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
