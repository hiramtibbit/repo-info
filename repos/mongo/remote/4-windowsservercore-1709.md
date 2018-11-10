## `mongo:4-windowsservercore-1709`

```console
$ docker pull mongo@sha256:d699ae858b78bab5925eb0f02e0db1ffe9a7be5725a7bb7d18711fe8add7c71f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.726; amd64

### `mongo:4-windowsservercore-1709` - windows version 10.0.16299.726; amd64

```console
$ docker pull mongo@sha256:853252a1a336d49647e848c7020a961cec97133a8d96676594c1c6f38a645e6f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3199325027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f7cc682570d0b422347293060990f826319da0844e45d2bcc2842ec3377bb6`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 01 Oct 2018 22:02:14 GMT
RUN Install update 10.0.16299.726
# Tue, 16 Oct 2018 10:03:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 10 Nov 2018 10:27:02 GMT
ENV MONGO_VERSION=4.0.4
# Sat, 10 Nov 2018 10:27:03 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.4-signed.msi
# Sat, 10 Nov 2018 10:27:04 GMT
ENV MONGO_DOWNLOAD_SHA256=7d5b1f3a655cf2fe9864554699ffd6d7db616889fd211b4f0951d185e8395659
# Sat, 10 Nov 2018 10:30:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Sat, 10 Nov 2018 10:30:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Sat, 10 Nov 2018 10:30:05 GMT
EXPOSE 27017/tcp
# Sat, 10 Nov 2018 10:30:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd7a4737dfbb59b49c30480146e7f0a61842409755bd479b63004c5643d0ed3`  
		Last Modified: Mon, 08 Oct 2018 19:38:11 GMT  
		Size: 866.5 MB (866458210 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb0cfc3f1dafb85be3cada2e98abf803f8e5eadcc61125fa7266a93c29d873e7`  
		Last Modified: Tue, 16 Oct 2018 10:54:36 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bad98978e9c6132df44ea7d9cbc940d298b1388045d9107e2661559f5fc9043`  
		Last Modified: Sat, 10 Nov 2018 11:26:38 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919c54a88d15fccf20030c39e3349c45f907c2e57a83444c6cd3015f26ce2eb0`  
		Last Modified: Sat, 10 Nov 2018 11:26:38 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1256e47fecefb66302959c55b50c51b35a0f849232f214fed50d44a1145a2acb`  
		Last Modified: Sat, 10 Nov 2018 11:26:36 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7896a4624f5eea6f1fb5e573a06a8bc3d9a3c9a19aa7a48d07dafccf382ce761`  
		Last Modified: Sat, 10 Nov 2018 11:26:51 GMT  
		Size: 58.6 MB (58557841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaface07cb50bb20fde242729fe6fcaac4b18f329ed04784b83e53482af7cc33`  
		Last Modified: Sat, 10 Nov 2018 11:26:36 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026f7833945aaca5a6f719d895bbcca7ab318e11600725c8218c08c447caf056`  
		Last Modified: Sat, 10 Nov 2018 11:26:36 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf73845dd251c9b6894c3cf8cf7e6309c5d2dbacb6211dd4d0be89b24bdf8d9d`  
		Last Modified: Sat, 10 Nov 2018 11:26:36 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
