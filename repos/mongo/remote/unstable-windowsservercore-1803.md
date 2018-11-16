## `mongo:unstable-windowsservercore-1803`

```console
$ docker pull mongo@sha256:f94cc8ae2f7f08de206c94bd302e2f9c9044c32aade2e89affa40be97d9713cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.407; amd64

### `mongo:unstable-windowsservercore-1803` - windows version 10.0.17134.407; amd64

```console
$ docker pull mongo@sha256:66f106d1fb8ec5cf55a2553560a4ff7fbc71fca7ed93844f39f13b7de964a20c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2789924988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c5a91e6b82e6bbf2b133428626e743028aac039384393468bf0183da36d243`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Fri, 16 Nov 2018 10:42:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 16 Nov 2018 11:18:30 GMT
ENV MONGO_VERSION=4.1.5
# Fri, 16 Nov 2018 11:18:31 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.5-signed.msi
# Fri, 16 Nov 2018 11:18:32 GMT
ENV MONGO_DOWNLOAD_SHA256=3ea02318751817b109932fc85ed666991799de4cf9515063068e93a6264364cb
# Fri, 16 Nov 2018 11:39:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 16 Nov 2018 11:39:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 16 Nov 2018 11:39:26 GMT
EXPOSE 27017/tcp
# Fri, 16 Nov 2018 11:39:27 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:201e58c127c9e97481e0ddedc4db617af2c30dd9454b61920f571533baef1020`  
		Last Modified: Fri, 16 Nov 2018 11:44:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ae6125423e2832f118a81c3503ffb9dfacad5129b1d5c411d9f29793d8422b`  
		Last Modified: Fri, 16 Nov 2018 11:47:12 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d44a6b739a2ac944765d730a98320a13cfb7d41bec27368c1b191da2daebb8`  
		Last Modified: Fri, 16 Nov 2018 11:47:12 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd75f162329b255fd51581185c46581bc63af4eb95d28cde973b82fbffdafb9`  
		Last Modified: Fri, 16 Nov 2018 11:47:10 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239ed4edb2f44e7b9bb6e44427831f4c3bb129d43656edfb5ee9caf0c490e9e6`  
		Last Modified: Fri, 16 Nov 2018 11:48:15 GMT  
		Size: 549.8 MB (549837695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c0536788c24f0112f4518cad82bbbd9e6850592fec0e472fec770102f6b744`  
		Last Modified: Fri, 16 Nov 2018 11:47:10 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c8a96c8c7b8c1d480bfc920abb7fe72f8745d7fe46758802f6656abcf0243a`  
		Last Modified: Fri, 16 Nov 2018 11:47:10 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146cecd4736c3c0f7646ee8b741b81a21232c4b290ca90fbcf2a019ed61a5655`  
		Last Modified: Fri, 16 Nov 2018 11:47:10 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
