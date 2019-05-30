## `mongo:unstable-windowsservercore-1803`

```console
$ docker pull mongo@sha256:2714f3719bde71268194339f8ab3b882099b502a260035484dd2914c79ddfaaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `mongo:unstable-windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:a98e42d803d52f323d59810eb451dcdde8e6850f10c84adf857a15f3b59a64d1
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2790207757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40553ef8ae2ba6c0e22f51f03f29d6541bc61ec05eeeea950537ffc8749ecef`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 30 May 2019 21:26:27 GMT
ENV MONGO_VERSION=4.1.13
# Thu, 30 May 2019 21:26:28 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.13-signed.msi
# Thu, 30 May 2019 21:26:29 GMT
ENV MONGO_DOWNLOAD_SHA256=682c5913d551d3508cb3446fe4929ae97552b5a344469855b58c9473f4f58dd6
# Thu, 30 May 2019 21:45:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 30 May 2019 21:45:50 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 30 May 2019 21:45:52 GMT
EXPOSE 27017
# Thu, 30 May 2019 21:45:54 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb4a842e52c56e557cc204c20bf5e8f9c8a9df54d155f5abddede17830b61e3`  
		Last Modified: Thu, 30 May 2019 21:47:23 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3244ef3f42289c61cef0356008e016205a07f64471be2ce28fff688f379208f`  
		Last Modified: Thu, 30 May 2019 21:47:23 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b1e787fe67acc74c09acd38bc722d24c7861f4f51cf7aae2539541bdc2bf4a`  
		Last Modified: Thu, 30 May 2019 21:47:21 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28ab4fa215d1efa84c232adedbf2af3ce8036c57e1f64344751050c94a6f37c`  
		Last Modified: Thu, 30 May 2019 21:49:55 GMT  
		Size: 486.7 MB (486742723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2179eb993bc33933725c4012bb9141c8def5af96f6f27011a31165a913cbaf62`  
		Last Modified: Thu, 30 May 2019 21:47:20 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc38fd21a8e7878ec8cb69117236d27a71f46574adb654f64569a820ca6f488`  
		Last Modified: Thu, 30 May 2019 21:47:20 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fa98a2e4d827c05b76dd2b5a1a0f2048a1677a4b1fb5c7dcd8ff8776957464`  
		Last Modified: Thu, 30 May 2019 21:47:21 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
