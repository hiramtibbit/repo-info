## `mongo:rc-windowsservercore`

```console
$ docker pull mongo@sha256:bcfd481af27f3b0e52b1a2fe47ceecf840124a339b08dc887496d0495337ff6b
```

-	Platforms:
	-	windows; amd64

### `mongo:rc-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4683406259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b3ab7633433757953b82bf5ab978dbbbe8f304396712306d826d6ce33ba639`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 23 Nov 2016 20:58:05 GMT
ENV MONGO_VERSION=3.4.0-rc5
# Wed, 23 Nov 2016 20:58:08 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc5-signed.msi
# Wed, 23 Nov 2016 20:58:12 GMT
ENV MONGO_DOWNLOAD_SHA256=4c3d2b6314230e9df017f1a45d1d5821a533acf897ead6e5182667b42ffabf4b
# Wed, 23 Nov 2016 20:59:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 23 Nov 2016 20:59:16 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 23 Nov 2016 20:59:21 GMT
EXPOSE 27017/tcp
# Wed, 23 Nov 2016 20:59:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Last Modified: Tue, 18 Sep 2018 01:53:03 GMT  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Last Modified: Tue, 18 Sep 2018 20:21:43 GMT  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc663bfa080a7a8baf14e04c454e2bb99235227c79367a382c7bb4b91c5a9257`  
		Last Modified: Wed, 23 Nov 2016 21:00:06 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60ecdb21f86af16aca6c9b2a48398a781fc922065ff1dfb15b67fe94d2df3da`  
		Last Modified: Wed, 23 Nov 2016 21:00:04 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d225cdd4b595bfb25a66ab81d07463c41368059e432f91451c1fb55f56a2a15`  
		Last Modified: Wed, 23 Nov 2016 21:00:04 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8ea5004405da894862e04deb0af5bc8ff622ff5b5fbb6649f6f0b23ea0d4e1`  
		Last Modified: Wed, 23 Nov 2016 21:00:12 GMT  
		Size: 66.7 MB (66721295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c284a231cc37e4d1ddd3dc828e40d7a4738d572967fc2b710116e18b452dea`  
		Last Modified: Wed, 23 Nov 2016 20:59:56 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc8373b97491713041c26468350473d7eca6ebda4f887800528bf8ad39565df`  
		Last Modified: Wed, 23 Nov 2016 20:59:56 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8543b7343a7f498c89018a9c31c06d31c57e46475ce1a6a59841681f1ea60227`  
		Last Modified: Wed, 23 Nov 2016 20:59:55 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
