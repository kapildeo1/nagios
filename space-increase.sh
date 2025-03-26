sudo growpart   /dev/xvda 1           
sudo xfs_growfs -d  /dev/xvda1    # For the Ext1,2,3 & xfs file type
sudo resize2fs  /dev/xvda 1       # For the Ext4 file type.
