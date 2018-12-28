## `mongo:4-windowsservercore-1709`

```console
$ docker pull mongo@sha256:ddbe07066823e6fdec24e4e25d180f9cbc2f9bcf1da4b8d30582e570776aa176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `mongo:4-windowsservercore-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull mongo@sha256:153391faa91987dc530f5813f7e87c23e35831a29df71022ef2f1ab431228a37
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3221467200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea4e3c8e6f0bfb8fd4fd2eb64c15b3938c09b436f000e8170bd216eb560f77e8`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 19:04:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 28 Dec 2018 10:27:21 GMT
ENV MONGO_VERSION=4.0.5
# Fri, 28 Dec 2018 10:27:22 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.5-signed.msi
# Fri, 28 Dec 2018 10:27:23 GMT
ENV MONGO_DOWNLOAD_SHA256=e2ac83cfee3350012a641405ce5ba5c3cffe3f8d1a0cd5e0eb3e332246a9cc20
# Fri, 28 Dec 2018 10:31:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 28 Dec 2018 10:31:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 28 Dec 2018 10:31:59 GMT
EXPOSE 27017
# Fri, 28 Dec 2018 10:32:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f9dda4685a777cd79d2b2657bd58c66d7d630dd04d91295e2867ebf816d48dc0`  
		Last Modified: Tue, 25 Dec 2018 20:33:20 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0590ffb1189cac90f5b9abda7d746531dddd97e711ebdd136fc440d0120f60dd`  
		Last Modified: Fri, 28 Dec 2018 10:37:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204fb23a82cd27a04878e85866f2948c4610011ff0dab62ac077edbe9f3188d3`  
		Last Modified: Fri, 28 Dec 2018 10:37:49 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560450691cfd5ce57edc5d9ade31eae25d152032f02d4705bb8e54232f83a350`  
		Last Modified: Fri, 28 Dec 2018 10:37:47 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25db886a181cadb18ddc555d07e889961f6ba0251f9a6898819e76c1eba10ae6`  
		Last Modified: Fri, 28 Dec 2018 10:38:04 GMT  
		Size: 69.3 MB (69321177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741bafdb84a8c1ce6f32fa21c5f299d18b6197ac0d3bc67aac737e10596bfb7c`  
		Last Modified: Fri, 28 Dec 2018 10:37:47 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1239bd7683c9016decadabf7fb22827a29087ed7a2d6350aa904161698b930a`  
		Last Modified: Fri, 28 Dec 2018 10:37:47 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b3c77211d272efa9e51dd95473df5514045833e28ea79627dc9d33f8e1677`  
		Last Modified: Fri, 28 Dec 2018 10:37:47 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
