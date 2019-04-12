## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:16bb597345afe6ad0d292e30f8b74501104c90677feb60b4b2f682677aa74ee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:5c8f2b0e4695069ef6b19655c84b514b0cfd78850529637dc74a4639ae5636be
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5728770955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f44926d0744ab5ebe992ba5788f99b16b900500fc7c7774b585d4000740783`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:55:13 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 02:55:14 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 02:55:15 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:12:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:12:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:12:33 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:12:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f34280531180f27fb3076056287eff9fcad7eb2b85f0a26b1d6d3b16d5183b`  
		Last Modified: Fri, 12 Apr 2019 04:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba51fdcf7451c1f0693a739c36c9ae0d1ce90cfefeea603c17608cd18bf98a63`  
		Last Modified: Fri, 12 Apr 2019 04:41:51 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fea4ecec35323821a1bda744104a868770b1aa53d56423ca515e2537a354184`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97978b7c09827f915ba616cc6ccc6f784d9cba223d66ad169dcb4b3ee1e5fac0`  
		Last Modified: Fri, 12 Apr 2019 04:42:11 GMT  
		Size: 86.4 MB (86392803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da844cac1df326b6c69ab2ec0314976d79d4d90b50644218d84c735d9f799b55`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069f19e012ff8f7be7333fe3b9ca7e689c8751dc1ed42878ffa633ba959530`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dbc84ce3e798e27b7a1b13a09fff027e92ffc19b622b2415384d3d34358da4`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:178ffb7efea663d45eb966b4675e1f7e82b4b4627f862520985d232ab933972e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2718997559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dba7de7a0616131da880fadd955a33bca3094c1287e7a115f0442804986a94`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:30:51 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 03:30:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 03:30:53 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:48:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:48:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:48:53 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:48:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d85e0ebc82804758c028060a5037a4d1a15b187cce6d0a4fbae5e0e9b3e0783`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5a6f5a413da5b9420ed3202c16db5c26de4388e413966c80d1febd1124524`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8484ede680e2afd7d3d026345514f41f3d12dffdccfe6d9011498544c7379bf`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f5b544d47940b71539e2a5a1ee98dd0cfa1b684a9e2d7770a20a3bda57862`  
		Last Modified: Fri, 12 Apr 2019 04:47:05 GMT  
		Size: 462.6 MB (462638526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3523ab7c959247bd3214cf87848496b500734ae39db803460382d7a4abec9603`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95527f66ae78beb784ad80c019ffe4412af3b3d586ac9b0751f2cd3f0ec7a6`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2499f5f5dae539b7de7b1cd2c841acceb947b10265198c59ca3f392c8f47fbf7`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
