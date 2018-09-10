## `mongo:windowsservercore-1803`

```console
$ docker pull mongo@sha256:e3cc615d68a4f58929f429cee7a1fc266c7f30bdc86624b568ea5cd1ec13b5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.228; amd64

### `mongo:windowsservercore-1803` - windows version 10.0.17134.228; amd64

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
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd59519ea2c2d73a5cba6e562d012a127d08d86dfc5067535eef141406c3750b`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
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
