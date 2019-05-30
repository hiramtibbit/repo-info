## `mongo:unstable-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:58b8c58aefc9ffb48d77b789bb9bdf3b0b8d286b465d21292377d38e333a429c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:unstable-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:02cba876edddc11695e9c9bf131d547629320e84b100c8164c982874d52c1f9f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791479475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8091dfd3b6dff5fd2e21bd34b3fe23aa640dd4174e65f18fb5848b2840e176`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 30 May 2019 21:16:26 GMT
ENV MONGO_VERSION=4.1.13
# Thu, 30 May 2019 21:16:27 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.13-signed.msi
# Thu, 30 May 2019 21:16:28 GMT
ENV MONGO_DOWNLOAD_SHA256=682c5913d551d3508cb3446fe4929ae97552b5a344469855b58c9473f4f58dd6
# Thu, 30 May 2019 21:26:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 30 May 2019 21:26:07 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 30 May 2019 21:26:09 GMT
EXPOSE 27017
# Thu, 30 May 2019 21:26:11 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc9d1b787e38d6842dd8af7cf517ab72324e2d2fde3e9616fc0aff465e3e5e8`  
		Last Modified: Thu, 30 May 2019 21:46:43 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57494d603ff278f52f4ef5eadc3f09bca5fb5c12a416bc184ede42577230363a`  
		Last Modified: Thu, 30 May 2019 21:46:43 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9aec02faedeb65cddaee3a12d7dc3dcdc8168a33a8610fff564d38a8ce9dd7`  
		Last Modified: Thu, 30 May 2019 21:46:40 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a998d102c966f66a62890b6200b62bc3e44aa1fdea9d9557b311a36779ff81`  
		Last Modified: Thu, 30 May 2019 21:47:02 GMT  
		Size: 91.7 MB (91683078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a9e45193288661ea8e8fed759503fd421c9c79597fd7fa11bac462de28f613`  
		Last Modified: Thu, 30 May 2019 21:46:40 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8eb88a29be3fa0799c0f73739c8a37fa644abe94f8da19c12954e28fe326d5`  
		Last Modified: Thu, 30 May 2019 21:46:40 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2e0ea1da59a8829050fe2965179d15365f913a07db5257d9aea04aff51e64`  
		Last Modified: Thu, 30 May 2019 21:46:40 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
