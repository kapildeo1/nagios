sudo growpart   /dev/xvda 1        # increase hard disc space or mounted partition.   
sudo xfs_growfs -d  /dev/xvda1    # For reflect on the Ext1,2,3 & xfs file type
sudo resize2fs  /dev/xvda1       # For reflect on the Ext4 file type.
