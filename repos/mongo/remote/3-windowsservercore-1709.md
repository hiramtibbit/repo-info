## `mongo:3-windowsservercore-1709`

```console
$ docker pull mongo@sha256:f59752e035ef7295d5205694e7897cbb8c39f57d7b9e9eb6d3d90047cd3345e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `mongo:3-windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull mongo@sha256:2e44a5ae599af36e19291eb982ec44460aa7e0b953b2430d0aaa9dd838edc4a4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3705673534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fa47bc9eb4152d605b2577d586c3d2d0f7c8eec7c1df438501c5ff9ecb60c5`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Tue, 22 Jan 2019 11:52:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 22 Jan 2019 12:01:13 GMT
ENV MONGO_VERSION=3.6.10
# Tue, 22 Jan 2019 12:01:14 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.10-signed.msi
# Tue, 22 Jan 2019 12:01:15 GMT
ENV MONGO_DOWNLOAD_SHA256=959acce14e4a565c1eb090a3430f20a7a04cadbe2d31b3367a7ff44b14e5b24d
# Tue, 22 Jan 2019 12:22:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 22 Jan 2019 12:22:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 22 Jan 2019 12:22:40 GMT
EXPOSE 27017
# Tue, 22 Jan 2019 12:22:41 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b73a0893a2a72f596b0b6e0f0bd7c375cc57a9f8c99eecac91cb183e81a685df`  
		Last Modified: Tue, 22 Jan 2019 13:32:24 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb21796135eb87191bf291b4208f1736b2154bc36cc482ca7bce215aea03829`  
		Last Modified: Tue, 22 Jan 2019 13:33:50 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05f8d464ac27b5ab6e8c16bc527ed5575f73e4b2021b390b3549e9aa06d7419`  
		Last Modified: Tue, 22 Jan 2019 13:33:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8f1ff3bc97aeb2b8688756891655a066ef887c549c1919b5728001bab2534d`  
		Last Modified: Tue, 22 Jan 2019 13:33:47 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c68437e13d31cefdbc5edf5acfd42664c9275b4d14c181db51f4d2090148d4`  
		Last Modified: Tue, 22 Jan 2019 13:36:45 GMT  
		Size: 558.6 MB (558609226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d867899ffa1f04a2143bcbfb58224608b4c41e0e22b2387175f38a6f15871994`  
		Last Modified: Tue, 22 Jan 2019 13:33:47 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5504bf3caee296dd82a823092cbb802de2e0ca92ae780f9c479fb88c3de48c2`  
		Last Modified: Tue, 22 Jan 2019 13:33:47 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3279821454fc208fc10ca698894cb3ca99122a4e1d5a1c57c89f340e1854af13`  
		Last Modified: Tue, 22 Jan 2019 13:33:47 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
