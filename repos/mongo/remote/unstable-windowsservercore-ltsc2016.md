## `mongo:unstable-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:659e4049a387aef3d214466a53a13915e18a453929c0ffe0d726bd66ec84907d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `mongo:unstable-windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull mongo@sha256:03dba056593d3562085ff750b21bfbddf613637b3b910c6927226d759515b3ed
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5708186811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206cd6f8e8efc802fd61968f1e02e2c2c9431818c21036e833ef76d2c448ce5b`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Fri, 16 Nov 2018 10:18:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 08 Dec 2018 10:23:56 GMT
ENV MONGO_VERSION=4.1.6
# Sat, 08 Dec 2018 10:23:57 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.6-signed.msi
# Sat, 08 Dec 2018 10:23:58 GMT
ENV MONGO_DOWNLOAD_SHA256=c777df7816bb8c9a760fdea782113949408b6f39d72be29a2551fa51e2fe0473
# Sat, 08 Dec 2018 10:33:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Sat, 08 Dec 2018 10:33:11 GMT
VOLUME [C:\data\db C:\data\configdb]
# Sat, 08 Dec 2018 10:33:13 GMT
EXPOSE 27017/tcp
# Sat, 08 Dec 2018 10:33:14 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:98274472ded852f1c63cfe7f1681a3e9892974dd7ed3c00b605c71328b2d018f`  
		Last Modified: Fri, 16 Nov 2018 11:40:14 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c0335b1aa4071b42154c61bf9a01a8c8d14d6288cc8fad4953f2771aaa8f91`  
		Last Modified: Sat, 08 Dec 2018 11:16:36 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cd3db27fdacebf5313e88a1c6812caadbe6e35a936400d4f9c395ee19a170`  
		Last Modified: Sat, 08 Dec 2018 11:16:36 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f2d249b0cd9b8bf73f0758aaeada15071becfbc8f7f0f75239dad338faf155`  
		Last Modified: Sat, 08 Dec 2018 11:16:34 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1db4fa87311c4e394e9e198b6d4540b3bdbc9e7f02ff79163ff352cb6289ac`  
		Last Modified: Sat, 08 Dec 2018 11:16:51 GMT  
		Size: 74.3 MB (74257444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8852f36d442bb482fa8aaca224d6b5b99becf2609d4ea33c86f01f5373b3b01b`  
		Last Modified: Sat, 08 Dec 2018 11:16:34 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377c4afbee448492e17502e20e9cc194cbe242cc67da7ac2bb91151728e5d26d`  
		Last Modified: Sat, 08 Dec 2018 11:16:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ddaac3bbcd34d5d7d167fa584215451af5e6edcee4b3b06140603d21c86035`  
		Last Modified: Sat, 08 Dec 2018 11:16:34 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
