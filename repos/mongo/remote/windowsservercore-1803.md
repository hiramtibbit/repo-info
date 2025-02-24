## `mongo:windowsservercore-1803`

```console
$ docker pull mongo@sha256:714c7bab62060239b6268fd39ce9c2bfe197632c9570e780564a3d4a410729ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `mongo:windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull mongo@sha256:8347c25e34682b7c5ed055b01d9286b18839f9afe259943e1cdbae56699fac62
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2789696060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcaddc86403fdda60b16d8b72eb29ffbdb7dfa3fe2fe5f883f00cc523785c8c6`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 16:24:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Jun 2019 16:24:24 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 12 Jun 2019 16:24:25 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 12 Jun 2019 16:24:26 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 12 Jun 2019 16:43:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 16:43:12 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Jun 2019 16:43:14 GMT
EXPOSE 27017
# Wed, 12 Jun 2019 16:43:16 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:076b435f3942cf91d0426105dffd7d0bde44033a5dc272f9f96d6322a9c22972`  
		Last Modified: Wed, 12 Jun 2019 17:16:06 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aded9243efbc17ad6411e2c2a514fb397575c6d23f185a0c7fe3e73ddacb7469`  
		Last Modified: Wed, 12 Jun 2019 17:16:06 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e1ea45efa975199c5e55672477357bbce1bc94c0260d89c99a2cfb6160a697`  
		Last Modified: Wed, 12 Jun 2019 17:16:06 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf7eba54bb8324b21b56dff5f58e921ccdf8a52b3043fbd64146e8dab3029cc`  
		Last Modified: Wed, 12 Jun 2019 17:16:04 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea99eda75ffe18187fe2104158ee24fa9d9ac4e5457bd74fb0c2ee0c266c423`  
		Last Modified: Wed, 12 Jun 2019 17:18:51 GMT  
		Size: 481.5 MB (481481188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ba6f36badd760cdeddd54c4c1b89f7d86863acf3ebe3ed19d9476a9616d585`  
		Last Modified: Wed, 12 Jun 2019 17:16:04 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc355a5e1ba53c68f933f476e4aac1fb4507d7964d7580ab9f3d309ee0b41302`  
		Last Modified: Wed, 12 Jun 2019 17:16:04 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631c035dd599c1086f9444482775f5f0ac4822a79cd967a211688a1e8f5f3c57`  
		Last Modified: Wed, 12 Jun 2019 17:16:04 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
