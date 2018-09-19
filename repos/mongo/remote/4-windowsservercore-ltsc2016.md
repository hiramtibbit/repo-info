## `mongo:4-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:1210a40da005bd65738cf303090bef3c5d2860e705e51ce67613c76336612c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `mongo:4-windowsservercore-ltsc2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull mongo@sha256:364a77c43a05ae9859027816cd9509de7a42e169294dbd2631559b8c05bc7386
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5576445883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd98f9d391a16eec118c802872468beedd981d0aeb0ca156ac119949f10a09a4`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Fri, 17 Aug 2018 09:21:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 17 Aug 2018 09:59:15 GMT
ENV MONGO_VERSION=4.0.1
# Fri, 17 Aug 2018 09:59:16 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.1-signed.msi
# Fri, 17 Aug 2018 09:59:16 GMT
ENV MONGO_DOWNLOAD_SHA256=234bebe451ca4601a8fd5016ede6b3ad424ac059dfcb3d0e76abf934f4143af4
# Fri, 17 Aug 2018 10:05:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 17 Aug 2018 10:05:18 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 17 Aug 2018 10:05:20 GMT
EXPOSE 27017/tcp
# Fri, 17 Aug 2018 10:05:21 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b95dd3ea2455375b05a0040130b4b3f2bd839787743ff33b9d31af75610902b1`  
		Last Modified: Fri, 17 Aug 2018 11:36:08 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613699da7918b9244c164a6b34edc1d8f81f36ea1c73b37895bc64f46973c524`  
		Last Modified: Fri, 17 Aug 2018 11:39:58 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ec624b184639b321a30b82d7cd28b3201634b4c070e562fcafdac74406fce4`  
		Last Modified: Fri, 17 Aug 2018 11:39:58 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc6674a391110eacd98702d02952bf2f33b977e1fa1a82c0ceb8a99d3cff1b0`  
		Last Modified: Fri, 17 Aug 2018 11:39:57 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488e0bf7a36e71e67ea3e8363ca6b36090e214cd3269d038a265ec233adea5a8`  
		Last Modified: Fri, 17 Aug 2018 11:40:12 GMT  
		Size: 64.5 MB (64546524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab18657cf8992f824cf80fa305255450a0324e6e996cf61330f5002d8e58f66`  
		Last Modified: Fri, 17 Aug 2018 11:39:56 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278b98a128297d67c2e57e93bc5a29d5899d2048fe1f8bd8c55f7f48a1d2f987`  
		Last Modified: Fri, 17 Aug 2018 11:39:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c802ca1fb2d7c8b32010144a5507a27b18af34c9ae3a93394a5af7c478f75c`  
		Last Modified: Fri, 17 Aug 2018 11:39:56 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
