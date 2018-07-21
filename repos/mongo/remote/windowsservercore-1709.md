## `mongo:windowsservercore-1709`

```console
$ docker pull mongo@sha256:511c3e95ac728c2b41b5886b99110c19fc20fa6a5d965033b0e2ea748fde8a8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.125; amd64

### `mongo:windowsservercore-1709` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:d89e786e6fd181804336ab6c0b6e1f87e6c96858d9a46c8493a18b921498b94e
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3338494894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a52b013210e6623ff35456dc66d228c8a3a17c23fbabb5b507192f82ff784c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 29 Dec 2017 01:26:57 GMT
ENV MONGO_VERSION=3.6.1
# Fri, 29 Dec 2017 01:26:58 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.1-signed.msi
# Fri, 29 Dec 2017 01:26:59 GMT
ENV MONGO_DOWNLOAD_SHA256=ff04f71216c93de9d96735cece828be5c48478d9b92519f647152ba7f17494de
# Fri, 29 Dec 2017 01:40:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 29 Dec 2017 01:40:33 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 29 Dec 2017 01:40:36 GMT
EXPOSE 27017/tcp
# Fri, 29 Dec 2017 01:40:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e3bb4b9749c84007c7810c65240f8106ba9608f199a7e485e3ba2d21a7a864`  
		Last Modified: Fri, 29 Dec 2017 01:42:24 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0697d468897e9e6d6bfbe41501d2de9b645a46eab2a4dec083748d5730f6eb3`  
		Last Modified: Fri, 29 Dec 2017 01:42:24 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2490784db3cb2b59d48ca3176511804c2a85b36d7c9bc793a94eb23c9027dec`  
		Last Modified: Fri, 29 Dec 2017 01:42:22 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b365c0cf397768a4bf7aac72bb76a6dfc29449089a4fe4b0fca2cef80a70689a`  
		Last Modified: Fri, 29 Dec 2017 01:43:12 GMT  
		Size: 474.7 MB (474661422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79f395b54d7591d7b11fc73904a05bc00129fcaa0ab30d6d9fc5efe95fbf38b`  
		Last Modified: Fri, 29 Dec 2017 01:42:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013616d6f38ceab757949e1069006e4895ee0bf317e30970529ab93eb2e1cfe6`  
		Last Modified: Fri, 29 Dec 2017 01:42:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d39a64fef9b2dca3963911767ef3b25812e5b42ff9f66a1cb15b1b540d43ea`  
		Last Modified: Fri, 29 Dec 2017 01:42:22 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
