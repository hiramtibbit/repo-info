## `mongo:4-windowsservercore`

```console
$ docker pull mongo@sha256:10359376dfdbabf177adb70e00f540cc71ce33e2b330d87fc9b465e3b7addb0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64
	-	windows version 10.0.16299.726; amd64
	-	windows version 10.0.17134.345; amd64

### `mongo:4-windowsservercore` - windows version 10.0.14393.2551; amd64

```console
$ docker pull mongo@sha256:4e0a147d8192dcdc75f6f2ed55eb5b1a30c3b005562cd5d91bed9313701c7649
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5660699619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0f21b5787807ae1c89c1db7bdf7284d3246722f26d1c0dc4bb1027f5aa3dc0`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Tue, 16 Oct 2018 09:16:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 16 Oct 2018 10:16:18 GMT
ENV MONGO_VERSION=4.0.3
# Tue, 16 Oct 2018 10:16:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.3-signed.msi
# Tue, 16 Oct 2018 10:16:20 GMT
ENV MONGO_DOWNLOAD_SHA256=0e53cfd224d27862c286b765b85d769b39e3518b2dc2704ff87bd8a565ea9b7f
# Tue, 16 Oct 2018 10:19:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 16 Oct 2018 10:20:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 16 Oct 2018 10:20:01 GMT
EXPOSE 27017/tcp
# Tue, 16 Oct 2018 10:20:03 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:50ca338b1fa6c515ebe15efbf13da80d877db4a53da56b2b6e52e3da6426cc63`  
		Last Modified: Tue, 16 Oct 2018 09:55:02 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925e4ed10a667c6bdfd9f2bcd9b0cd880598a6b2c11b4ac45c4dae257ef0a4ed`  
		Last Modified: Tue, 16 Oct 2018 10:57:03 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5a0ce711b440f323da0c12225194746f87662482080535f616bc3cb1067796`  
		Last Modified: Tue, 16 Oct 2018 10:57:03 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31faea778c0733d90a1a3f805b338cc990f6a8c42e1f61e57b7dfd995bc21ce3`  
		Last Modified: Tue, 16 Oct 2018 10:57:00 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ceb490c8bec160a71fbc44752167859af6b26debef8120009859d1ace283347`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 63.6 MB (63580328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d6dcc06000c446351795446c1d5c1a10120d340261facd3d84da057f6b6415`  
		Last Modified: Tue, 16 Oct 2018 10:57:00 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02908f47b1046c2fcf7cdaddac11dc5d0b0aff85cbf4bf101cb1a3a35854fd2`  
		Last Modified: Tue, 16 Oct 2018 10:57:00 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d95fb6d63c81dbb416e0381779450696135bea43acdaa4f0220603eadaa05f`  
		Last Modified: Tue, 16 Oct 2018 10:57:00 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4-windowsservercore` - windows version 10.0.16299.726; amd64

```console
$ docker pull mongo@sha256:2e82fe4ac49b920151b20f4b89663dd53bf8ff699b6ce4a45b2f14b669daa85e
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3199285874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d8b2ef64b3d170133c67e023ab7fdc6fc1bbcf762bbbf2f43d9ce7b2aa3356`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 01 Oct 2018 22:02:14 GMT
RUN Install update 10.0.16299.726
# Tue, 16 Oct 2018 10:03:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 16 Oct 2018 10:20:08 GMT
ENV MONGO_VERSION=4.0.3
# Tue, 16 Oct 2018 10:20:09 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.3-signed.msi
# Tue, 16 Oct 2018 10:20:10 GMT
ENV MONGO_DOWNLOAD_SHA256=0e53cfd224d27862c286b765b85d769b39e3518b2dc2704ff87bd8a565ea9b7f
# Tue, 16 Oct 2018 10:23:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 16 Oct 2018 10:23:08 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 16 Oct 2018 10:23:10 GMT
EXPOSE 27017/tcp
# Tue, 16 Oct 2018 10:23:11 GMT
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
	-	`sha256:ff0590a880dc634ec69df915d3b2c8daddf3a49c3f0597e31ff97a73b94fe70f`  
		Last Modified: Tue, 16 Oct 2018 10:57:38 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f985c4b8ec218b09300a7b87d15948d3c3a1f9c979355a16169ea8a0a5d919`  
		Last Modified: Tue, 16 Oct 2018 10:57:38 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02db470f5e7bc4cefc5a921c5b02ea6c90825ff99e04489f7d839117e3b8951`  
		Last Modified: Tue, 16 Oct 2018 10:57:36 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6610a048b822026f47fb84cec749c641ca09793e90b42ab09dbeea117e501c50`  
		Last Modified: Tue, 16 Oct 2018 10:57:50 GMT  
		Size: 58.5 MB (58518715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9839fc0d3a607d7661a3122ba8363fcd9b84d79ac75ca158c755197036738412`  
		Last Modified: Tue, 16 Oct 2018 10:57:36 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a4a3d2ccf4db762aeb65996dc33ba0597e03f8b20397b3928501b449cb8cb1`  
		Last Modified: Tue, 16 Oct 2018 10:57:36 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a34dde3357b956bdb16d73de462bda6ecac41a932663122af13771465fedb52`  
		Last Modified: Tue, 16 Oct 2018 10:57:36 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4-windowsservercore` - windows version 10.0.17134.345; amd64

```console
$ docker pull mongo@sha256:3dc72963c3e68a4792584529a5a4b5ec10861efed86d3dfc9cb53a195b3d59dd
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2288171826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f29661c8fda07cde7e91d3cd90aac212e7c8b150c6364bf7dcad85b3066fbe`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 01 Oct 2018 21:32:36 GMT
RUN Install update 10.0.17134.345
# Tue, 16 Oct 2018 10:23:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 16 Oct 2018 10:23:17 GMT
ENV MONGO_VERSION=4.0.3
# Tue, 16 Oct 2018 10:23:18 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.3-signed.msi
# Tue, 16 Oct 2018 10:23:19 GMT
ENV MONGO_DOWNLOAD_SHA256=0e53cfd224d27862c286b765b85d769b39e3518b2dc2704ff87bd8a565ea9b7f
# Tue, 16 Oct 2018 10:26:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 16 Oct 2018 10:26:26 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 16 Oct 2018 10:26:27 GMT
EXPOSE 27017/tcp
# Tue, 16 Oct 2018 10:26:28 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:eba07b94d5f77aa900bf02c4247fc580222254782681cc3c74a7cf9566e8890a`  
		Last Modified: Mon, 08 Oct 2018 19:44:48 GMT  
		Size: 570.0 MB (570044587 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:20fe9f55ed528e30fbf4e5f7bec4130d40fc43576c556b10fe710c78e0d8ab2b`  
		Last Modified: Tue, 16 Oct 2018 10:58:11 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6169bb272175bf6cc45104c2698b12867c5ce0e1651c6ad86600cf851d9f7e`  
		Last Modified: Tue, 16 Oct 2018 10:58:11 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6a39aa9d201a61e2b8163670c5e2f7da925dfda8352ac8b2e144587ed0e414`  
		Last Modified: Tue, 16 Oct 2018 10:58:12 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05caa9554a3a1e41491f194b69dcbd5f3bd46707374041adf819f90a73eee7f`  
		Last Modified: Tue, 16 Oct 2018 10:58:09 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29184166a6ae14c5cd74dd6f5dcc563fed2e90b2b67be2df6239274bf8a830dc`  
		Last Modified: Tue, 16 Oct 2018 10:58:23 GMT  
		Size: 58.4 MB (58430628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950d8b88bc08f424ac1ac5370cb3568b9fb79dcd761ceee68239f440acb2d7f6`  
		Last Modified: Tue, 16 Oct 2018 10:58:09 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a4959345edbf8dfdc455fb459606b007f06db80806532f02fe8971c4359b0a`  
		Last Modified: Tue, 16 Oct 2018 10:58:09 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7978c1bd33fd210791e43774f157d8dd8520937a7684dd9385de7c9360b0c3`  
		Last Modified: Tue, 16 Oct 2018 10:58:09 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
