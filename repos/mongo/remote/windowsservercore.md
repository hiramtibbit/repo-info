## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:05de555bad286b243756fef461d047fc34c1814ce175364283cbc60300f1f3ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64
	-	windows version 10.0.17134.523; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull mongo@sha256:9af3bc7d26dfbe4c57776b86ce990d1bae0252c22499d62d6bbc7270c5509f84
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5711391645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b8e9ba79ecd924416d9eac5de05802a13d6d46ada5fc58ab79f9a0e5948910`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Tue, 22 Jan 2019 11:49:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 06 Feb 2019 10:19:24 GMT
ENV MONGO_VERSION=4.0.6
# Wed, 06 Feb 2019 10:19:26 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Wed, 06 Feb 2019 10:19:27 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Wed, 06 Feb 2019 10:29:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 06 Feb 2019 10:29:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 06 Feb 2019 10:29:24 GMT
EXPOSE 27017
# Wed, 06 Feb 2019 10:29:26 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:17b027d2e81dbd6d79eaa15e958f3abf591a89252f9711b74b706f4f7a4520d5`  
		Last Modified: Tue, 22 Jan 2019 13:31:37 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148f9ba17878d8e96a198d51e4290281e8d27b5146353785660e89f6b03aeab5`  
		Last Modified: Wed, 06 Feb 2019 11:04:30 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974689c12ba103248976e1dfa0d19484021eba58fde6542ef9c8229b12a3a1a5`  
		Last Modified: Wed, 06 Feb 2019 11:04:30 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e639e724906909afeda8fc52a7b629f1b4884d36a672f8d74710e7f49cfb771`  
		Last Modified: Wed, 06 Feb 2019 11:04:28 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce74e25f424ae951d042c4a00b59c98d1eaa970d4c9a5a5d38b6e48362487c0f`  
		Last Modified: Wed, 06 Feb 2019 11:04:45 GMT  
		Size: 75.6 MB (75567092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09b3e5877d3b8e13587c338c5e7eb07c87f2a359d2ab6e70d221a174b3e9850`  
		Last Modified: Wed, 06 Feb 2019 11:04:29 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16250e878785a34afce5737890e0dab13dde0d3b491cb6913f0a657d9292845`  
		Last Modified: Wed, 06 Feb 2019 11:04:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0fbe14bec236c32dd37586a24a0b22b1a09480442f5943bed7f67f30e0df98`  
		Last Modified: Wed, 06 Feb 2019 11:04:28 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.904; amd64

```console
$ docker pull mongo@sha256:6d4d504c39b935798df3798546ce47410950d59d399d10fbc4732379dfe12af3
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3718476312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855317c57b387fd4bf76d2c2d71b8071bd0c34b193c34fc5b1549355ddeb313d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Tue, 22 Jan 2019 11:52:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 06 Feb 2019 10:29:39 GMT
ENV MONGO_VERSION=4.0.6
# Wed, 06 Feb 2019 10:29:40 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Wed, 06 Feb 2019 10:29:41 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Wed, 06 Feb 2019 10:50:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 06 Feb 2019 10:50:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 06 Feb 2019 10:50:49 GMT
EXPOSE 27017
# Wed, 06 Feb 2019 10:50:51 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b73a0893a2a72f596b0b6e0f0bd7c375cc57a9f8c99eecac91cb183e81a685df`  
		Last Modified: Tue, 22 Jan 2019 13:32:24 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6473ceea802de39743b51a74fe75b978d5b21b0576ab37c991bcb4ef366203a`  
		Last Modified: Wed, 06 Feb 2019 11:05:05 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2e871f3d0508dd2f51ca110bae9719435265a4de92c5d31a7e79261249fa47`  
		Last Modified: Wed, 06 Feb 2019 11:05:05 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243357279e685c059443c1a419ca870ba603f03fbfa11a5a2432e52a46dc36d`  
		Last Modified: Wed, 06 Feb 2019 11:05:03 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452ce823dd2fa03aaf1706c5ae2bebea1f995e87e4a3175d18140eea76172aa8`  
		Last Modified: Wed, 06 Feb 2019 11:08:59 GMT  
		Size: 571.4 MB (571412013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8e86034382fdb1c891c32d718501547d9189b7032936c6f31b4d9e7cdd70af`  
		Last Modified: Wed, 06 Feb 2019 11:05:03 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25bad38271f66370215c282ecf9ef18713822952d0d9659949bc2d5fa6804fe`  
		Last Modified: Wed, 06 Feb 2019 11:05:03 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba22de9ed3ca61333a040e5728209b17c684b4a7a29e097f5249ab7d3bcf0339`  
		Last Modified: Wed, 06 Feb 2019 11:05:03 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.17134.523; amd64

```console
$ docker pull mongo@sha256:3be17715f14ac6f0834554ab4fc7a7440449690e58d45291dfae420c8d3422f1
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2320526423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d27bf0759d22ac2ac57fb6003275fd070a87b32cb3f9987d4a7d83b55c0468d2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Tue, 22 Jan 2019 12:30:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 06 Feb 2019 10:51:44 GMT
ENV MONGO_VERSION=4.0.6
# Wed, 06 Feb 2019 10:51:46 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Wed, 06 Feb 2019 10:51:47 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Wed, 06 Feb 2019 11:03:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 06 Feb 2019 11:03:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 06 Feb 2019 11:03:19 GMT
EXPOSE 27017
# Wed, 06 Feb 2019 11:03:21 GMT
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
	-	`sha256:c857b0771d904e5e9b5cd9127e23ffca592e130d8f1e4147ac471e45c79f061d`  
		Last Modified: Wed, 06 Feb 2019 11:09:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0308852ac4cf299b95a493045ff7d2f1927caea337edd236f4ee848f81c687`  
		Last Modified: Wed, 06 Feb 2019 11:09:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300f76ac64c42ea22ab53278d5bfd95c971d35d8712227a6f53f671399429d71`  
		Last Modified: Wed, 06 Feb 2019 11:09:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c496ae1211b9fe90dcd3241e29ed075d58c77c1e984379ec8fd8858d277acff3`  
		Last Modified: Wed, 06 Feb 2019 11:10:03 GMT  
		Size: 74.8 MB (74830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857bc5fd17c788cf09e0a0b76c12e4d06420f90f485485df6fde4b287c4ef039`  
		Last Modified: Wed, 06 Feb 2019 11:09:37 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0927f0ae107de1ba056d6264ffca5e2360c920f82b2ebf46c80c44f370dd8f8`  
		Last Modified: Wed, 06 Feb 2019 11:09:37 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ecc6f0f48e424b166a88a06cf10262a1c6438e46a72dcf6f3e1dcb1b1e2f28`  
		Last Modified: Wed, 06 Feb 2019 11:09:36 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
