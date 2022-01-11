#!/usr/bin/env bash

export TEMPLATE_DATE=$(date +%F)
export OPENDCT=False
export BETA=False
export CATEGORY="MediaApp:Video MediaApp:Music MediaApp:Photos MediaServer:Video MediaServer:Music MediaServer:Photos"
export ODCT_CATEGORY="MediaServer:Video"
export OWNER="sagetvopen"
export CONTAINER="sagetv-server"
export CONTAINER_POSTFIX="java8"
export CONTAINER_VERSION="latest"
export DONATETEXT="Support me on Patreon"
export DONATELINK="https://www.patreon.com/user?u=58035567"
read -r -d '' OVERVIEW_EXTRA <<- EOM
		&#xD;
		Configuration &#xD;&#xA;
		 - /opt/sagetv - This is the base directory for the server and other sagetv related files.  Under this location there can be a 'server' directory and if the existing 'server' directory exists it will be upgraded.
		 - /var/media - Path for sagetv recordings and videos.  Under this directory there should be (or will be created) a 'tv' directory where SageTV recordings will get recorded.
		 - /var/tv - Path for tv recordings if you want to store those in an alternate location.
		 - /var/mediaext - Path for extra media files.  This can be whatever you want, but you will configure SageTV to look for videos, music, pictures, etc from this location.
		&#xD;&#xA;Permissions&#xD;&#xA;
		 - PUID - Should be the 'nobody' user for unRAID
		 - PGID - Should be the 'users' group for unRAID
		 - VIDEO_GUID - Should be the 'video' group for unRAID (used if you use PCI/USB video capture devices)
		&#xD;&#xA;Notes&#xD;&#xA;
		 - SageTV will need to use 'host' or 'br0' (set a unique IP) networking, so while the ports are defined, they are not required to be edited.  Without 'host' or 'br0', sagetv will think your network clients are connecting as remote placeshifters, and present the placeshifter login.  If using br0 mode (preferred) as the IP is unique the WebUI port of 8080 will not have any issues.  If running in host mode, make sure you don't have other docker containers that are using port 8080.  If you do, then EITHER change SageTV Jetty Port (in plugin configuration) after install, or, update the other docker containers to NOT use port 8080.&#xD;
		 - On every Docker start, it will check for a new version of SageTV and install it, if it exists. You can force it to stay on a sepcific version by setting the Version in the template. The Version must match exactly the version tag from the github releases.&#xD;
		 - There are Java 8, 11, and 16 version of these containers.  Java 8 will be the default moving forward, but it currently has issues with the the /apps/ path in the Jetty Web UI.&#xD;
EOM
export OVERVIEW_EXTRA
export OVERVIEW="SageTV is an Open Source PVR and Media Player"
export DESCRIPTION="SageTV is an Open Source PVR and Media Player"
export ODCT_OVERVIEW="An open source digital cable tuner network encoder for SageTV"
export ODCT_DESCRIPTION="An open source digital cable tuner network encoder for SageTV"
export SUPPORT="https://forums.sagetv.com/forums/forumdisplay.php?f=59"
export GITHUB="https://github.com/OpenSageTV/sagetv-dockers/tree/master/unRAID/sagetvopen-sagetv/"
export PROJECT="https://github.com/google/sagetv"
export ODCT_PROJECT="https://github.com/enternoescape/opendct"
export ODCT_SUPPORT="https://forums.sagetv.com/forums/showthread.php?t=62774"
export CHANGES="$(<containerchanges.md)"
export ODCT_CHANGES="$(<containerchanges.md)"
