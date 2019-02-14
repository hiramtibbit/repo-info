## `mongo:4-windowsservercore-1709`

```console
$ docker pull mongo@sha256:8d81b7e7e0d940dbdb29ee12a668386db0e5c5bd82057dbeb420377ca9eb23a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.967; amd64

### `mongo:4-windowsservercore-1709` - windows version 10.0.16299.967; amd64

```console
$ docker pull mongo@sha256:2236eef767b7de9e84f092eeff98746bbecb6592f5a7a66ba543cae7e0e84476
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3702805902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44f4a6ffe19493d8e7ca5ba76aa036fb08ae8fc60bedcda47901f323dc29bab7`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Fri, 08 Feb 2019 07:16:29 GMT
RUN Install update 10.0.16299.967
# Thu, 14 Feb 2019 10:18:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 14 Feb 2019 11:11:03 GMT
ENV MONGO_VERSION=4.0.6
# Thu, 14 Feb 2019 11:11:04 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Thu, 14 Feb 2019 11:11:05 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Thu, 14 Feb 2019 11:32:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 14 Feb 2019 11:32:36 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 14 Feb 2019 11:32:38 GMT
EXPOSE 27017
# Thu, 14 Feb 2019 11:32:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:effca3ebc3a86f19a139eb7047c6e97d2fe4c941737e8d9698820d0491ccf530`  
		Last Modified: Mon, 11 Feb 2019 21:05:02 GMT  
		Size: 873.9 MB (873894336 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4273f2f648bb455b5339bc8719afa5ca050432c7fd18636bbea664f8f035578`  
		Last Modified: Thu, 14 Feb 2019 12:49:56 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1664bd62284a390debad812264facf2ba80a3ba9014498b0993a7242b8563009`  
		Last Modified: Thu, 14 Feb 2019 13:05:11 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f80c4f306af1fba8f6d391b901f7b3fa51c295be20228d9eb0882e0acb7c537`  
		Last Modified: Thu, 14 Feb 2019 13:05:11 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c79b105f0476e3036eb1f65ac39ba6285f5da013ad376a7d961f31ffdb0fb1a`  
		Last Modified: Thu, 14 Feb 2019 13:05:09 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b5f80a18557b78f17b82659caffad5efc6f4fa022f1f24b63d74b7ca9011c4`  
		Last Modified: Thu, 14 Feb 2019 13:15:32 GMT  
		Size: 554.6 MB (554602554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cd4e259bde87ba577511f5c0ea468fb83a07dff22a27a95a81697809f3c1e7`  
		Last Modified: Thu, 14 Feb 2019 13:05:09 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81fd3846fbf66a22b5d6457783c1240752510e6d87d0d9b958ae80d3f13a61b`  
		Last Modified: Thu, 14 Feb 2019 13:05:09 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6c2956e9e2e78c9522b91c4b1c33d1054659ed421b4bfc65192d0acbd4c7ae`  
		Last Modified: Thu, 14 Feb 2019 13:05:09 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
