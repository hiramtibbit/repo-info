## `mongo:4-windowsservercore-1803`

```console
$ docker pull mongo@sha256:5e5cb5929931ad872484812ae49592f22310fb737ca05f69fa1839af7aca8520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.407; amd64

### `mongo:4-windowsservercore-1803` - windows version 10.0.17134.407; amd64

```console
$ docker pull mongo@sha256:6e8ab4a5ce94f8f1ac30146abc33b2a8dd4e0209e84075448a505c511477a3e6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2298570753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ea8571da671c11987170213b66e8be0545a135052197f44024220ead4e46986`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Fri, 16 Nov 2018 10:42:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 16 Nov 2018 10:43:00 GMT
ENV MONGO_VERSION=4.0.4
# Fri, 16 Nov 2018 10:43:01 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.4-signed.msi
# Fri, 16 Nov 2018 10:43:02 GMT
ENV MONGO_DOWNLOAD_SHA256=7d5b1f3a655cf2fe9864554699ffd6d7db616889fd211b4f0951d185e8395659
# Fri, 16 Nov 2018 10:46:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 16 Nov 2018 10:46:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 16 Nov 2018 10:46:18 GMT
EXPOSE 27017/tcp
# Fri, 16 Nov 2018 10:46:19 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:201e58c127c9e97481e0ddedc4db617af2c30dd9454b61920f571533baef1020`  
		Last Modified: Fri, 16 Nov 2018 11:44:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee92257e42b4d8445f4160a94338b4108e44c586a4bbcf92392cf037f4427398`  
		Last Modified: Fri, 16 Nov 2018 11:44:21 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba4a0c5f78fea929918d47fb0058ada23700ff265d49434c3888e4158fac4a5`  
		Last Modified: Fri, 16 Nov 2018 11:44:21 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691c6545f6af20e7193af1873375242706ea9d3e8f201511337b13c58bb455db`  
		Last Modified: Fri, 16 Nov 2018 11:44:19 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c3da4682229b83f5a8aa528db054dac641e524554152f02072f21359a2d263`  
		Last Modified: Fri, 16 Nov 2018 11:44:33 GMT  
		Size: 58.5 MB (58483486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27390b91c1a4352e3874a78f6cc3233ea93e27dd5aacf00174d476dd6efe56d8`  
		Last Modified: Fri, 16 Nov 2018 11:44:19 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc7f13c8777145adb9a7a99eb83e6b905599d7815aa84854d2ccf32260342c3`  
		Last Modified: Fri, 16 Nov 2018 11:44:19 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ee5a90635f738d0ed4af76f6675a0f2bb7c8b0a33c16215adeeb6b1013b491`  
		Last Modified: Fri, 16 Nov 2018 11:44:19 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
