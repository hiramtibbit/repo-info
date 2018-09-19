## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:df998c6f1d49260eb078e71c5d1214c7d28d9a6fe8c42c257a1b2f9b32a669c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64

### `mongo:3-windowsservercore` - windows version 10.0.14393.2430; amd64

```console
$ docker pull mongo@sha256:b7e97f8d7d638011f884940a99fb1efdfe492e84b491e7c4f7fa853eb523e326
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5583727947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20f9cc9e1d63d7857b665b2493eb6e94fb72b6956749792953913faa1fda607d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Fri, 17 Aug 2018 09:21:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Aug 2018 09:16:46 GMT
ENV MONGO_VERSION=3.6.7
# Thu, 23 Aug 2018 09:16:47 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.7-signed.msi
# Thu, 23 Aug 2018 09:16:48 GMT
ENV MONGO_DOWNLOAD_SHA256=c672b80ae0c682da76662917fd09a024f1695f82008b2180664c0c4d684b9a87
# Thu, 23 Aug 2018 09:25:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 09:25:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Aug 2018 09:25:59 GMT
EXPOSE 27017/tcp
# Thu, 23 Aug 2018 09:26:00 GMT
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
	-	`sha256:7a4b45bfcdc7e1bc72a00807c55d3c8a97a49ec128a3aa2d3c146d2c38c538c6`  
		Last Modified: Thu, 23 Aug 2018 09:48:48 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6e1c6d2590a43f1e1d3ff2acac729f5fa68a5549b0367b7a199295af4b2b2d`  
		Last Modified: Thu, 23 Aug 2018 09:48:48 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e747ca5fabfd1b1572d39f4fafed869724b6a41722b502f7299f295dc33dd37`  
		Last Modified: Thu, 23 Aug 2018 09:48:46 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94afec709629f118769f7151fa4430cd1eb190654457ea6595b199d5f5034f4`  
		Last Modified: Thu, 23 Aug 2018 09:49:02 GMT  
		Size: 71.8 MB (71828594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0003f5103fe6877f6a4cedf140822254bf5c652a6ffa62fcf1e9d5c933097b78`  
		Last Modified: Thu, 23 Aug 2018 09:48:46 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3556f8efdb0bf05ba1122de929a4f70e1aac77644d33354e195d444736fce85`  
		Last Modified: Thu, 23 Aug 2018 09:48:46 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4a529bac3ac32c66f13bc3f0639a2e3dcb7b46734e99b97109a991b8a2bea7`  
		Last Modified: Thu, 23 Aug 2018 09:48:46 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3-windowsservercore` - windows version 10.0.16299.611; amd64

```console
$ docker pull mongo@sha256:0e80e91c37d0cfa2bf588c959ac36e44ccebf01e9ed6843f946752e3bc3bb405
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3650457811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe18c46e51581058ee9f9c4e14785fed256f9d1110999534df46656c2c1336fc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Fri, 17 Aug 2018 09:24:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Aug 2018 09:26:16 GMT
ENV MONGO_VERSION=3.6.7
# Thu, 23 Aug 2018 09:26:17 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.7-signed.msi
# Thu, 23 Aug 2018 09:26:17 GMT
ENV MONGO_DOWNLOAD_SHA256=c672b80ae0c682da76662917fd09a024f1695f82008b2180664c0c4d684b9a87
# Thu, 23 Aug 2018 09:47:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 09:47:35 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Aug 2018 09:47:36 GMT
EXPOSE 27017/tcp
# Thu, 23 Aug 2018 09:47:37 GMT
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
	-	`sha256:b2d86456760b9c67506aae0cc59eef33a77f1aa73edce1cf56aceedf53737b73`  
		Last Modified: Thu, 23 Aug 2018 09:49:24 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c55070d5a8fc0322895313767cd75a5698e80e8f7bf9de4785cda61096be46`  
		Last Modified: Thu, 23 Aug 2018 09:49:25 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45efc667c8ed124e9b313fbac59a5c30e7613f78a4e20c0d72816d004b1002d2`  
		Last Modified: Thu, 23 Aug 2018 09:49:22 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590e5204dab2353f8a53edab4a07e7a1bd78dd89246e4bee679766c6173a0519`  
		Last Modified: Thu, 23 Aug 2018 09:50:30 GMT  
		Size: 538.3 MB (538313727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d937365c596e769c6602ef2bba9718d3fe82edb4f8b9563e01f68fc750b861`  
		Last Modified: Thu, 23 Aug 2018 09:49:22 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bac697dbbc7000dc2bbd880110d0d55336e1ddb51027b74623423c64208415`  
		Last Modified: Thu, 23 Aug 2018 09:49:22 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0235921d16889eabd93c3fe4b1408dbce22435cd8ce3c9d4c1826ddeb98c8696`  
		Last Modified: Thu, 23 Aug 2018 09:49:22 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
