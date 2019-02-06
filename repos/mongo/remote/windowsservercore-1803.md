## `mongo:windowsservercore-1803`

```console
$ docker pull mongo@sha256:962fb1643c3dbef1724e452089e71560bafa118e21caee17810269ee72496d40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `mongo:windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull mongo@sha256:3be17715f14ac6f0834554ab4fc7a7440449690e58d45291dfae420c8d3422f1
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2320526423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d27bf0759d22ac2ac57fb6003275fd070a87b32cb3f9987d4a7d83b55c0468d2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Tue, 22 Jan 2019 12:30:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 06 Feb 2019 10:51:44 GMT
ENV MONGO_VERSION=4.0.6
# Wed, 06 Feb 2019 10:51:46 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Wed, 06 Feb 2019 10:51:47 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Wed, 06 Feb 2019 11:03:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 06 Feb 2019 11:03:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 06 Feb 2019 11:03:19 GMT
EXPOSE 27017
# Wed, 06 Feb 2019 11:03:21 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3902d93500fc2da689f060218ed87190e009c31aebb04140cfa60bfa39c15ace`  
		Last Modified: Tue, 22 Jan 2019 13:39:51 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857b0771d904e5e9b5cd9127e23ffca592e130d8f1e4147ac471e45c79f061d`  
		Last Modified: Wed, 06 Feb 2019 11:09:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0308852ac4cf299b95a493045ff7d2f1927caea337edd236f4ee848f81c687`  
		Last Modified: Wed, 06 Feb 2019 11:09:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300f76ac64c42ea22ab53278d5bfd95c971d35d8712227a6f53f671399429d71`  
		Last Modified: Wed, 06 Feb 2019 11:09:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c496ae1211b9fe90dcd3241e29ed075d58c77c1e984379ec8fd8858d277acff3`  
		Last Modified: Wed, 06 Feb 2019 11:10:03 GMT  
		Size: 74.8 MB (74830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857bc5fd17c788cf09e0a0b76c12e4d06420f90f485485df6fde4b287c4ef039`  
		Last Modified: Wed, 06 Feb 2019 11:09:37 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0927f0ae107de1ba056d6264ffca5e2360c920f82b2ebf46c80c44f370dd8f8`  
		Last Modified: Wed, 06 Feb 2019 11:09:37 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ecc6f0f48e424b166a88a06cf10262a1c6438e46a72dcf6f3e1dcb1b1e2f28`  
		Last Modified: Wed, 06 Feb 2019 11:09:36 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
