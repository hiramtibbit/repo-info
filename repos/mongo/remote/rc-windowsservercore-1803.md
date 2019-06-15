## `mongo:rc-windowsservercore-1803`

```console
$ docker pull mongo@sha256:db4f3e0b5a9c3e2dc5e9d077317d48a0fd8ffcc7915158acf743687db36be94e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `mongo:rc-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull mongo@sha256:501b43421b75a957e53c3015b3ac0550ca5dfb68b24f9143f4e91a090d4297c9
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2795177701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969b605442c0ebb44369f1c617dc3bf0cefd297989db8dc4016b73ebb48f4687`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 16:24:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 14 Jun 2019 22:35:44 GMT
ENV MONGO_VERSION=4.2.0-rc1
# Fri, 14 Jun 2019 22:35:45 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.2.0-rc1-signed.msi
# Fri, 14 Jun 2019 22:35:46 GMT
ENV MONGO_DOWNLOAD_SHA256=379bcf1725c19c6ff2f2f159ef4e22c9a4ba32692a994e809457f1053c50066f
# Fri, 14 Jun 2019 22:54:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 14 Jun 2019 22:54:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 14 Jun 2019 22:54:39 GMT
EXPOSE 27017
# Fri, 14 Jun 2019 22:54:41 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:076b435f3942cf91d0426105dffd7d0bde44033a5dc272f9f96d6322a9c22972`  
		Last Modified: Wed, 12 Jun 2019 17:16:06 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb529888e90af7ffe92b08fdfb75af5d27d9f0a355a6bad626c76cf173a3cc4b`  
		Last Modified: Fri, 14 Jun 2019 22:58:56 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83619adeac618c336e63f993c76e44ee7b6dd0cc2aacd75fe4b5cec7db407a64`  
		Last Modified: Fri, 14 Jun 2019 22:58:56 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb18aa21df25a8384a8629925b5a237f1c5af8c0745a4f921860c9056e52a4e2`  
		Last Modified: Fri, 14 Jun 2019 22:58:53 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36ed3d3ddfe442ba97893c9e03ea22248beb1547b5002f03c7ccad8af8c368`  
		Last Modified: Fri, 14 Jun 2019 23:01:10 GMT  
		Size: 487.0 MB (486962758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68932ae56df5637bb43976ac08806ffbdcb45a0f54d8c06f76857d02150612aa`  
		Last Modified: Fri, 14 Jun 2019 22:58:53 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e98fb45bdf873c215d73727038ef885cde538e7cacc59f0e8ab1e2447c14ab`  
		Last Modified: Fri, 14 Jun 2019 22:58:53 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349a2b7d1754b924714bd3537fd9fbaeb9f52a8a3fde704fd518175e46b249ea`  
		Last Modified: Fri, 14 Jun 2019 22:58:53 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
