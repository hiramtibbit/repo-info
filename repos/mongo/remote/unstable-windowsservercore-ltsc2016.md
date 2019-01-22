## `mongo:unstable-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:682aa48f4e65c4526c05dba45aa03f10c11da64ef18bea8cfecb8b866232aa22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `mongo:unstable-windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull mongo@sha256:b853cff424a596216701e1cc6d3464e103975147d83b678e5dee3c0473874263
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5725234906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902260daa6c83fe12970ee12349d708e95a88ccedc8a6511babb4506ca7ee4ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Tue, 22 Jan 2019 11:49:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 22 Jan 2019 12:34:24 GMT
ENV MONGO_VERSION=4.1.7
# Tue, 22 Jan 2019 12:34:26 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.7-signed.msi
# Tue, 22 Jan 2019 12:34:27 GMT
ENV MONGO_DOWNLOAD_SHA256=07225721b4b914c65c4a2a9306cf8d19b3875a96e349c3e4b9853e86c8d4cfb1
# Tue, 22 Jan 2019 12:43:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 22 Jan 2019 12:43:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 22 Jan 2019 12:43:59 GMT
EXPOSE 27017
# Tue, 22 Jan 2019 12:44:01 GMT
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
	-	`sha256:b0af47347bb903fb0d931382ac0c0e7719cc0c44eb549dbf35175e697b0f3bc4`  
		Last Modified: Tue, 22 Jan 2019 13:40:25 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455759ae8419054b880f7a950d5e0529839bf57dad2927e857560312cb3b414d`  
		Last Modified: Tue, 22 Jan 2019 13:40:25 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134cd954c9d5423e5db5738fdd460d5ab962c782147b774ec891a37ae10ed8c7`  
		Last Modified: Tue, 22 Jan 2019 13:40:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e04ca6aa4e5c183ee0e94a5f8ed7689dcd89d1145f683ed3c3980cb0a78171a`  
		Last Modified: Tue, 22 Jan 2019 13:40:57 GMT  
		Size: 89.4 MB (89410372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec9120e6e593fa5854390471166e01b391f564aacadeea08202cb61eed0899f`  
		Last Modified: Tue, 22 Jan 2019 13:40:23 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6db8781965b3b0d01bf3fce82a7b6b064e27fae1bcc24cf3146c4a881daac9`  
		Last Modified: Tue, 22 Jan 2019 13:40:22 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f6d024476d424001bdc320d0a8b2090afa6fd0412d032498d68b387cad56b1`  
		Last Modified: Tue, 22 Jan 2019 13:40:23 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
