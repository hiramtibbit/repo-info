## `mongo:windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:9a43a9ddf1ae1c7361e98798a2a587ee7607be4b272e80f18d5ef237b3651d1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `mongo:windowsservercore-ltsc2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull mongo@sha256:b54499a62b8c391f50f66855146c5d788afcc6a0325558776a6e20509442e668
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5660736670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65faaa3e49d4e1f66868e1f0a08f519b3b75b5a2670955fbfe3f7041045fdb4a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Tue, 16 Oct 2018 09:16:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 10 Nov 2018 10:23:04 GMT
ENV MONGO_VERSION=4.0.4
# Sat, 10 Nov 2018 10:23:05 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.4-signed.msi
# Sat, 10 Nov 2018 10:23:06 GMT
ENV MONGO_DOWNLOAD_SHA256=7d5b1f3a655cf2fe9864554699ffd6d7db616889fd211b4f0951d185e8395659
# Sat, 10 Nov 2018 10:26:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Sat, 10 Nov 2018 10:26:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Sat, 10 Nov 2018 10:26:41 GMT
EXPOSE 27017/tcp
# Sat, 10 Nov 2018 10:26:42 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:50ca338b1fa6c515ebe15efbf13da80d877db4a53da56b2b6e52e3da6426cc63`  
		Last Modified: Tue, 16 Oct 2018 09:55:02 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b40a4c3bc8b362c54a0da5d3cbb8fa3ab2c9e3edfb60a065c82dd30500416fb`  
		Last Modified: Sat, 10 Nov 2018 11:26:01 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a750cacbcfacfa2e0c0ee3734517f881e46aa1c45153dffe19caea5a05932aa`  
		Last Modified: Sat, 10 Nov 2018 11:26:01 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627a2875bc7567b604b72dabc9bd1a0e3885dabd619014066a95e181cb4f02aa`  
		Last Modified: Sat, 10 Nov 2018 11:25:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda8a04247c9b2f8760602ac68dca1ed15eafe377f2b56b44960b641f747cd98`  
		Last Modified: Sat, 10 Nov 2018 11:26:17 GMT  
		Size: 63.6 MB (63617339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2055de9bb90da98784e660ee5ede3dd34d70aaac9711505b43c3655d86974`  
		Last Modified: Sat, 10 Nov 2018 11:25:59 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ced749a3a353475d932391cbc1c9588d5031e7cfb570e2d57538c66cf93fbd1`  
		Last Modified: Sat, 10 Nov 2018 11:25:59 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727db61079bb841b18b6df59c66e558a8879943642b7c540f2a7a8c73be5fa77`  
		Last Modified: Sat, 10 Nov 2018 11:25:59 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
