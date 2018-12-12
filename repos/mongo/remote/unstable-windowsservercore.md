## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:0fd14fbe9aea4b6cde6a194ec9573454b184ee49028b0c7c2297e353653d7f7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64
	-	windows version 10.0.16299.726; amd64
	-	windows version 10.0.17134.345; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.2608; amd64

```console
$ docker pull mongo@sha256:03dba056593d3562085ff750b21bfbddf613637b3b910c6927226d759515b3ed
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5708186811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206cd6f8e8efc802fd61968f1e02e2c2c9431818c21036e833ef76d2c448ce5b`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Fri, 16 Nov 2018 10:18:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 08 Dec 2018 10:23:56 GMT
ENV MONGO_VERSION=4.1.6
# Sat, 08 Dec 2018 10:23:57 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.6-signed.msi
# Sat, 08 Dec 2018 10:23:58 GMT
ENV MONGO_DOWNLOAD_SHA256=c777df7816bb8c9a760fdea782113949408b6f39d72be29a2551fa51e2fe0473
# Sat, 08 Dec 2018 10:33:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Sat, 08 Dec 2018 10:33:11 GMT
VOLUME [C:\data\db C:\data\configdb]
# Sat, 08 Dec 2018 10:33:13 GMT
EXPOSE 27017/tcp
# Sat, 08 Dec 2018 10:33:14 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:98274472ded852f1c63cfe7f1681a3e9892974dd7ed3c00b605c71328b2d018f`  
		Last Modified: Fri, 16 Nov 2018 11:40:14 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c0335b1aa4071b42154c61bf9a01a8c8d14d6288cc8fad4953f2771aaa8f91`  
		Last Modified: Sat, 08 Dec 2018 11:16:36 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cd3db27fdacebf5313e88a1c6812caadbe6e35a936400d4f9c395ee19a170`  
		Last Modified: Sat, 08 Dec 2018 11:16:36 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f2d249b0cd9b8bf73f0758aaeada15071becfbc8f7f0f75239dad338faf155`  
		Last Modified: Sat, 08 Dec 2018 11:16:34 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1db4fa87311c4e394e9e198b6d4540b3bdbc9e7f02ff79163ff352cb6289ac`  
		Last Modified: Sat, 08 Dec 2018 11:16:51 GMT  
		Size: 74.3 MB (74257444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8852f36d442bb482fa8aaca224d6b5b99becf2609d4ea33c86f01f5373b3b01b`  
		Last Modified: Sat, 08 Dec 2018 11:16:34 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377c4afbee448492e17502e20e9cc194cbe242cc67da7ac2bb91151728e5d26d`  
		Last Modified: Sat, 08 Dec 2018 11:16:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ddaac3bbcd34d5d7d167fa584215451af5e6edcee4b3b06140603d21c86035`  
		Last Modified: Sat, 08 Dec 2018 11:16:34 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-windowsservercore` - windows version 10.0.16299.726; amd64

```console
$ docker pull mongo@sha256:1e4257efba9cf6f25b58902449dbd31fdac5480c98b6bd254945f175af347e1b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3709133258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d66f0ed63b8bae44234ebcc2460356ae6ae83374d05c4582e4747a0636cbbd54`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 01 Oct 2018 22:02:14 GMT
RUN Install update 10.0.16299.726
# Tue, 16 Oct 2018 10:03:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 08 Dec 2018 10:33:25 GMT
ENV MONGO_VERSION=4.1.6
# Sat, 08 Dec 2018 10:33:26 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.6-signed.msi
# Sat, 08 Dec 2018 10:33:27 GMT
ENV MONGO_DOWNLOAD_SHA256=c777df7816bb8c9a760fdea782113949408b6f39d72be29a2551fa51e2fe0473
# Sat, 08 Dec 2018 10:54:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Sat, 08 Dec 2018 10:54:11 GMT
VOLUME [C:\data\db C:\data\configdb]
# Sat, 08 Dec 2018 10:54:13 GMT
EXPOSE 27017/tcp
# Sat, 08 Dec 2018 10:54:15 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
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
	-	`sha256:36c1940212a4b176ab76af13c483cd57e8025906a48c5f731454a63d01ba5a49`  
		Last Modified: Sat, 08 Dec 2018 11:17:11 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ed2e1694af03ad66a375df3c3a6b9c15f33c11e53415a1124d1203f6dcb294`  
		Last Modified: Sat, 08 Dec 2018 11:17:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9248e4ef197cfbf4008b0cb3f37089430c5756b0702f1f1cd39d7730e901c2`  
		Last Modified: Sat, 08 Dec 2018 11:17:09 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0647c010e57ec5e97c51f4411168a8473df35df3f95919107fc46723df317d1`  
		Last Modified: Sat, 08 Dec 2018 11:18:17 GMT  
		Size: 568.4 MB (568366109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc212d0e9d16ecbc3937c9bd40f7535e3f4e7dc64a44f64e2f198940186312c`  
		Last Modified: Sat, 08 Dec 2018 11:17:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8e222a683241db55771b8781eddf5a62ca4826987733cde7557bab77a4549d`  
		Last Modified: Sat, 08 Dec 2018 11:17:09 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53bd5055a46b2adde23e9a46664c5dcac37c95d2edede0d73ea05d94bad40dd`  
		Last Modified: Sat, 08 Dec 2018 11:17:09 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-windowsservercore` - windows version 10.0.17134.345; amd64

```console
$ docker pull mongo@sha256:f688c52777d4e9971a6dc2b84fef615866d6dcb4ad884b7653fca18cea9011bd
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2779737663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec7d72966a770523403b925aee05acabbddd0bed8bdf29adc4ce3e53c1d6f4f`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 01 Oct 2018 21:32:36 GMT
RUN Install update 10.0.17134.345
# Tue, 16 Oct 2018 10:23:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 08 Dec 2018 10:54:29 GMT
ENV MONGO_VERSION=4.1.6
# Sat, 08 Dec 2018 10:54:30 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.6-signed.msi
# Sat, 08 Dec 2018 10:54:31 GMT
ENV MONGO_DOWNLOAD_SHA256=c777df7816bb8c9a760fdea782113949408b6f39d72be29a2551fa51e2fe0473
# Sat, 08 Dec 2018 11:14:53 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Sat, 08 Dec 2018 11:14:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Sat, 08 Dec 2018 11:14:57 GMT
EXPOSE 27017/tcp
# Sat, 08 Dec 2018 11:14:58 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:eba07b94d5f77aa900bf02c4247fc580222254782681cc3c74a7cf9566e8890a`  
		Size: 570.0 MB (570044587 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:20fe9f55ed528e30fbf4e5f7bec4130d40fc43576c556b10fe710c78e0d8ab2b`  
		Last Modified: Tue, 16 Oct 2018 10:58:11 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e76fa645c8964a2990d87059cb965ced470157f3d48daffaa9f3e82ffd1f904`  
		Last Modified: Sat, 08 Dec 2018 11:18:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b45b52c0505e82ee57beb9e98ca7c21a6c42d7c8dded7c84644944dfbc6a9a`  
		Last Modified: Sat, 08 Dec 2018 11:18:52 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e31c0de9b3a097fe2d2d90895422f45fbaed1b16c6ef2c95900f12bbc3b984e`  
		Last Modified: Sat, 08 Dec 2018 11:18:50 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63d67e8f52084d531addbb73b48cd1de7c209552b591c85dd8ad4e55e06dd93`  
		Last Modified: Sat, 08 Dec 2018 11:19:52 GMT  
		Size: 550.0 MB (549996439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658ca55ea02ad173114e1e67f4be2e5fbe43585e0dc0ff8b87a70926da9f1f54`  
		Last Modified: Sat, 08 Dec 2018 11:18:51 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f40769c150b97f68c22261591f11d0b5b6576c18553fe1ad17803b6bcbb629`  
		Last Modified: Sat, 08 Dec 2018 11:18:50 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ba8f623232211bd6667a2e15c2dc6b2f0abc643c727c43c01e2f82df798ec5`  
		Last Modified: Sat, 08 Dec 2018 11:18:50 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
