## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:a5e932f3d337d01acda5578e1ef4a6fd2b5406d2ec70f3ae671f29d47bd538b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2848; amd64
	-	windows version 10.0.16299.1029; amd64
	-	windows version 10.0.17134.648; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.2848; amd64

```console
$ docker pull mongo@sha256:1c3d3322f0e35d3a30b77a5bf88304f857a0840b3b3c9006f06c2925720045e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5729053939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40975317c2ce78ef1fe1803cc559dc27490f1a20ecb38790f390cf6ad396184b`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Mar 2019 20:57:18 GMT
RUN Install update 10.0.14393.2848
# Fri, 15 Mar 2019 09:43:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Mar 2019 10:40:22 GMT
ENV MONGO_VERSION=4.1.8
# Fri, 15 Mar 2019 10:40:23 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.8-signed.msi
# Fri, 15 Mar 2019 10:40:24 GMT
ENV MONGO_DOWNLOAD_SHA256=b0de0cc0e3b1af73435e4b11a61776af4ee178339abdd2d31674d14ab7f1bbc0
# Fri, 15 Mar 2019 10:44:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Mar 2019 10:44:07 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Mar 2019 10:44:09 GMT
EXPOSE 27017
# Fri, 15 Mar 2019 10:44:11 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e0718b11f51220dd85c47a1d225be81c5ba343fbb45f9b43fe3d762c0a20300a`  
		Last Modified: Mon, 11 Mar 2019 20:57:18 GMT  
		Size: 1.6 GB (1569132556 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bd9434e109d6b126a4267e7a896a255b46d8aea977aa40868a6927bbcb9b4a2e`  
		Last Modified: Fri, 15 Mar 2019 10:52:51 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646ba65b80df51c5d1dcfab3e35c1d061a6eb8cb8cf8f36d626f5066970b7367`  
		Last Modified: Fri, 15 Mar 2019 11:03:29 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf30a81a7fc80d8cbeffc452cf1c3b57c50e2c2a557bb887352539b98d98209`  
		Last Modified: Fri, 15 Mar 2019 11:03:29 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1218e61f8ceb9e55bff65f64d58228edf27d24cd7855b39c6f691236d80902dc`  
		Last Modified: Fri, 15 Mar 2019 11:03:27 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3dea7d39a137e3fc870aa8baac60a87ae7edb8ae0562b871ef9021ee4bba0f`  
		Last Modified: Fri, 15 Mar 2019 11:04:05 GMT  
		Size: 89.9 MB (89927013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7646e13c32bdb1fec6b49d6fe143ba8ae21f26cfadc6a502492f3c4460143eae`  
		Last Modified: Fri, 15 Mar 2019 11:03:27 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279131bc5d93b8d5a4d9b7b78b83e574a6b41fa8e8933a9d452b4511f1c13a5c`  
		Last Modified: Fri, 15 Mar 2019 11:03:27 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0d353a7510d8348f2295dbdf542f95e9809d5e02fabc2af625326d54d1bc08`  
		Last Modified: Fri, 15 Mar 2019 11:03:27 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-windowsservercore` - windows version 10.0.16299.1029; amd64

```console
$ docker pull mongo@sha256:969ce07b148bdd62e55c40c5e2fa0bb390426468809ba589dda26f043af78c24
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3295683409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87cd71b9f6aee63569e844d2dbcdc0ac573e5520bda1b312767064199c4411b`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Fri, 15 Mar 2019 09:46:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Mar 2019 10:44:20 GMT
ENV MONGO_VERSION=4.1.8
# Fri, 15 Mar 2019 10:44:21 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.8-signed.msi
# Fri, 15 Mar 2019 10:44:22 GMT
ENV MONGO_DOWNLOAD_SHA256=b0de0cc0e3b1af73435e4b11a61776af4ee178339abdd2d31674d14ab7f1bbc0
# Fri, 15 Mar 2019 10:48:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Mar 2019 10:48:06 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Mar 2019 10:48:08 GMT
EXPOSE 27017
# Fri, 15 Mar 2019 10:48:10 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7f4a716683dc03db3521ed040924c24ea9bd17c7f134c09bf22e33f6af33ade8`  
		Last Modified: Mon, 11 Mar 2019 21:13:17 GMT  
		Size: 936.6 MB (936551125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b217250878f40ff58563b56494c3225f606f7bde90c1be1e82385924187428f2`  
		Last Modified: Fri, 15 Mar 2019 10:53:26 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858acf7445626e91cdc30b45e8ebc914cb225681392fbf2f97f7cb3eeb43ca13`  
		Last Modified: Fri, 15 Mar 2019 11:04:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e62e42cb09b00a3166bdc2d39370ca89bc613c49c8cd4c75427f75d1456086`  
		Last Modified: Fri, 15 Mar 2019 11:04:22 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ac3521eab79573ccd986e6ac3530ea4b0e6f292831fd30795a2a810dc39dfa`  
		Last Modified: Fri, 15 Mar 2019 11:04:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494eb4ba0307045eecbff0de3d1c18cd816a4839d7edcefc9d205b68f68a26a8`  
		Last Modified: Fri, 15 Mar 2019 11:04:46 GMT  
		Size: 84.8 MB (84823257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdedc19f3633f2bc28d2e1972ab2eba21c745531cde8217e33e1227e8480703`  
		Last Modified: Fri, 15 Mar 2019 11:04:21 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d185e7e2dc7839ea420af948fa28de0345da5f9e1de2660b88296283934e7654`  
		Last Modified: Fri, 15 Mar 2019 11:04:20 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7722ac83d974ee896d7d17f4f459290434599396c41e059167d7f8972a136adc`  
		Last Modified: Fri, 15 Mar 2019 11:04:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-windowsservercore` - windows version 10.0.17134.648; amd64

```console
$ docker pull mongo@sha256:417c412fe990ee3b60066efb030b797781819edb156d75592087d4f5ef41bb0a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2337765830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eba5063da5cb7dee3023d536773c6655efd229db40ac08dd67d8a806715a762`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 08 Mar 2019 23:20:01 GMT
RUN Install update 10.0.17134.648
# Fri, 15 Mar 2019 10:36:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Mar 2019 10:48:18 GMT
ENV MONGO_VERSION=4.1.8
# Fri, 15 Mar 2019 10:48:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.8-signed.msi
# Fri, 15 Mar 2019 10:48:20 GMT
ENV MONGO_DOWNLOAD_SHA256=b0de0cc0e3b1af73435e4b11a61776af4ee178339abdd2d31674d14ab7f1bbc0
# Fri, 15 Mar 2019 10:51:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Mar 2019 10:51:42 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Mar 2019 10:51:44 GMT
EXPOSE 27017
# Fri, 15 Mar 2019 10:51:45 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be86bca8de59067e592a8becc2e83ed2465a6d9bce324043e434aa4a15493b00`  
		Last Modified: Mon, 11 Mar 2019 21:17:02 GMT  
		Size: 593.3 MB (593288046 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82981f58be95926db2383949a2f5a368e6a47da5ecef767833272099e4524a63`  
		Last Modified: Fri, 15 Mar 2019 11:02:36 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1c25d9d1ff9ed5803df40101a26eb53167b0634ff51fc1a7bdd0e80b6b249b`  
		Last Modified: Fri, 15 Mar 2019 11:05:09 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d1506f1f3735176b3ff4e37a1b3189f23054e0487f5b84bd65793e83e7f359`  
		Last Modified: Fri, 15 Mar 2019 11:05:09 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad837bf6ec8fc80d1771f388a97f018cac5aacb185c61cf88f88787fe50291a`  
		Last Modified: Fri, 15 Mar 2019 11:05:06 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1e02462b185350b2def9a92bd1cfbd3af6043b100b2a5306ff711a6229473d`  
		Last Modified: Fri, 15 Mar 2019 11:05:26 GMT  
		Size: 84.8 MB (84781086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4af4f87871e0e2d7f8189ba30fd1288681a14815425024e6c734a071d4addf9`  
		Last Modified: Fri, 15 Mar 2019 11:05:06 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40ef5a224503ce41f00ba7ffd8a6d4971a47bcbead7591a72820cb296746159`  
		Last Modified: Fri, 15 Mar 2019 11:05:06 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade1f0f637df62e8a96cdc9e07c705aa95f1224bd8d476b49a6c0ae169d31401`  
		Last Modified: Fri, 15 Mar 2019 11:05:07 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
