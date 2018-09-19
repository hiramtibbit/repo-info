## `mongo:unstable-windowsservercore-1803`

```console
$ docker pull mongo@sha256:d621693356f48d668fec848d6d79fd706d69cc97e22aac5394fbf59970011a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.228; amd64

### `mongo:unstable-windowsservercore-1803` - windows version 10.0.17134.228; amd64

```console
$ docker pull mongo@sha256:806c46a140c23c7913644f9018cada7701bfb9e09f829f3fb550d1fb30e55f1f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2729645162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:427fa077f38fbc956a913f0fb33767111d6f152a2b22306ed928fe10fba3676a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:21:55 GMT
RUN Install update 10.0.17134.228
# Fri, 17 Aug 2018 10:25:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 17 Aug 2018 11:15:26 GMT
ENV MONGO_VERSION=4.1.2
# Fri, 17 Aug 2018 11:15:27 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.2-signed.msi
# Fri, 17 Aug 2018 11:15:28 GMT
ENV MONGO_DOWNLOAD_SHA256=4e327fa11d290fc755b92b9c8d16102f0f3984c6bee3da5630839c2a6448dd6e
# Fri, 17 Aug 2018 11:35:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 17 Aug 2018 11:35:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 17 Aug 2018 11:35:21 GMT
EXPOSE 27017/tcp
# Fri, 17 Aug 2018 11:35:22 GMT
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
	-	`sha256:2e4503a56cd80fdf19f9cdec576c175c72dc3dd9d8aa06e9202a42b56878601a`  
		Last Modified: Fri, 17 Aug 2018 11:45:40 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56230de2060df583369fe210a734f053cab0b3ff6423a627595b7dc015d7f04`  
		Last Modified: Fri, 17 Aug 2018 11:45:40 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb3537f0bf3606753faa0aecd3e5977e5f554bc74a5a5ac6574d0fa4fd5acac`  
		Last Modified: Fri, 17 Aug 2018 11:45:38 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2537ee72af8a17b091db9369de67338ab6cfc68e3c30508f596ef3a25b11dd12`  
		Last Modified: Fri, 17 Aug 2018 11:46:41 GMT  
		Size: 539.8 MB (539839768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3baf9e5ed910adb260c0a3f40d0f1c5959b0b92aff1e037339687d7db9a6f4ae`  
		Last Modified: Fri, 17 Aug 2018 11:45:38 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079c1ee2ff07a0d52f54c62f75318d418e994c6a763eadf1876d647c89e5f8a3`  
		Last Modified: Fri, 17 Aug 2018 11:45:38 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4f8a76b89bc8422890ac8465b4f1f06758c7152d76a9eb06301e3765efc5e1`  
		Last Modified: Fri, 17 Aug 2018 11:45:38 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
