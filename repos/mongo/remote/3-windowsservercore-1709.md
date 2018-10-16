## `mongo:3-windowsservercore-1709`

```console
$ docker pull mongo@sha256:6f869a1aa31ab59add926f917aa2531837f29cec09078173e5b91dfa44143cb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.726; amd64

### `mongo:3-windowsservercore-1709` - windows version 10.0.16299.726; amd64

```console
$ docker pull mongo@sha256:23df2902a16fc4ce33160b60bbccb8d5e6bf3326da891ac8ea366d7781029b7a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3206639509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e925c58ad1576b279d6bf0a63d3f29dea3aa1edb373a2d9d0220b33b0e74820`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 01 Oct 2018 22:02:14 GMT
RUN Install update 10.0.16299.726
# Tue, 16 Oct 2018 10:03:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 16 Oct 2018 10:13:41 GMT
ENV MONGO_VERSION=3.6.8
# Tue, 16 Oct 2018 10:13:42 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.8-signed.msi
# Tue, 16 Oct 2018 10:13:43 GMT
ENV MONGO_DOWNLOAD_SHA256=6e9d8c82cdb58dc97febd3da3b0205498c49cd33418b7d77811193d497922f68
# Tue, 16 Oct 2018 10:16:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 16 Oct 2018 10:16:11 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 16 Oct 2018 10:16:13 GMT
EXPOSE 27017/tcp
# Tue, 16 Oct 2018 10:16:14 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd7a4737dfbb59b49c30480146e7f0a61842409755bd479b63004c5643d0ed3`  
		Last Modified: Mon, 08 Oct 2018 19:38:11 GMT  
		Size: 866.5 MB (866458210 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb0cfc3f1dafb85be3cada2e98abf803f8e5eadcc61125fa7266a93c29d873e7`  
		Last Modified: Tue, 16 Oct 2018 10:54:36 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d94e567f596fcd4ac56741597760cd6672c85120dc2c26a76daab3123660701`  
		Last Modified: Tue, 16 Oct 2018 10:56:30 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b042f23312f37fa3c4b1ee503cf38f3a2fe6e36ac69f260e8c73cd6e939507f1`  
		Last Modified: Tue, 16 Oct 2018 10:56:30 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59198e50a9fb25ca3621f608a34b2880a177962603ae99adb0daf499879d6c93`  
		Last Modified: Tue, 16 Oct 2018 10:56:28 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50dd6e18d7fa4e3a1e8f166b9b1ffe032e8371e25d51bb9b69f0a8b6dc1a5819`  
		Last Modified: Tue, 16 Oct 2018 10:56:44 GMT  
		Size: 65.9 MB (65872359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7e62b4fb371b4bc162222cfd0f73287c3c4f52b3d12c9be548c0b4d0011533`  
		Last Modified: Tue, 16 Oct 2018 10:56:28 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad224782ea01323b241c10979f492ac1b31b90cc6e1d8211afead80fdb564307`  
		Last Modified: Tue, 16 Oct 2018 10:56:28 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd29484fe2c599f5c13a742bfc62929a13c204fa9df058c359b155e5bfb27715`  
		Last Modified: Tue, 16 Oct 2018 10:56:28 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
