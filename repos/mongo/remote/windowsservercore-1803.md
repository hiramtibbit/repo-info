## `mongo:windowsservercore-1803`

```console
$ docker pull mongo@sha256:26647f96dced1ce5c1b375ef175ab8a4ca9f628e524e1c65a515e31dd46ac8ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `mongo:windowsservercore-1803` - windows version 10.0.17134.469; amd64

```console
$ docker pull mongo@sha256:965818a8296dad20a5cb9bc9800a2bb4433054c6fc889c4b8e25f930d17522bf
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2302159491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e65c2e858993dad185c08a73a429ed347ba3c1434a1ddced705a5e843a37f2d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Tue, 25 Dec 2018 19:28:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 25 Dec 2018 19:28:56 GMT
ENV MONGO_VERSION=4.0.4
# Tue, 25 Dec 2018 19:28:57 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.4-signed.msi
# Tue, 25 Dec 2018 19:28:58 GMT
ENV MONGO_DOWNLOAD_SHA256=7d5b1f3a655cf2fe9864554699ffd6d7db616889fd211b4f0951d185e8395659
# Tue, 25 Dec 2018 19:32:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 19:32:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 25 Dec 2018 19:32:29 GMT
EXPOSE 27017
# Tue, 25 Dec 2018 19:32:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a716b198c71b782955b21f1eed303f89f487eaef823ebccdeb452b764512b3b`  
		Last Modified: Tue, 11 Dec 2018 22:06:40 GMT  
		Size: 583.9 MB (583898765 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:edcb8af516ba153b07675737209648bd886ef5c8b56e7c912ead73de6e7b2b28`  
		Last Modified: Tue, 25 Dec 2018 20:36:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feee150edc89cfb375cc3fec23e337da777767f1d62b1311cc37c31392fa0f13`  
		Last Modified: Tue, 25 Dec 2018 20:36:50 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7fc72cc1b74fac4bd302e5a5253a0f22f0487d58c3c38bcebbe099a2d1f143`  
		Last Modified: Tue, 25 Dec 2018 20:36:50 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd6942c768d225b9c5c10063c5e5474b6b82c96f96212285a655d68007eda77`  
		Last Modified: Tue, 25 Dec 2018 20:36:48 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c990a7f148b0e07c6ace56ae002f6f1af601fdb816710e1fdcc580dd8e18607`  
		Last Modified: Tue, 25 Dec 2018 20:37:02 GMT  
		Size: 58.6 MB (58564026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d88a2c745a0ddef6498bbd98e8751899a0cdec1f9a023f1b1e99a92eaab0e35`  
		Last Modified: Tue, 25 Dec 2018 20:36:48 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c342f29db101a878ec1a1c541751872a9dd3cbe62d3d30e1a86a9665e1e7536`  
		Last Modified: Tue, 25 Dec 2018 20:36:48 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1602f1e5c93d073e4a39bb0bb4eab00278a9af8287f5c78cf15a99753bef44ff`  
		Last Modified: Tue, 25 Dec 2018 20:36:48 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
