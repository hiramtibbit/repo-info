## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:0ea180ca35a0e5be93efdc628f761c3922dfaa75048baa7e03d9eb5381cc42b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64
	-	windows version 10.0.16299.547; amd64
	-	windows version 10.0.17134.165; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.2363; amd64

```console
$ docker pull mongo@sha256:73a7fe37c542b1d9720976c346e535f9a5571a8cc3e24bc90256daf04de35e74
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5553526993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b63887f8b03bb21faebc92127e3342f82468c17ba2b042e3cd5307720a6e329`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:33 GMT
RUN Install update 10.0.14393.2363
# Tue, 17 Jul 2018 09:16:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 19 Jul 2018 16:35:39 GMT
ENV MONGO_VERSION=4.1.1
# Thu, 19 Jul 2018 16:35:40 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.1-signed.msi
# Thu, 19 Jul 2018 16:35:41 GMT
ENV MONGO_DOWNLOAD_SHA256=ff14a5e670543a966500d562195dcdd9738b3dd76cb0122b4b3648215e6cf47d
# Thu, 19 Jul 2018 16:45:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 19 Jul 2018 16:45:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 19 Jul 2018 16:45:20 GMT
EXPOSE 27017/tcp
# Thu, 19 Jul 2018 16:45:22 GMT
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
	-	`sha256:e244861375e1d32a097d21c71f641ba400ef8eac815314472d1d0fed6afcdfc4`  
		Last Modified: Sat, 21 Jul 2018 09:58:21 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724ffa6899d0d9bec5572d38f2f98ac267abe390e89130fac43c522a34636dd2`  
		Last Modified: Sat, 21 Jul 2018 09:58:20 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f70f68953085458b0108b6bd8db961ec1b10916db99acaf72093d568621bd82`  
		Last Modified: Sat, 21 Jul 2018 09:58:18 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e985889d45b448771f228f92f5261ccfc509a45cd8a3e27b18cb779d203121fe`  
		Last Modified: Sat, 21 Jul 2018 09:58:32 GMT  
		Size: 64.2 MB (64234422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fdbf7b82bf30f2c941ee3f47f921e76ac3c4f52d3fef5a02024b61ad0b1ebd2`  
		Last Modified: Sat, 21 Jul 2018 09:58:18 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa0f23f982a601e55d62842ebc8a7d58ca602c1bd3a9329879f05faae32c4f`  
		Last Modified: Sat, 21 Jul 2018 09:58:18 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208eac53be2f718ce539f85619002e8a916fc090e7ab89529728110fc90bf5da`  
		Last Modified: Sat, 21 Jul 2018 09:58:18 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-windowsservercore` - windows version 10.0.16299.547; amd64

```console
$ docker pull mongo@sha256:ce853241ca5d29ad9ed15bf7bdae70056fe3abc4cf817693258e8cd4404860b8
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 GB (3636487991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8399013c8d4aa6a60f5938d84ea66a091f0e0640aed200bc6821e4cd193818e9`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Jul 2018 18:10:50 GMT
RUN Install update 10.0.16299.547
# Thu, 19 Jul 2018 14:48:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 19 Jul 2018 16:17:23 GMT
ENV MONGO_VERSION=4.1.1
# Thu, 19 Jul 2018 16:17:24 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.1-signed.msi
# Thu, 19 Jul 2018 16:17:25 GMT
ENV MONGO_DOWNLOAD_SHA256=ff14a5e670543a966500d562195dcdd9738b3dd76cb0122b4b3648215e6cf47d
# Thu, 19 Jul 2018 16:35:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 19 Jul 2018 16:35:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 19 Jul 2018 16:35:34 GMT
EXPOSE 27017/tcp
# Thu, 19 Jul 2018 16:35:35 GMT
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
	-	`sha256:0bf81ab9252e0a0bc98df5bc0ded356345b808d4a9acd97d5f20da4ddb0fb7d3`  
		Last Modified: Sat, 21 Jul 2018 09:58:49 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c3ff94971a0df59cb2232e7be67a98e3f5f53cfec66f71c6936a98f4b63057`  
		Last Modified: Sat, 21 Jul 2018 09:58:49 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ff760f42215fa6b2105b06bc5ed3bd04d729c7094bbda23ef0a8908d0ec0c7`  
		Last Modified: Sat, 21 Jul 2018 09:58:47 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a2f95d16f0209486cf289360986ef83fa50e8c543a97ba30f6a645d0186c38`  
		Last Modified: Sat, 21 Jul 2018 09:59:46 GMT  
		Size: 531.1 MB (531059519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1146efcc8927f5854bdc5fceaa7885054c68e379e78f146d7fe2e9f810ee9d46`  
		Last Modified: Sat, 21 Jul 2018 09:58:47 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5616dbc3cadf8f9b36a1c30e13da6bb3f9fb251e41914c24c49ce53e16665f4`  
		Last Modified: Sat, 21 Jul 2018 09:58:47 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6111e011064a95d5c86d13046517fb8019d9aa19e76c2489242625bb0c3f04`  
		Last Modified: Sat, 21 Jul 2018 09:58:47 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-windowsservercore` - windows version 10.0.17134.165; amd64

```console
$ docker pull mongo@sha256:752370b41b3f2aa7a00c3a182020f936eda1623425caf6a0830e9fcea137f17f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2683457150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92472d373c617255fa0920fc222842af0246ecf01954c9ef1df89106b2983ab2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sat, 07 Jul 2018 22:48:41 GMT
RUN Install update 10.0.17134.165
# Tue, 17 Jul 2018 20:48:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 17 Jul 2018 20:48:01 GMT
ENV MONGO_VERSION=4.1.1
# Tue, 17 Jul 2018 20:48:02 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.1-signed.msi
# Tue, 17 Jul 2018 20:48:03 GMT
ENV MONGO_DOWNLOAD_SHA256=ff14a5e670543a966500d562195dcdd9738b3dd76cb0122b4b3648215e6cf47d
# Tue, 17 Jul 2018 21:02:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 17 Jul 2018 21:02:45 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 17 Jul 2018 21:02:48 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 21:02:49 GMT
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
	-	`sha256:225f5baa4bea3646d6eb92581981516f830ce95ed09dd27b404f9d06076a742e`  
		Last Modified: Sat, 21 Jul 2018 10:00:13 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22330611b43dd8c7d64953fb0ef4ce8d4c612d0d18a7f0e5ccfed4e02cfd4c73`  
		Last Modified: Sat, 21 Jul 2018 10:00:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed0e0e9d1547ee53f65c41888a0ba896c9771a95866bfb9437ea85087f144cc`  
		Last Modified: Sat, 21 Jul 2018 10:00:10 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8cb21a7cd20bcf7acb906264e448c9ff3b7abb4a031f34b8015dbb1ddd8d594`  
		Last Modified: Sat, 21 Jul 2018 10:01:08 GMT  
		Size: 530.2 MB (530239288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f141d03c57f485de0d016024f3ab1855ba51835c5811d4487353c2a5a127f5be`  
		Last Modified: Sat, 21 Jul 2018 10:00:11 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7fe94ab99e315642a5f16ab83c1489bb0125ac4fcb47224de17683f0f7a771`  
		Last Modified: Sat, 21 Jul 2018 10:00:10 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0806f892642c07ecaef8c0cc7af5eec5cd5a5a9ad6fd6bf006784a86c15eaa1e`  
		Last Modified: Sat, 21 Jul 2018 10:00:10 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
