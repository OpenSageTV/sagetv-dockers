# DietPi for SageTV Dockers

## Prerequisites
- DietPi VM installed in Hyper-V or other virtual manager
- DietPi initial setup completed as prompted during the above install
- Windows shares created as needed to hold all software and media

## DietPi Console
- go into the console and run dietpi-software
- Use Search Software and type "docker"
- Select Docker: and Portainer: (not Docker Compose) and install
- Exit install software

## Share Mounts
- Overview
	- Each Volume in the container is mapped to a mount under the /mnt folder in DietPi OS
	- Two options available from here...
		- If you want the files stored on the DietPi OS (VM) disk then you do NOT need to map this mount to a windows share
		- If you want the files sotred on windows or other file system (NAS) then you need to follow the below steps the mount the /mnt/xxx location to a share
			
			#### Connect DietPi VM mounts to your Windows shares
			
			- Create share mounts to connect DietPi VM mounts to your Windows shares
				- At prompt type: dietpi-drive_manager
				- Select Add network drive
				- Select Samba (to connect to a windows share)
				- Follow prompts to enter IP, Share, User/Pass of previously created network share
				- When prompted for unique folder name for mount - enter: location (see below)
				- Select Back to create other share/mounts
				- Repeat for other shares/mounts
					
					> Note: you NEED at least the location **media** mapped as you likely do not want the media stored inside the DietPi VM
					
					- Location: appdata - location for the installed sagetv and/or opendct software
					- Location: media - location where your media files exist
					- Location: tv - location where your tv recordings will be saved
					- Location: other - some other location that will show in SageTV as /unraid
				- For any above location that will execute software (ie: appdata) do the following
					- Run dietpi-explorer (needed to change mount permissions from default)
					- Navigate to etc then to fstab.  
					- Open fstab (which loads the nano editor)
					- Change the permissions on each mount you want execute on from 770 to 777
						- Change it in 2 places per mount line in the fstab file
					- Save by pressing Ctrl-O
					- Exit by pressing Ctrl-X

## Browser
- go to DIETPIIP:9002 (replace DIETPIIP with the IP of the DietPi VM ie: 192.168.0.102:9002)
	> This launches Portainer - follow prompts on first run to create a user/pass
- Login
- Environments are shown - click on Local (only one offered)
- Go to Stacks
	- Create stack
	- Name: must be lowercase, no spaces etc.
	- Select - Use a Git Repository
	- Repository URL: https://github.com/OpenSageTV/sagetv-dockers
	- Compose Path: sagetv-server-2.yaml
	- Automatic Updates: disable (as likely you will edit your copy)
	- Click Deploy the stack
- Create template from stack so you can edit your network details
	- steps here....
			
	
	
