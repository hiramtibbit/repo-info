## `mongo:unstable-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:3ad058e7d30da670d3c45d229c80e2f3a350f5a894bd9b7440e9685f78052d7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `mongo:unstable-windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull mongo@sha256:01e1db76288b2c68928a6ef485ab41768b2e2b899bfafef604e2e0ff4d175858
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5708104319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ed54872e7e6a58c1213a5394b7511606803900125f998f25a3133d9fd49d6f`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Fri, 16 Nov 2018 10:18:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 16 Nov 2018 10:46:27 GMT
ENV MONGO_VERSION=4.1.5
# Fri, 16 Nov 2018 10:46:28 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.5-signed.msi
# Fri, 16 Nov 2018 10:46:29 GMT
ENV MONGO_DOWNLOAD_SHA256=3ea02318751817b109932fc85ed666991799de4cf9515063068e93a6264364cb
# Fri, 16 Nov 2018 10:57:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 16 Nov 2018 10:57:15 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 16 Nov 2018 10:57:16 GMT
EXPOSE 27017/tcp
# Fri, 16 Nov 2018 10:57:17 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:98274472ded852f1c63cfe7f1681a3e9892974dd7ed3c00b605c71328b2d018f`  
		Last Modified: Fri, 16 Nov 2018 11:40:14 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0490639faebd5f6080f3015ebaf5e27a68cfe2ffc7a001781b6fed1148bdac3a`  
		Last Modified: Fri, 16 Nov 2018 11:44:55 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba5437e9ff0123827216250166caf1224cfa98341460af20e368261bde2330a`  
		Last Modified: Fri, 16 Nov 2018 11:44:55 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f08da897878b1bedfa4ec5f644cd89fa4836ae0154684b5574636d79742923a`  
		Last Modified: Fri, 16 Nov 2018 11:44:52 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64c98a3411409988eb1a2e3b67ef73644ea18426ff2ebe65eb357a6817c3f49`  
		Last Modified: Fri, 16 Nov 2018 11:45:10 GMT  
		Size: 74.2 MB (74174921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4a6c8c07e7c7ef8bae5a06e5e4669099fe8e3dcfee5b2eccb14b86b9cfad2b`  
		Last Modified: Fri, 16 Nov 2018 11:44:52 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8e70e5e72abc2f80931df76c9b200796295782dadf3a23fe5b699c32937ea3`  
		Last Modified: Fri, 16 Nov 2018 11:44:53 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde15dd2161b10ec65e4590e28a326fc137cb0811e1fdeba7f82c8bec3410b47`  
		Last Modified: Fri, 16 Nov 2018 11:44:52 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
