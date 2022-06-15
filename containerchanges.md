### 2.0.5
- ServerJ11 - moved JDK from 11.0.2 to 11.0.15 to resolve TLS 1.3 error
- Note: other dockers were not changed
### 2.0.4
- ODCT - now uses ubuntu 20.04
- ODCT - removed changing properties to force media server as that is the default anyway
### 2.0.3
- ODCT - exposed ports 9091 and 8271
### 2.0.2
- ServerODCTJ11 - fix to path for JVM
- ServerODCTJ16 - fix to path for JVM
- template changes for changelog, versioning and support link
### 2.0.1
- initial release: setup Docker Hub and Github repositories
- Server: change base os to ubuntu 20.04
- Server: fix gentuner and commandir old bintray links
- ServerJ8: fix to cacert issue blocking placeshifter connection
- ServerODCT: add 8,11,16 containers embedding OpenDCT
- Server: fix to get latest SageTV release from Github
- ServerODCT: fix to get latest SageTV/OpenDCT releases from Github
- ODCT: update to get latest ODCT release from Github
- Templates: update to support all new containers
- BuildScripts: updated to include all containers