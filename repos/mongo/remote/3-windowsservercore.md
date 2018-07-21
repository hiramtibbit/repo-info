## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:7a433605bf77d114d6c5a2947398565baf45b545176c407fa00b63b8c8cb3dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64

### `mongo:3-windowsservercore` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:3a9345a8268c7fb01a145e0e2477d8723c24f26383ffa728bba17fc836ae9914
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5836956052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9a77765337380bb8b7086a133a9df23c5ea32c972b31ae3bbb44e1df1e18eec`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 29 Dec 2017 00:56:09 GMT
ENV MONGO_VERSION=3.6.1
# Fri, 29 Dec 2017 00:56:10 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.1-signed.msi
# Fri, 29 Dec 2017 00:56:10 GMT
ENV MONGO_DOWNLOAD_SHA256=ff04f71216c93de9d96735cece828be5c48478d9b92519f647152ba7f17494de
# Fri, 29 Dec 2017 01:26:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 29 Dec 2017 01:26:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 29 Dec 2017 01:26:46 GMT
EXPOSE 27017/tcp
# Fri, 29 Dec 2017 01:26:48 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7089526b167439127c14e9c504c0fff40f08905bd84680ed04054ab9004fe729`  
		Last Modified: Fri, 29 Dec 2017 01:41:07 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46871ac23fa560cdb922d43d1352e8e2e3ac0d6bb62fed8b0447ba441b506c70`  
		Last Modified: Fri, 29 Dec 2017 01:41:07 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f15b49c2c0bb9bc31247ac927a2aa1475d647444e1ab2a88fa01d5ee804a67`  
		Last Modified: Fri, 29 Dec 2017 01:41:05 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe26687608cd705811ce9b5874024082a4ec76314c48f389ac372695ef09af6a`  
		Last Modified: Fri, 29 Dec 2017 01:41:58 GMT  
		Size: 475.1 MB (475132603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6741cc54d376ea2838cc5853c0eb0739d9d1e05c1346aad29bc9cc666ef67f`  
		Last Modified: Fri, 29 Dec 2017 01:41:05 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528989e591fd649b081bd74aec092a9a894314b41b0d1b81f85926694f53460e`  
		Last Modified: Fri, 29 Dec 2017 01:41:05 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20273f474dc39cb1fd684fa537e37f86129f99f94e0e756be474abc54058c757`  
		Last Modified: Fri, 29 Dec 2017 01:41:05 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3-windowsservercore` - windows version 10.0.16299.125; amd64

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
