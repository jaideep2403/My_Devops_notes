CRONTAB
to check installed  or not = rpm -q crontabs / yum list installed crontabs / systemctl status crond.service
to schedule = #crontab -e , #crontab -r to remove
logs = #cat /var/logs/cron
to allow users - #cat /etc/cron.allow
conifg file = #cat /etc/crontab
              #crontab -lu <user-name>
*min *hour *date *month *week


rsync -v <source_path> <dest_path> --progress
rsync -av -e ssh /file/* root@ip:/dest_path/

SCP
scp -pr file roor@ip:/path

disk - PV - VG -LV
fdisk /dev/sda
pvs
pvcreate /dev/sda1
vgcreate VG /dev/sda1
vgs
lvcreate -L -n +2G LV VG
mkdir /testdir
mkfs.ext4 /dev/VG/LV /testdir
resize2fs /dev/VG/LV  or xfsgrowfs

