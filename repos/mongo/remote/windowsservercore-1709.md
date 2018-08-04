## `mongo:windowsservercore-1709`

```console
$ docker pull mongo@sha256:4ee70505e391578eb548ee5cd1d1b090f43b92f053fe11960f4b1b4111268ed8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.547; amd64

### `mongo:windowsservercore-1709` - windows version 10.0.16299.547; amd64

```console
$ docker pull mongo@sha256:6de7196a3a4f6dbb970c7200ebc35678f6777b46b5d681ca69e6b5d539f92c49
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 GB (3637069594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d721e17f6d4f47aa276fdb2069b20ff536c92ea8413f61d7abca4a3f649ac68`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Jul 2018 18:10:50 GMT
RUN Install update 10.0.16299.547
# Thu, 19 Jul 2018 14:48:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 04 Aug 2018 09:56:25 GMT
ENV MONGO_VERSION=4.0.1
# Sat, 04 Aug 2018 09:56:26 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.1-signed.msi
# Sat, 04 Aug 2018 09:56:27 GMT
ENV MONGO_DOWNLOAD_SHA256=234bebe451ca4601a8fd5016ede6b3ad424ac059dfcb3d0e76abf934f4143af4
# Sat, 04 Aug 2018 10:14:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Sat, 04 Aug 2018 10:14:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Sat, 04 Aug 2018 10:14:25 GMT
EXPOSE 27017/tcp
# Sat, 04 Aug 2018 10:14:27 GMT
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
	-	`sha256:29ebf9db54f08134aff426fc9f99abd87d6a80ae5ed5d6409c11d52534f4d904`  
		Last Modified: Sat, 04 Aug 2018 10:34:19 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec708c65fdd276b5268a86610341785fae035540d197313b01102c8c819bd1d6`  
		Last Modified: Sat, 04 Aug 2018 10:34:18 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f7fb06b23170088e45add1392b5307efd6458446cccba7e029aa30de163e09`  
		Last Modified: Sat, 04 Aug 2018 10:34:16 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520746da6b6da954eec6423781c09d8a54a08d5a08989d0e354c798cdfb13e83`  
		Last Modified: Sat, 04 Aug 2018 10:35:13 GMT  
		Size: 531.6 MB (531641077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32ef2f710cd4989bbef178d7fa361a241480f469ad4356eaf5d9ada88bbcb95`  
		Last Modified: Sat, 04 Aug 2018 10:34:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091d1b703aeec163a894b1b49f55bd7f2d6342855438b058cef36647e6409785`  
		Last Modified: Sat, 04 Aug 2018 10:34:16 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0877e36d791b85b49673c94fc8f5d863cc5c4064f7aaa632f63d4eaaaa971d`  
		Last Modified: Sat, 04 Aug 2018 10:34:16 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
