## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:49e4c4266019824a843317e2114f6c9846ba70e3d600e4d82aedaedcc36ae68d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64
	-	windows version 10.0.17134.228; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.2430; amd64

```console
$ docker pull mongo@sha256:364a77c43a05ae9859027816cd9509de7a42e169294dbd2631559b8c05bc7386
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5576445883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd98f9d391a16eec118c802872468beedd981d0aeb0ca156ac119949f10a09a4`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Fri, 17 Aug 2018 09:21:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 17 Aug 2018 09:59:15 GMT
ENV MONGO_VERSION=4.0.1
# Fri, 17 Aug 2018 09:59:16 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.1-signed.msi
# Fri, 17 Aug 2018 09:59:16 GMT
ENV MONGO_DOWNLOAD_SHA256=234bebe451ca4601a8fd5016ede6b3ad424ac059dfcb3d0e76abf934f4143af4
# Fri, 17 Aug 2018 10:05:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 17 Aug 2018 10:05:18 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 17 Aug 2018 10:05:20 GMT
EXPOSE 27017/tcp
# Fri, 17 Aug 2018 10:05:21 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b95dd3ea2455375b05a0040130b4b3f2bd839787743ff33b9d31af75610902b1`  
		Last Modified: Fri, 17 Aug 2018 11:36:08 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613699da7918b9244c164a6b34edc1d8f81f36ea1c73b37895bc64f46973c524`  
		Last Modified: Fri, 17 Aug 2018 11:39:58 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ec624b184639b321a30b82d7cd28b3201634b4c070e562fcafdac74406fce4`  
		Last Modified: Fri, 17 Aug 2018 11:39:58 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc6674a391110eacd98702d02952bf2f33b977e1fa1a82c0ceb8a99d3cff1b0`  
		Last Modified: Fri, 17 Aug 2018 11:39:57 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488e0bf7a36e71e67ea3e8363ca6b36090e214cd3269d038a265ec233adea5a8`  
		Last Modified: Fri, 17 Aug 2018 11:40:12 GMT  
		Size: 64.5 MB (64546524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab18657cf8992f824cf80fa305255450a0324e6e996cf61330f5002d8e58f66`  
		Last Modified: Fri, 17 Aug 2018 11:39:56 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278b98a128297d67c2e57e93bc5a29d5899d2048fe1f8bd8c55f7f48a1d2f987`  
		Last Modified: Fri, 17 Aug 2018 11:39:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c802ca1fb2d7c8b32010144a5507a27b18af34c9ae3a93394a5af7c478f75c`  
		Last Modified: Fri, 17 Aug 2018 11:39:56 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.611; amd64

```console
$ docker pull mongo@sha256:7a60bbc2ce17280c1a7846b452b697b4195f2f4a073f44de9d14749fc0f1362f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 GB (3644056628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7488bbb46e80effae86d9b8913da1d6989e71513c14f961b8f8b985e8d6cf9d2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Fri, 17 Aug 2018 09:24:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 17 Aug 2018 10:05:28 GMT
ENV MONGO_VERSION=4.0.1
# Fri, 17 Aug 2018 10:05:29 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.1-signed.msi
# Fri, 17 Aug 2018 10:05:30 GMT
ENV MONGO_DOWNLOAD_SHA256=234bebe451ca4601a8fd5016ede6b3ad424ac059dfcb3d0e76abf934f4143af4
# Fri, 17 Aug 2018 10:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 17 Aug 2018 10:25:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 17 Aug 2018 10:25:03 GMT
EXPOSE 27017/tcp
# Fri, 17 Aug 2018 10:25:04 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:979b51c3a12a3db81990ebd92c5d5a3325e035f84c0503e987ede3bfd73f44df`  
		Last Modified: Fri, 17 Aug 2018 11:36:35 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490d3e78be7dd54cf05a1933eb26d28162a0ef119fb9f5e4a9b0fb0dcdacd29e`  
		Last Modified: Fri, 17 Aug 2018 11:40:33 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1710f9bc4b79d025d93e70b34c7d748ce328c581162bf5ec5c13d7dd0381e81`  
		Last Modified: Fri, 17 Aug 2018 11:40:32 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f6feb6722d34e1a402cfe5b9eff7029447c8d6ba0ce5ccd8d17624a152c399`  
		Last Modified: Fri, 17 Aug 2018 11:40:30 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05a7db5c13c8fe61ca8391c3a448d41d15b61efba97fcaa5fef9b1f1acaf8ba`  
		Last Modified: Fri, 17 Aug 2018 11:41:37 GMT  
		Size: 531.9 MB (531912563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa45127ee9397c17546b43ed5367b008bc13ce43977db82db76e1a5929f7e295`  
		Last Modified: Fri, 17 Aug 2018 11:40:30 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889a5739e14acf587823ae98ea1cd810a24f924158b61298fb4ba447fc1de2a0`  
		Last Modified: Fri, 17 Aug 2018 11:40:31 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ab75760418c50d5b65ae0e38c90b048064d6aaa951cf815637fd5b2b88b2f3`  
		Last Modified: Fri, 17 Aug 2018 11:40:30 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.17134.228; amd64

```console
$ docker pull mongo@sha256:789783680d460c50dff2230958d5479de898994c210f52829d806b9a5ff2c37f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2720581468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd7c9d8c05371c584029fb14cfeb322e11d413cc27652991f218bbb17705014`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:21:55 GMT
RUN Install update 10.0.17134.228
# Fri, 17 Aug 2018 10:25:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 17 Aug 2018 10:25:18 GMT
ENV MONGO_VERSION=4.0.1
# Fri, 17 Aug 2018 10:25:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.1-signed.msi
# Fri, 17 Aug 2018 10:25:20 GMT
ENV MONGO_DOWNLOAD_SHA256=234bebe451ca4601a8fd5016ede6b3ad424ac059dfcb3d0e76abf934f4143af4
# Fri, 17 Aug 2018 10:44:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 17 Aug 2018 10:44:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 17 Aug 2018 10:45:00 GMT
EXPOSE 27017/tcp
# Fri, 17 Aug 2018 10:45:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd59519ea2c2d73a5cba6e562d012a127d08d86dfc5067535eef141406c3750b`  
		Last Modified: Mon, 13 Aug 2018 19:10:18 GMT  
		Size: 530.1 MB (530108736 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2cb0bbe979983a9fd8ce4fd3939699c180783e70bf8f7ab0fae0c03c1e8a6a2c`  
		Last Modified: Fri, 17 Aug 2018 11:42:08 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5f84db3da6912b3b3e04212a24d24fa958ba36d8ac8dda86e872da39c2aadd`  
		Last Modified: Fri, 17 Aug 2018 11:42:08 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee61f94a7e0f6bda83b588a7eb95c808c2a17365a02b80e3a665b5c9c31b737`  
		Last Modified: Fri, 17 Aug 2018 11:42:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396b512a9dfc99f2b6ec4a9d5a15c08fa3df8319808646ed89719733c253c60e`  
		Last Modified: Fri, 17 Aug 2018 11:42:06 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09b022e02fd6d99b4cab7a88b94cd92113ae1980f187aeb4436794d569f1cc5`  
		Last Modified: Fri, 17 Aug 2018 11:43:09 GMT  
		Size: 530.8 MB (530776068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f3428525587e2b84e60bd2d66881ac200eaa4c6ec692b4cdcc38359f158a64`  
		Last Modified: Fri, 17 Aug 2018 11:42:06 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2524cf7bab8e93b322a62cc411f5b2d4d613be5be742f9384858643757f506b9`  
		Last Modified: Fri, 17 Aug 2018 11:42:06 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcf465ec26b36a667f1c275d1851c14925c35c977ae7be395d71705d59c1f45`  
		Last Modified: Fri, 17 Aug 2018 11:42:06 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
