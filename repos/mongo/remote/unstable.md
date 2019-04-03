## `mongo:unstable`

```console
$ docker pull mongo@sha256:337523f4e0137b90f8407c7b001b236243b7dcb5f36a8deb3d2c04b0af039002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2848; amd64
	-	windows version 10.0.16299.1029; amd64
	-	windows version 10.0.17134.648; amd64

### `mongo:unstable` - windows version 10.0.14393.2848; amd64

```console
$ docker pull mongo@sha256:b319ddc9092f2bbd2c77aaa3a9755027f89ea6f92f53fcf7c9184e7e1f2bcbc9
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5730452884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9668bae004ea7740c6f6362719a9c7dad74067861c87ef23ff8c619c906e9dd7`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Mar 2019 20:57:18 GMT
RUN Install update 10.0.14393.2848
# Fri, 15 Mar 2019 09:43:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 20 Mar 2019 11:19:50 GMT
ENV MONGO_VERSION=4.1.9
# Wed, 20 Mar 2019 11:19:53 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.9-signed.msi
# Wed, 20 Mar 2019 11:19:55 GMT
ENV MONGO_DOWNLOAD_SHA256=af71f53e1a1a92756b9c6c36c15cd6ec6be3cd292ef3636c8cd75d0216d0079f
# Wed, 20 Mar 2019 11:30:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 11:30:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 20 Mar 2019 11:30:27 GMT
EXPOSE 27017
# Wed, 20 Mar 2019 11:30:28 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e0718b11f51220dd85c47a1d225be81c5ba343fbb45f9b43fe3d762c0a20300a`  
		Last Modified: Mon, 11 Mar 2019 20:57:18 GMT  
		Size: 1.6 GB (1569132556 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bd9434e109d6b126a4267e7a896a255b46d8aea977aa40868a6927bbcb9b4a2e`  
		Last Modified: Fri, 15 Mar 2019 10:52:51 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d99809a790486014b8050dc2c36021b4295e27795256b18aa6c1d65bfa9de2`  
		Last Modified: Wed, 20 Mar 2019 11:55:52 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a0d6dab941ebd3b8aaf820833b27a5ce08b416a6b53d6c81429c51d25cdbb1`  
		Last Modified: Wed, 20 Mar 2019 11:55:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b40407e6f9a8bab5ff25803b01368a77241e550381a8add44ad969d57c8d92`  
		Last Modified: Wed, 20 Mar 2019 11:55:50 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5d3ff3750d6cdcf9978b11b55491e534cda509189657d52bfe87ffb6b1f0da`  
		Last Modified: Wed, 20 Mar 2019 11:56:59 GMT  
		Size: 91.3 MB (91325984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd683cbbf3f2a84278f66a65152f86f2c50f11f48a4ca6a030bca8ea2438bf03`  
		Last Modified: Wed, 20 Mar 2019 11:55:50 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248e0995a53152041797514ad54cbb1562989682d3508c67c223d3a289e5418b`  
		Last Modified: Wed, 20 Mar 2019 11:55:50 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca86daae96d38ab2a021853cb4d3b027ccf8fca90ff8ec73d23439f8f38e1b4`  
		Last Modified: Wed, 20 Mar 2019 11:55:50 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.16299.1029; amd64

```console
$ docker pull mongo@sha256:49d5bc7318dd2c2d027b24c65888cf18df4d423f9a77de7133934b62d61b32b7
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3699788123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c194ae2d06b42ac50bf0b8e913a5e8d6aa8c70a5401a1aa8a80e80247256072`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Fri, 15 Mar 2019 09:46:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 20 Mar 2019 11:30:37 GMT
ENV MONGO_VERSION=4.1.9
# Wed, 20 Mar 2019 11:30:39 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.9-signed.msi
# Wed, 20 Mar 2019 11:30:40 GMT
ENV MONGO_DOWNLOAD_SHA256=af71f53e1a1a92756b9c6c36c15cd6ec6be3cd292ef3636c8cd75d0216d0079f
# Wed, 20 Mar 2019 11:50:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 11:50:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 20 Mar 2019 11:50:41 GMT
EXPOSE 27017
# Wed, 20 Mar 2019 11:50:42 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7f4a716683dc03db3521ed040924c24ea9bd17c7f134c09bf22e33f6af33ade8`  
		Last Modified: Mon, 11 Mar 2019 21:13:17 GMT  
		Size: 936.6 MB (936551125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b217250878f40ff58563b56494c3225f606f7bde90c1be1e82385924187428f2`  
		Last Modified: Fri, 15 Mar 2019 10:53:26 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5b171e459f4e79cae72d4b56b75f55ac1f387650e5ae511d40becbadefca02`  
		Last Modified: Wed, 20 Mar 2019 11:57:17 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5268c6c80bc0bc8eec6f2a550fb8ad4d4f0a274427581b8e15ef24aa0cfac3`  
		Last Modified: Wed, 20 Mar 2019 11:57:17 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccdb1665db2dc66dad4728e68cba92bf69ac0d8ddfc8c4b344c430bb96c7fd8`  
		Last Modified: Wed, 20 Mar 2019 11:57:15 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b21ea7528fa2b0a6d66c1c3de6f773e638ae49d9ce7e1a08179c680e68e5544`  
		Last Modified: Wed, 20 Mar 2019 11:59:55 GMT  
		Size: 488.9 MB (488928011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9693225a0e0ef07c355ee3e1e9651f3475aad79faa84d5a6b020441947573b`  
		Last Modified: Wed, 20 Mar 2019 11:57:15 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c6cb141b0ceb9f6a2ec9f5522833190c4de8ec5ac5881ae90b00904807a884`  
		Last Modified: Wed, 20 Mar 2019 11:57:15 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614ed12b2ac09f1f39d5b2c722492fe94d1dc2df1313a14b64a1e2155010f28f`  
		Last Modified: Wed, 20 Mar 2019 11:57:15 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.17134.648; amd64

```console
$ docker pull mongo@sha256:8e08bc0865ad7d7d73b5e9a5eb7f77eee643788bcf706b361fe9ea0e4a24e8f6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2338010113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb3963ceab2deed3538cff51f54174f077d9f2eec57bb593656c51ab42498f6a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 08 Mar 2019 23:20:01 GMT
RUN Install update 10.0.17134.648
# Fri, 15 Mar 2019 10:36:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 20 Mar 2019 11:50:57 GMT
ENV MONGO_VERSION=4.1.9
# Wed, 20 Mar 2019 11:50:59 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.9-signed.msi
# Wed, 20 Mar 2019 11:51:02 GMT
ENV MONGO_DOWNLOAD_SHA256=af71f53e1a1a92756b9c6c36c15cd6ec6be3cd292ef3636c8cd75d0216d0079f
# Wed, 20 Mar 2019 11:54:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 11:54:36 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 20 Mar 2019 11:54:37 GMT
EXPOSE 27017
# Wed, 20 Mar 2019 11:54:39 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be86bca8de59067e592a8becc2e83ed2465a6d9bce324043e434aa4a15493b00`  
		Last Modified: Mon, 11 Mar 2019 21:17:02 GMT  
		Size: 593.3 MB (593288046 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82981f58be95926db2383949a2f5a368e6a47da5ecef767833272099e4524a63`  
		Last Modified: Fri, 15 Mar 2019 11:02:36 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1501c291f68281052ae54dcbbad370903dd05e9fb6b37e966116ec93503ab9d`  
		Last Modified: Wed, 20 Mar 2019 12:00:15 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4324751ae260c43f1e4941a1591b659254a10f3733787ae1915c238e6e9322`  
		Last Modified: Wed, 20 Mar 2019 12:00:15 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35b1448739332dd52c5224d6dcb4e9567c3051f607499da3cf7dabe0c70f779`  
		Last Modified: Wed, 20 Mar 2019 12:00:13 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64169979823b39ec7565793d1b93c7af2930f6d3d48f4a0a40ede5a5d8e88b9`  
		Last Modified: Wed, 20 Mar 2019 12:00:33 GMT  
		Size: 85.0 MB (85025350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33739b6c152e89f967ea36773443cd33883debdc74e12252364b9670f2d6c0a9`  
		Last Modified: Wed, 20 Mar 2019 12:00:13 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e992e9a8fb3bee7d0a9984668962380f414ba1752e682bce6198e1f9730a92a`  
		Last Modified: Wed, 20 Mar 2019 12:00:13 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e62e74eae87a426ec82d016672d64e4cd6f17bb49c52a302aeed0a1ee919eae`  
		Last Modified: Wed, 20 Mar 2019 12:00:13 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
