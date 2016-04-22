## itamae setup
### ssh login
```
# usermod -G adm debian
 edit /etc/pam.d/su
auth       required   pam_wheel.so  group=adm

# apt-get update
# apt-get upgrade

# apt-get -y install sudo
edit visudo
debian   ALL=(ALL)   ALL
```

### edit my files
* itamae/nodes/my_app.json
* itamae/cookbooks/users/files/etc/sudoers.d/admin-users
* itamae/cookbooks/users/files/home/user/.ssh/authorized_keys

### exec command
```
itamae ssh -h [my_host] -j itamae/nodes/my_app.json -u [login_user] itamae/roles/web.rb
```

## capistrano setup

あとで書く
