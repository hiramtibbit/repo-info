## `mongo:4-windowsservercore-1803`

```console
$ docker pull mongo@sha256:7c71d1c6d8e830651bbb9e1de90bb6feb7131be420443b312e8300c9935b758c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `mongo:4-windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull mongo@sha256:e25994a53e176b240a98b03c6172fd762552c8b546f2aca20f8638192773e8f5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2314929209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950ffb8f92212b4af001d67b88a3df1adf7f4474810ea2b497ce748a8287e0be`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Tue, 22 Jan 2019 12:30:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 22 Jan 2019 12:30:59 GMT
ENV MONGO_VERSION=4.0.5
# Tue, 22 Jan 2019 12:31:00 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.5-signed.msi
# Tue, 22 Jan 2019 12:31:01 GMT
ENV MONGO_DOWNLOAD_SHA256=e2ac83cfee3350012a641405ce5ba5c3cffe3f8d1a0cd5e0eb3e332246a9cc20
# Tue, 22 Jan 2019 12:34:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 22 Jan 2019 12:34:12 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 22 Jan 2019 12:34:14 GMT
EXPOSE 27017
# Tue, 22 Jan 2019 12:34:16 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3902d93500fc2da689f060218ed87190e009c31aebb04140cfa60bfa39c15ace`  
		Last Modified: Tue, 22 Jan 2019 13:39:51 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42288fc0732e3cfee3172f1fc9c33c1ef1953b3213745bd1a70e30fa2a80132d`  
		Last Modified: Tue, 22 Jan 2019 13:39:51 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05b57ffc42586d7d7f3ab69a017592d2257e7e09d82f69f89db660c756c04dbc`  
		Last Modified: Tue, 22 Jan 2019 13:39:50 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04cd63ae34935214e5b4b0ca4084d6fc2abbaabd0af899291f6b02505e93ea6`  
		Last Modified: Tue, 22 Jan 2019 13:39:48 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46e0f22763f37cf19dacb61bd3e92679024df64106051b85c0546e49865270`  
		Last Modified: Tue, 22 Jan 2019 13:40:05 GMT  
		Size: 69.2 MB (69233647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe36d622117587477b0732d94b423c409037a84dc9f843a1e8630b96f0f43c9`  
		Last Modified: Tue, 22 Jan 2019 13:39:48 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c941d182e6967bdedda633eff1311c2eb95411d7f26b3d7b039eb95c2b8004`  
		Last Modified: Tue, 22 Jan 2019 13:39:48 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46529001b44e13bb92c0e030b548bf5b54369df315328006bd7fee9134aeea27`  
		Last Modified: Tue, 22 Jan 2019 13:39:48 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
