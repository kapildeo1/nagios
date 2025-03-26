sudo growpart   /dev/xvda 1           
sudo xfs_growfs -d  /dev/xvda 1 
sudo resize2fs  /dev/xvda 1       # For the Ext4 file type.
