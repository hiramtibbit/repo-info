## `mongo:3-windowsservercore-1709`

```console
$ docker pull mongo@sha256:af77e02da0c3ecc5f263087e065e3bb1dd6ce523b1dfd7e63075ebf1af76d8ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.1029; amd64

### `mongo:3-windowsservercore-1709` - windows version 10.0.16299.1029; amd64

```console
$ docker pull mongo@sha256:f5e4e0a4312fa3cc3d72dde7d5ac5617aae7b480a3cc1daa56908108849e8125
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3680511876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8352aa6dd530a024139e33b3514be51c89edecfde9934ad0e5dc3baf3d836ce5`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Fri, 15 Mar 2019 09:46:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 06 Apr 2019 09:28:07 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 06 Apr 2019 09:28:09 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Sat, 06 Apr 2019 09:28:10 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Sat, 06 Apr 2019 09:45:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Sat, 06 Apr 2019 09:45:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Sat, 06 Apr 2019 09:45:34 GMT
EXPOSE 27017
# Sat, 06 Apr 2019 09:45:35 GMT
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
	-	`sha256:8007fe689031ccee225bbf8ce8ed9c5673d2304ff4d483962253db2b071aabe5`  
		Last Modified: Sat, 06 Apr 2019 09:47:49 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468eee0d0516bd8fd2447c7bd796c5739802a5cb9cde02da713204cadd762b6`  
		Last Modified: Sat, 06 Apr 2019 09:47:49 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6dea2157fc24967df893b2c94e6be51126b96138fcb95c9659d7b2a4118939a`  
		Last Modified: Sat, 06 Apr 2019 09:47:47 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116f9a8fe62798c2f7f869c4df42b0129f74eaf18c12a1536b5d09b1aa3319dc`  
		Last Modified: Sat, 06 Apr 2019 09:50:33 GMT  
		Size: 469.7 MB (469651732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6504dedd20d26cbd245925bd6611d9ad5bdc35b04d8dac348a73ac880996731a`  
		Last Modified: Sat, 06 Apr 2019 09:47:47 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9499b243626ef5ffea77d63a5b1d4c16f346d931b0f4f5e14f2b935935a40a7f`  
		Last Modified: Sat, 06 Apr 2019 09:47:47 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3330e5242540affe4da504a5baa7246dac0fb1ee265e16a73fcc259a68c26e`  
		Last Modified: Sat, 06 Apr 2019 09:47:47 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
