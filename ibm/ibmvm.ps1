 	
Get-Disk | Where-Object PartitionStyle –Eq 'RAW' | Initialize-Disk -PartitionStyle MBR
New-Partition -DiskNumber 2 -Size 32gb -DriveLetter g|
Format-Volume -FileSystem NTFS -NewFileSystemLabel “TOOLING” -Confirm:$false

New-Partition -DiskNumber 2 -Size 128gb -DriveLetter f|
Format-Volume -FileSystem NTFS -NewFileSystemLabel “DOCKER” -Confirm:$false
 
