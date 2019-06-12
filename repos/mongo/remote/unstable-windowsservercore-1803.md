## `mongo:unstable-windowsservercore-1803`

```console
$ docker pull mongo@sha256:191934349af35baccceafcb0119c294b965369a27e0f268d7f52849bc0909fd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `mongo:unstable-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull mongo@sha256:3c9905914eb338fe82ef9ab80cc2f61f80f1eaa6fdcdc0035f8651fe99811958
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2794970256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a516fb883b5ba5c4edacdf0aee72b55114ff4ecd987ccd4c59023671f05932a2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 16:24:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Jun 2019 16:53:28 GMT
ENV MONGO_VERSION=4.1.13
# Wed, 12 Jun 2019 16:53:30 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.13-signed.msi
# Wed, 12 Jun 2019 16:53:31 GMT
ENV MONGO_DOWNLOAD_SHA256=682c5913d551d3508cb3446fe4929ae97552b5a344469855b58c9473f4f58dd6
# Wed, 12 Jun 2019 17:12:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 17:12:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Jun 2019 17:12:49 GMT
EXPOSE 27017
# Wed, 12 Jun 2019 17:12:51 GMT
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
	-	`sha256:4c14d217ad5fe54c2e2644298ff0a0a52e2a9c4d73d686a23f0a5af0004ea826`  
		Last Modified: Wed, 12 Jun 2019 17:20:24 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a408475ff5867bcc00ebb42fc5f8f55fb3b393c894fc349676e4ebc655d9fa99`  
		Last Modified: Wed, 12 Jun 2019 17:20:24 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53d5b4cbcf4743ff4a833b4735e469e9278e70005ada7d1f3b3a278e80483dc`  
		Last Modified: Wed, 12 Jun 2019 17:20:22 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0157ea4ea870b920cec42dc66f35358bef5ea9ca0785d3478f86435635160011`  
		Last Modified: Wed, 12 Jun 2019 17:23:13 GMT  
		Size: 486.8 MB (486755378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b47e7cb342739ccc57c0c357b7a07aa3fc6b06e022eb23e421b80149b5dc6d6`  
		Last Modified: Wed, 12 Jun 2019 17:20:22 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bce0c3b008dcf1e0c32a6d0f449de9bd4e0666929df9e476dd6762e141d36cd`  
		Last Modified: Wed, 12 Jun 2019 17:20:22 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f84c8846fb68d6c8128cc8da00f9861fc62c2252fbd9ea214f9d05320f01681`  
		Last Modified: Wed, 12 Jun 2019 17:20:22 GMT  
		Size: 1.1 KB (1142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
