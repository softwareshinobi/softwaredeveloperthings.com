NFS Client

## Excerpt

To use a NFS Client to mount this to your filesystem, you can look at this blogpost

## Update Operating System Packages

```
sudo apt-get update
```

## install the nfs client 

```
sudo apt-get install -y nfs-client
```

## Mount The Remote File System

```
sudo mount -v -o vers=4,loud softwareshinobi.online:/ /home/software-shinobi/Videos
```

## Verify Remote NFS Share Is Mounted


	
```
$ df -h
```

output...

```
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda2       109G   53G   51G  52% /
192.168.0.4:/   4.5T  2.2T  2.1T  51% /mnt
```
## Creating A Test File To Check Permissions

Now, create a test file on our NFS export:

```
touch /mnt/file.txt
```

Verify that the test file is on the local path:

```
ls /data/nfs-storage/
```

```
file.txt
```

## Configuring Mount Using /etc/fstab

If you want to load this into other client’s /etc/fstab:

```
192.168.0.4:/   /mnt   nfs4    _netdev,auto  0  0
```
