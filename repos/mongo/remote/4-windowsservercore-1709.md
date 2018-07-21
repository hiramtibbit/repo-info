## `mongo:4-windowsservercore-1709`

```console
$ docker pull mongo@sha256:92095f58c882465056fa9921e32978c1b026e7518ee52ebdba3cc3a2af06f228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.547; amd64

### `mongo:4-windowsservercore-1709` - windows version 10.0.16299.547; amd64

```console
$ docker pull mongo@sha256:1dc9d8d9b1fded1aa825d1671c5bfd6ac217d90fed7d1ef77a8a5b5dc1182f97
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3662729672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cca04bd9225f5139f803c5c82a03c8b6ef617bda0eeed8b09c85b528a0a69a2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Jul 2018 18:10:50 GMT
RUN Install update 10.0.16299.547
# Thu, 19 Jul 2018 14:48:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 19 Jul 2018 15:31:50 GMT
ENV MONGO_VERSION=4.0.0
# Thu, 19 Jul 2018 15:31:51 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.0-signed.msi
# Thu, 19 Jul 2018 15:31:52 GMT
ENV MONGO_DOWNLOAD_SHA256=bf370d32e956eb5849cf92f3d092739a930531378091ea8f9237bd902368ae69
# Thu, 19 Jul 2018 15:50:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 19 Jul 2018 15:50:02 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 19 Jul 2018 15:50:03 GMT
EXPOSE 27017/tcp
# Thu, 19 Jul 2018 15:50:04 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a01c2a39b5bdf158508b424626efbcede4aa9da21f2d4f6ffbd5bff4deb0fb01`  
		Last Modified: Tue, 10 Jul 2018 23:36:17 GMT  
		Size: 831.1 MB (831119569 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0dc9d8f5ea2c4c020baad73aacc777702fac8821ec0901ea9f85ad3490d64a1`  
		Last Modified: Sat, 21 Jul 2018 09:49:52 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90524fdb00cc5a0df24c2a9f10884d31f6c992726539262be9c0ae75062faf79`  
		Last Modified: Sat, 21 Jul 2018 09:54:55 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb01d26b466b99d5e84576986c5ff57c7bd1c12f0bdaca454bff708dfadf0b7`  
		Last Modified: Sat, 21 Jul 2018 09:54:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3056f4a17fcf4d34a4a44833b66aca7cdab38c1e629da0e804d30aff682c76d`  
		Last Modified: Sat, 21 Jul 2018 09:54:50 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbdff71bf2081cc1d3eb10b25d79cb17f8c0c141f0b87a52a591e741d3d6cd8`  
		Last Modified: Sat, 21 Jul 2018 09:55:50 GMT  
		Size: 557.3 MB (557301185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768fde70cf7857f0f1a905117d99906f168e14176826e552a5df49cc4beedc1f`  
		Last Modified: Sat, 21 Jul 2018 09:54:50 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af8d83ed409d4b4d3ca9d19aca43310796f9fea51c1f7a05ab4169d4d39b06c`  
		Last Modified: Sat, 21 Jul 2018 09:54:50 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0544f397fc2c056bf2a834fddacb1343ce4b6e0720fa13c44c2d0ded9f8162a`  
		Last Modified: Sat, 21 Jul 2018 09:54:50 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
