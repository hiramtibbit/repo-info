## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:0615aed6cfc6d7e303bdfb40422233e9ddda8b487a1079b7cb70988e1751c74f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64
	-	windows version 10.0.17134.523; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull mongo@sha256:5a8f8c2fe7eeb6d29fb24b5248102d070f35f924c3b6d8e864ed9227b42d6340
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5710236760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0b0d633dc4a918622a22579704fe94904fd8194cf29b5d936d012ae1380096`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Tue, 22 Jan 2019 11:49:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 22 Jan 2019 12:22:48 GMT
ENV MONGO_VERSION=4.0.5
# Tue, 22 Jan 2019 12:22:49 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.5-signed.msi
# Tue, 22 Jan 2019 12:22:50 GMT
ENV MONGO_DOWNLOAD_SHA256=e2ac83cfee3350012a641405ce5ba5c3cffe3f8d1a0cd5e0eb3e332246a9cc20
# Tue, 22 Jan 2019 12:27:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 22 Jan 2019 12:27:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 22 Jan 2019 12:27:07 GMT
EXPOSE 27017
# Tue, 22 Jan 2019 12:27:08 GMT
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
	-	`sha256:5164302b5f813642308cc01b6581fe5d8ac7df48af093aad2c7da7feccf7ecaa`  
		Last Modified: Tue, 22 Jan 2019 13:38:19 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bed35cdf338b3bd281327a9b04d8bb8e3d8d1c0e24bc437e6dd02d905f25be`  
		Last Modified: Tue, 22 Jan 2019 13:38:19 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f605a1ce17fdd47370da5b9604e59d8eb20800ff7ae96ee191cb71491bc37c`  
		Last Modified: Tue, 22 Jan 2019 13:38:17 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0956a4ab0b2c7ce8c22069ff542c160bf1ed1bb7a4250dc065d74805f6a4b34`  
		Last Modified: Tue, 22 Jan 2019 13:38:34 GMT  
		Size: 74.4 MB (74412208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7079b2724c963f0b2a6c584cdad9b8ff210d87550596bd7601c19dd4825c089b`  
		Last Modified: Tue, 22 Jan 2019 13:38:17 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d373969468427bde19fe13ca2cb5a9b98b81ecf8e3816e5d79d609ef4813f34b`  
		Last Modified: Tue, 22 Jan 2019 13:38:17 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1edc0c2b9afc623286f05c0b3c026ce0e981bd53975b55fb9673d06e80f7025c`  
		Last Modified: Tue, 22 Jan 2019 13:38:17 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.904; amd64

```console
$ docker pull mongo@sha256:a75d3138c705b579ca2944486aa9d039a5261b7406b7a2eac6b8ecb7f8e6e54a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3216375619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95815adf15586eccbc03173e3a94c29c5652b14a58e5f54ce382b8ecbb3cb5f5`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Tue, 22 Jan 2019 11:52:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 22 Jan 2019 12:27:15 GMT
ENV MONGO_VERSION=4.0.5
# Tue, 22 Jan 2019 12:27:16 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.5-signed.msi
# Tue, 22 Jan 2019 12:27:17 GMT
ENV MONGO_DOWNLOAD_SHA256=e2ac83cfee3350012a641405ce5ba5c3cffe3f8d1a0cd5e0eb3e332246a9cc20
# Tue, 22 Jan 2019 12:30:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 22 Jan 2019 12:30:36 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 22 Jan 2019 12:30:38 GMT
EXPOSE 27017
# Tue, 22 Jan 2019 12:30:39 GMT
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
	-	`sha256:c44571cfb5d9f1875e19dbda26c907cb7ed8a64e2346bcca9c06f272ddd275d9`  
		Last Modified: Tue, 22 Jan 2019 13:38:54 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4161aa6be1b8227823fc5ec0310bf3b0beb435e106ed1984e93ab1219ace635f`  
		Last Modified: Tue, 22 Jan 2019 13:38:53 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27ea127c9125e46dcda467c5ba4bd2c4edaee672d9e3efe30c61d95cb4e5f8e`  
		Last Modified: Tue, 22 Jan 2019 13:38:51 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46d58a307f599b09ca97fea46404107624f8ef0974e5f7c92c27a219fae63ac`  
		Last Modified: Tue, 22 Jan 2019 13:39:31 GMT  
		Size: 69.3 MB (69311319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43eb4eabbab3a72f0ad98bfb8c42b07e6f47c1eab1fe68bb902e720bfd6fd1a5`  
		Last Modified: Tue, 22 Jan 2019 13:38:51 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e595d03c3d5d6ee5dabc913335907202c6cf100cc8037bb6435a275ef74b75b`  
		Last Modified: Tue, 22 Jan 2019 13:38:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5116a8b952e4ec71960ee275f371725765fff73fc7d4d59a75dc77af1f6217e7`  
		Last Modified: Tue, 22 Jan 2019 13:38:51 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.17134.523; amd64

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
