## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:251e4c231cf2dc87e4ba062316e9868b036ec7c725d2e5bc6473f8320b491f41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64
	-	windows version 10.0.16299.665; amd64
	-	windows version 10.0.17134.285; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.2485; amd64

```console
$ docker pull mongo@sha256:111dda668ff09854c3d00535748559edbc5b39cfe65e1b340de0da94d0038cac
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5649467471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cf1553d4970e0e4fd7c3aa8eeee565abe602390905f9c715a34cd55125db455`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Sat, 15 Sep 2018 09:16:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 04 Oct 2018 09:15:56 GMT
ENV MONGO_VERSION=4.0.3
# Thu, 04 Oct 2018 09:15:57 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.3-signed.msi
# Thu, 04 Oct 2018 09:15:58 GMT
ENV MONGO_DOWNLOAD_SHA256=0e53cfd224d27862c286b765b85d769b39e3518b2dc2704ff87bd8a565ea9b7f
# Thu, 04 Oct 2018 09:19:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 04 Oct 2018 09:20:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 04 Oct 2018 09:20:02 GMT
EXPOSE 27017/tcp
# Thu, 04 Oct 2018 09:20:03 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6e046b8e194c642cfc4d7dcaa12ec2f9359e1f54dbc7088ee9ca188416d5c553`  
		Last Modified: Tue, 11 Sep 2018 16:53:50 GMT  
		Size: 1.5 GB (1515870209 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f786254e0429ce7f1ddc69d592364c6179e4c72da867230a987eba95e7d61708`  
		Last Modified: Fri, 21 Sep 2018 10:20:04 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b01f31a7aa4fd7291b21613c937d8d895c15f9105aa542846d9d47eab9d49c5`  
		Last Modified: Thu, 04 Oct 2018 09:27:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a91f3991da8c246a2b6484ced54a1db1ec675a78fdd7a86a64747c917fc166c`  
		Last Modified: Thu, 04 Oct 2018 09:27:21 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b421e43604c355857620a7c6c82b3f36fe98b8b9e7b8ab967492fb79fc95dd`  
		Last Modified: Thu, 04 Oct 2018 09:27:19 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30d6e68dc0551dc52e6905c4dce14914c97534727f3ae0e3d3672f7f566f33d`  
		Last Modified: Thu, 04 Oct 2018 09:27:37 GMT  
		Size: 63.6 MB (63602957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad302e19ed712882bd5e6885a1a9f37ad3c6a42e00b786ba66783e5b33a5e7`  
		Last Modified: Thu, 04 Oct 2018 09:27:18 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe222e59db8295799bc6c6c0e3f5332ceee2ce7eb44788022e92dfe0617aa12`  
		Last Modified: Thu, 04 Oct 2018 09:27:18 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb7b3d68d87ef46cfe19ee31d53f530107b48006e8930a2b8bc4702af769163`  
		Last Modified: Thu, 04 Oct 2018 09:27:18 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.665; amd64

```console
$ docker pull mongo@sha256:7f75dcdd8e7e449bf40eab2a0479a154968a39037cbcc7cec3187aba0f6d9fee
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3191193424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c100882439a2819cc43bd11fa4fc477030af878e7290741235a5933e4470c1`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Sat, 15 Sep 2018 09:20:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 04 Oct 2018 09:20:08 GMT
ENV MONGO_VERSION=4.0.3
# Thu, 04 Oct 2018 09:20:09 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.3-signed.msi
# Thu, 04 Oct 2018 09:20:09 GMT
ENV MONGO_DOWNLOAD_SHA256=0e53cfd224d27862c286b765b85d769b39e3518b2dc2704ff87bd8a565ea9b7f
# Thu, 04 Oct 2018 09:23:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 04 Oct 2018 09:23:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 04 Oct 2018 09:23:24 GMT
EXPOSE 27017/tcp
# Thu, 04 Oct 2018 09:23:25 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a5b83e25f92aef992a2827d664111b4726ada7d0b13d7af21882734cab96d8d0`  
		Last Modified: Tue, 11 Sep 2018 17:07:56 GMT  
		Size: 858.3 MB (858335510 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4cdc6ca9b93c706388b66a6275c76b641997dbef9a73356ba7a8511a95ccd52`  
		Last Modified: Fri, 21 Sep 2018 10:20:28 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaad93e66b58149b50966fb0741705f778e982362fd3b3d976ab405ddd1745b`  
		Last Modified: Thu, 04 Oct 2018 09:27:57 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b6374dc257029299c933f77b8d870a133c04cf08ffd307cfd52603ee6faed7`  
		Last Modified: Thu, 04 Oct 2018 09:27:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a4d88d0127d6e56f175bf185e91f2e873596cabbcf76606864e5a89c8020a`  
		Last Modified: Thu, 04 Oct 2018 09:27:55 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bbe222fcb1e2476c4f01ff9f1b998b42d7dd40bcf70aaee63b7bc71e8fb4388`  
		Last Modified: Thu, 04 Oct 2018 09:28:09 GMT  
		Size: 58.5 MB (58548957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75f904c8c110b3ace5efd8c8a13e507d3ec3db6d1ecf1e13dd55834746f6429`  
		Last Modified: Thu, 04 Oct 2018 09:27:55 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72af0d29b5db8920ea2fe6ccbfcd188043ba9753c5d0260cf5f1b225d5d3c23a`  
		Last Modified: Thu, 04 Oct 2018 09:27:55 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faafb418a17a8e6515ac4a250ea43e489903ef2c39704e24a393ec88bfa3d15c`  
		Last Modified: Thu, 04 Oct 2018 09:27:56 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.17134.285; amd64

```console
$ docker pull mongo@sha256:ff9d70e9ee3e349bca3d118dd198a0c1de83772c6589ce4af81adc5fde96e818
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2265353127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521d670be8c965f8030b6462c1182d1ea32cfa463a30c07eb5d3f1e89d5ee0f0`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Sat, 15 Sep 2018 09:39:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 04 Oct 2018 09:23:31 GMT
ENV MONGO_VERSION=4.0.3
# Thu, 04 Oct 2018 09:23:31 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.3-signed.msi
# Thu, 04 Oct 2018 09:23:32 GMT
ENV MONGO_DOWNLOAD_SHA256=0e53cfd224d27862c286b765b85d769b39e3518b2dc2704ff87bd8a565ea9b7f
# Thu, 04 Oct 2018 09:26:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 04 Oct 2018 09:26:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 04 Oct 2018 09:26:27 GMT
EXPOSE 27017/tcp
# Thu, 04 Oct 2018 09:26:28 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f036448990c273bb1accf8d436799639bbb644326ae47f30fe4faed21c8d8d9`  
		Last Modified: Tue, 11 Sep 2018 17:11:59 GMT  
		Size: 547.2 MB (547225773 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:72421b921bc76cd58967f35b89a741539cec39dab3ff330e790096ac6853216a`  
		Last Modified: Fri, 21 Sep 2018 10:24:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d58fae32a7dd0e093ccaf525a643520fe24d0c579ff96d24df8a3c7995e39f`  
		Last Modified: Thu, 04 Oct 2018 09:28:29 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e9ad12e4e0c7aeb9753b7959414d0e9dc9b496d20e89b4591a84d4d2d953ab`  
		Last Modified: Thu, 04 Oct 2018 09:28:29 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10e3ea9988868e3cc1f397767ffd3e7035a9f6b31e4a5113346361456bb122`  
		Last Modified: Thu, 04 Oct 2018 09:28:27 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713ac5302bf688490c9d49321b866050b6bb13af8043a5373b3237f12edc0192`  
		Last Modified: Thu, 04 Oct 2018 09:28:40 GMT  
		Size: 58.4 MB (58430691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f976c21079e627b1b068df97b15a439dc65475b151b55350c7483713546c46f5`  
		Last Modified: Thu, 04 Oct 2018 09:28:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c17aa0e5cc4de89afad1b3af498e6378aa2c3cafed7e197be4501f4240fe8`  
		Last Modified: Thu, 04 Oct 2018 09:28:27 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fcb17ad0a0eb4b32163d89feb2bb54d96ff664a8cf055c95547d3758df61c1`  
		Last Modified: Thu, 04 Oct 2018 09:28:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
