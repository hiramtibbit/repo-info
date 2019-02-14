## `mongo:4-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:2f5c45695ca4e2a10ce97b19a9d85df27a2f528edf02820f3e5ad3042505548e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64

### `mongo:4-windowsservercore-ltsc2016` - windows version 10.0.14393.2791; amd64

```console
$ docker pull mongo@sha256:95edfee75048f1888119c3c8bed9e299bf06c4b122a40b2e043afc161e612d37
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5715622461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0b9c94404b9e4ec90b5f2f01a4887853315e6b958d56a53e79fd8fbb46f3ef`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Thu, 14 Feb 2019 10:15:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 14 Feb 2019 11:01:48 GMT
ENV MONGO_VERSION=4.0.6
# Thu, 14 Feb 2019 11:01:49 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Thu, 14 Feb 2019 11:01:50 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Thu, 14 Feb 2019 11:10:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 14 Feb 2019 11:10:46 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 14 Feb 2019 11:10:48 GMT
EXPOSE 27017
# Thu, 14 Feb 2019 11:10:49 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b479a92ce115faf181c1196d762b00f05ec9aa83dc2fec2b7ca094c8d6e1bfff`  
		Last Modified: Mon, 11 Feb 2019 20:08:57 GMT  
		Size: 1.6 GB (1570061102 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:33e3f629f8e74d92de73bbc723579547f0dd6f434077ae65e3418c97061f6c4f`  
		Last Modified: Thu, 14 Feb 2019 12:49:25 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59cd007548e5303d1332538d32da93b26b6bf9fdef8df18bf0e7252ad1fe679e`  
		Last Modified: Thu, 14 Feb 2019 13:04:11 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76d601e6ec679ca6ebb782b41fffb45aa25f5c607f05888a123c8d5a240e94f`  
		Last Modified: Thu, 14 Feb 2019 13:04:11 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c89796c63788e44199173473250051b86f3c57ff86b532c0d00f0a05fc8799`  
		Last Modified: Thu, 14 Feb 2019 13:04:09 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f435d05f5e51622806aac1e90104bc19b729284e530b37ffe28ab5fb8227cf3`  
		Last Modified: Thu, 14 Feb 2019 13:04:51 GMT  
		Size: 75.6 MB (75566986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f791c906ef3108bf79e0ff212e25e90f5db75ea4402d95d34e83571fde584a9`  
		Last Modified: Thu, 14 Feb 2019 13:04:09 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac366441a40dd51444eabbbbea6203a7e3fc00d6b9c1298f1527b525f12e09f1`  
		Last Modified: Thu, 14 Feb 2019 13:04:08 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d56d6f3192ee8400489410d7619ab87ee038158afabec27c141bed5e9b3576e`  
		Last Modified: Thu, 14 Feb 2019 13:04:08 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
