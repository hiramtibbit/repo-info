## `mongo:windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:3133a20bcd817bc1c64e3ddd2afe045c9c00545ceaed96a661d87caa766e92a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:d34f0a7a7d98e5d8607e2d692da63104e2d885a1d0b02a5f11a494030ca4b7e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5788499816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367c7724a14a63cd150dd569e092561108496b2691119472d57d67c004614eac`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:57:52 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 14:57:53 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 14:57:54 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:08:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:08:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:08:23 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:08:24 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b69d2f55150edb540465d6bbd86d60c9e71c0ff946d638bdc1eb514235ed29c`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b915b8d27dac2a237a2f29f8e117db4ce02546f4cdd65b27e42cd58284e0cb`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394e2c61d92e53ed3186fb1519066d975864618bc7ebf1bab69ad1c53ab22b8`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06801021b126d52cb42fcdd9627a1df197c6f6df85d5815aa2af66f2c08aeaa5`  
		Last Modified: Wed, 15 May 2019 15:56:44 GMT  
		Size: 86.4 MB (86370500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8390f3fcbb2de1e1670ddc182477f8ac42bc84f4c6be9a0d57c96dfd5b8e72`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf5ba7a1320ba64926f94fcf976ca1d65bfa4caaa3c3f34fbc1021284a57d7e`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6222e753f22635881597fdfff92fb44515e02f2d9834a9f1eab6760a6955aed`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
