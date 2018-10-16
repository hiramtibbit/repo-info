## `mongo:windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:965591ef7fffd12c0832e8914cba8f57915308070cf121eb81a9b66862468890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `mongo:windowsservercore-ltsc2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull mongo@sha256:4e0a147d8192dcdc75f6f2ed55eb5b1a30c3b005562cd5d91bed9313701c7649
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5660699619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0f21b5787807ae1c89c1db7bdf7284d3246722f26d1c0dc4bb1027f5aa3dc0`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Tue, 16 Oct 2018 09:16:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 16 Oct 2018 10:16:18 GMT
ENV MONGO_VERSION=4.0.3
# Tue, 16 Oct 2018 10:16:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.3-signed.msi
# Tue, 16 Oct 2018 10:16:20 GMT
ENV MONGO_DOWNLOAD_SHA256=0e53cfd224d27862c286b765b85d769b39e3518b2dc2704ff87bd8a565ea9b7f
# Tue, 16 Oct 2018 10:19:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 16 Oct 2018 10:20:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 16 Oct 2018 10:20:01 GMT
EXPOSE 27017/tcp
# Tue, 16 Oct 2018 10:20:03 GMT
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
	-	`sha256:925e4ed10a667c6bdfd9f2bcd9b0cd880598a6b2c11b4ac45c4dae257ef0a4ed`  
		Last Modified: Tue, 16 Oct 2018 10:57:03 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5a0ce711b440f323da0c12225194746f87662482080535f616bc3cb1067796`  
		Last Modified: Tue, 16 Oct 2018 10:57:03 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31faea778c0733d90a1a3f805b338cc990f6a8c42e1f61e57b7dfd995bc21ce3`  
		Last Modified: Tue, 16 Oct 2018 10:57:00 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ceb490c8bec160a71fbc44752167859af6b26debef8120009859d1ace283347`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 63.6 MB (63580328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d6dcc06000c446351795446c1d5c1a10120d340261facd3d84da057f6b6415`  
		Last Modified: Tue, 16 Oct 2018 10:57:00 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02908f47b1046c2fcf7cdaddac11dc5d0b0aff85cbf4bf101cb1a3a35854fd2`  
		Last Modified: Tue, 16 Oct 2018 10:57:00 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d95fb6d63c81dbb416e0381779450696135bea43acdaa4f0220603eadaa05f`  
		Last Modified: Tue, 16 Oct 2018 10:57:00 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
