## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:d72e99b4bdcb4e1565b1c402d1beb5b3e177e01e6b2d5bb19f8527731db4aafb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:e010e4b5ed8fddb78d6094054743cb43634d301f1214014fb3ce166f0e0076d6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791472657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483ca9f3ab7f917f997be3f251bfaa35920eab8602cff63d210c3360d7639ddb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:42:54 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:42:55 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:42:57 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:52:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:52:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:52:59 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:53:01 GMT
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
	-	`sha256:feadb61c9a426a1ac8bbb12f44522858d96323d16816bb86067b1acd8f3a0abb`  
		Last Modified: Wed, 29 May 2019 21:02:33 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd12ff6fb1a78028480f4638b1cb18da353fda626a880e532ce428e390e21d27`  
		Last Modified: Wed, 29 May 2019 21:02:32 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030e2eefa2ca399e251eb468ade85a46120085e90b719f77200691421c5d1f58`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23578f83381062472fa94b02349e0bf8f6393649e6f08c11ad2372fa8026ad55`  
		Last Modified: Wed, 29 May 2019 21:02:55 GMT  
		Size: 91.7 MB (91676148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5eba5de1f5fba6301d6140d902ab43d29724d8da8794c45e933d792f23f2c9`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe7bab3f1e1e66e75b9ea5211de3ba638f7357135e31fc0bb10c3d88f9b8b33`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fb0faa9ef44c7d877f18c65f1f358fca45774e05c7cb0bba91339901dcc5f7`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-windowsservercore` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:f6a5e83f0ae48f31664ce81e1a866569ac6e19a5d571b9e0385664064f5dd283
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2388873057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fab3d6cdfeba8305fb14d896c7095559b081869839130d9431175930eb0206`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:53:10 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:53:12 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:53:13 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:56:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:56:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:56:40 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:56:42 GMT
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
	-	`sha256:bce8c4e4498b524de7fc5036da4d7cb487d4321a76b8c3da77f0837bf23b4f08`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e15e1cf08b86f8ab7fdcce4c590ce70fcbdbab86c65c97ea427dda9df41ab9f`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f532e65b477f0df48421afe9e0b8ac325a3d44a841767af336194b456761c4`  
		Last Modified: Wed, 29 May 2019 21:03:14 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d49405bc6c13b7674b8961559b4ac6fef11df6f8da49f0392d848250284e86`  
		Last Modified: Wed, 29 May 2019 21:03:34 GMT  
		Size: 85.4 MB (85408046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ec4d8d98066e0f2d3aa3fd24414de58f9a9bdc5c66c2693b58912cca63c585`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5c1d76a85a570eb07371f9f77382df32414aa2ecf33ee15a10f2ef1c5776d`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ec6d63a724609a63cb8ce87be0a97e9a43c72205dd40799c86c8d0ef961e07`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
