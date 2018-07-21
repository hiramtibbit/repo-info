## `mongo:4-windowsservercore`

```console
$ docker pull mongo@sha256:c66e82e6696db84ee611ff382224b098ee02561f45e0a9e99db0a0e53c00df48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64
	-	windows version 10.0.16299.547; amd64
	-	windows version 10.0.17134.165; amd64

### `mongo:4-windowsservercore` - windows version 10.0.14393.2363; amd64

```console
$ docker pull mongo@sha256:6b3684c7ae5b418966790362872149c788e55b8ec91edac6cd844fe56bb083a2
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5553704870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51ff4f2608846eb180e0e3afc4b0bd07ef949978498851ab793f22aab0c62f95`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:33 GMT
RUN Install update 10.0.14393.2363
# Tue, 17 Jul 2018 09:16:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 19 Jul 2018 16:08:00 GMT
ENV MONGO_VERSION=4.0.0
# Thu, 19 Jul 2018 16:08:01 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.0-signed.msi
# Thu, 19 Jul 2018 16:08:02 GMT
ENV MONGO_DOWNLOAD_SHA256=bf370d32e956eb5849cf92f3d092739a930531378091ea8f9237bd902368ae69
# Thu, 19 Jul 2018 16:17:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 19 Jul 2018 16:17:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 19 Jul 2018 16:17:18 GMT
EXPOSE 27017/tcp
# Thu, 19 Jul 2018 16:17:21 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fb1ebf2c42b6ac63b874d36a405b413fdf6c314131c3605d77e3cee6f485881f`  
		Last Modified: Tue, 10 Jul 2018 21:16:33 GMT  
		Size: 1.4 GB (1419298293 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:331fd417053dd4f3ba6c8293909f00c1104bf81840c35fa27cf2047a7c124804`  
		Last Modified: Tue, 17 Jul 2018 09:47:17 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fb50e6bb98a5800f7cf962d75ccbbd197bcf25919d9f21fe6e3f4f3f0c8f37`  
		Last Modified: Sat, 21 Jul 2018 09:54:21 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868590eb12c9f4e610329b31ed775eec3ca23ddd8632e19b890e51d0fdf4bc0d`  
		Last Modified: Sat, 21 Jul 2018 09:54:20 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e7f8a9b48bb35a6d8cea81f3576471d11af5c6ad490d945d869df052c6272`  
		Last Modified: Sat, 21 Jul 2018 09:54:19 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1594c1f52fba0beeb7256de70778915a25e3c61a65cec8738fb8c0565b13ce7b`  
		Last Modified: Sat, 21 Jul 2018 09:54:33 GMT  
		Size: 64.4 MB (64412347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee57fca283fb5d3bce683e6af5714366871e31ac7428f7e05a13eb5862f4c730`  
		Last Modified: Sat, 21 Jul 2018 09:54:18 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d1dad23dac2fc2934bf7334f47012e715ea7c7127177a63964f4c629ebd335`  
		Last Modified: Sat, 21 Jul 2018 09:54:18 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55aa2e77f0b9f13f665f8bb116084dcc9830b2decf18fd26ff971820f072c95`  
		Last Modified: Sat, 21 Jul 2018 09:54:18 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4-windowsservercore` - windows version 10.0.16299.547; amd64

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

### `mongo:4-windowsservercore` - windows version 10.0.17134.165; amd64

```console
$ docker pull mongo@sha256:fe66b5d49b8177f14775cd1c5a43f09f3802526feee7b74ddf55eabe553e6dd6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2683666366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f256d9e293d92e7e86fb6a560fd82b0ba5dd338fd81e115731ef98f6fb7bf8`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sat, 07 Jul 2018 22:48:41 GMT
RUN Install update 10.0.17134.165
# Tue, 17 Jul 2018 20:48:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 19 Jul 2018 15:50:07 GMT
ENV MONGO_VERSION=4.0.0
# Thu, 19 Jul 2018 15:50:08 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.0-signed.msi
# Thu, 19 Jul 2018 15:50:09 GMT
ENV MONGO_DOWNLOAD_SHA256=bf370d32e956eb5849cf92f3d092739a930531378091ea8f9237bd902368ae69
# Thu, 19 Jul 2018 16:07:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 19 Jul 2018 16:07:52 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 19 Jul 2018 16:07:55 GMT
EXPOSE 27017/tcp
# Thu, 19 Jul 2018 16:07:57 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e30fefc566f71c5dd5786e4783ff4ae3ad98804d5279c14dcf806c813fdf8f66`  
		Last Modified: Tue, 10 Jul 2018 21:54:14 GMT  
		Size: 493.5 MB (493521205 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:24d7aea33bc8c516e9df1805b8a1a30efaf719325f3117e896a5f2eb3972e54a`  
		Last Modified: Sat, 21 Jul 2018 09:56:49 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13c4a01802b5ced5aee8776795d940bf23a1180df0069b0829f3df9c75636cf`  
		Last Modified: Sat, 21 Jul 2018 09:56:47 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00c50727a978dec62bfa165314f78388127a03c7eb2c6c4bd3648e4a3ea0673`  
		Last Modified: Sat, 21 Jul 2018 09:56:46 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665ad3a1d60167cc812aff1f2315b7080007d5ec7a73d4457830d13155dcfce3`  
		Last Modified: Sat, 21 Jul 2018 09:56:44 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653c8ca5b6c72a72357d80f64e5aa86d716756f9c6e38c519a4c4a1368183f8f`  
		Last Modified: Sat, 21 Jul 2018 09:57:41 GMT  
		Size: 530.4 MB (530448518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c6bfbdb796413bbf8f85d2bfd0dc191585370add91f587d7bd644681988f7d`  
		Last Modified: Sat, 21 Jul 2018 09:56:44 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937489ca712e634a876233084d40fdeafa37b1985280242c025eb07f39cfea5d`  
		Last Modified: Sat, 21 Jul 2018 09:56:44 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f776d762f8be89ac94007fa1f13c1c64835cb3dc8d5d80c5e314a463eeffae1`  
		Last Modified: Sat, 21 Jul 2018 09:56:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
