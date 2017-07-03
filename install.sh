mkdir -p backups
cp ~/.bash_profile backups/bash_profile_$(date +%Y-%m-%d_%H-%M-%S)

awk '!/#AUTOGENERATED_DEV_TAG$/' ~/.bash_profile  > .bash_profile_tmp 
echo 'source ~/dev/init.sh; #AUTOGENERATED_DEV_TAG' >> .bash_profile_tmp
mv .bash_profile_tmp ~/.bash_profile
