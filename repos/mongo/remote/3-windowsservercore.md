## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:d5335644a84f781c57571bf42d3487b3d18fd64ae37471b6658ecf5fe08e1a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.16299.1087; amd64

### `mongo:3-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:25ad76d8cb91bc1f5038dbdcd6651905589b7e3c696fce7f47152df14de297c2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 GB (6112494057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f37cc0c3e1cb2b5c49a5e839a14648bbbf6b28782a1365c05e3ea7557ac076`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:12:18 GMT
ENV MONGO_VERSION=3.6.12
# Fri, 12 Apr 2019 02:12:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Fri, 12 Apr 2019 02:12:20 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Fri, 12 Apr 2019 02:36:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:36:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:36:21 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:36:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e5043938b0de69e60d936a678f623c8ea21c327267c6e21ebd27225ee0a5e3`  
		Last Modified: Fri, 12 Apr 2019 04:39:03 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4065eeeec4d10354e90753b164b318d97ecc238ff36121a127900b084c369dcb`  
		Last Modified: Fri, 12 Apr 2019 04:39:02 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd667bc5d1f54baf5617cba02b580b11a1b7855ab53389991338f59658975123`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3678e51885517a528837a0aa7e80292d4b061e54437f47025a27a60e643f8f6c`  
		Last Modified: Fri, 12 Apr 2019 04:40:07 GMT  
		Size: 470.1 MB (470115904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa8ceffc85866575d4014d6d250d66614223ed8e4956df51c248d4dbd907dd6`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19b033614c81917c11f567466ac7049d1766b77a2fb7efc3e1cc534bd0a08ea`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39b926cc6947fc3a4b228112c63841ddc5c35d8fb3dd3116c3ada7802591afd`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3-windowsservercore` - windows version 10.0.16299.1087; amd64

```console
$ docker pull mongo@sha256:706d4b8406adb4ab08f560f1741a227904108ae599acf5812973994d8a722500
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3670595879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17dda5aa89156dc448d081880fd28005e3eb6d2245e499bfe19f9ff6a05bf9e4`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 1709-RTM-amd64
# Thu, 04 Apr 2019 00:21:24 GMT
RUN Install update 1709-amd64
# Fri, 12 Apr 2019 02:09:20 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:36:39 GMT
ENV MONGO_VERSION=3.6.12
# Fri, 12 Apr 2019 02:36:40 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Fri, 12 Apr 2019 02:36:41 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Fri, 12 Apr 2019 02:54:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:54:58 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:55:00 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:55:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8c7d1531260f1f41cc711bfb3c8ab8efac981758fd7943518b863803f0b31552`  
		Last Modified: Tue, 09 Apr 2019 18:39:54 GMT  
		Size: 926.6 MB (926563180 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e701206ccf088c14af6f5af1c1d84d79a98ec58e5340a3038a02cfb9f9fe2de2`  
		Last Modified: Fri, 12 Apr 2019 04:38:27 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7c8ceff5db3e047554703e51986ba49d06c026f1ccc5de91d26462e97913c7`  
		Last Modified: Fri, 12 Apr 2019 04:40:27 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e528177906817f6f7dcce7857c36194c7441aae0f2ae86e43dbb954c373315ed`  
		Last Modified: Fri, 12 Apr 2019 04:40:27 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669ca556e690e508e9e0c63b97855d49b60adba8fd3c8f95557918561b73d2f2`  
		Last Modified: Fri, 12 Apr 2019 04:40:24 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e662b0ac827829341b09e5f5be0d7e84bca13ccb6c065b85d66e6e27b686d8f`  
		Last Modified: Fri, 12 Apr 2019 04:41:32 GMT  
		Size: 469.7 MB (469723675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5470e7f1b9030bf59f7d93feea3cd3471a932cb9170205a244e2345341000d1f`  
		Last Modified: Fri, 12 Apr 2019 04:40:24 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f5695904929b711cd60a5c7e009aa728ccd42f7ed23be6060f10439b16fbbc`  
		Last Modified: Fri, 12 Apr 2019 04:40:24 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403bfff8702c5e20d747d546eaa1922d8de03a347f8c7e14c8d67967e96f10b4`  
		Last Modified: Fri, 12 Apr 2019 04:40:24 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
