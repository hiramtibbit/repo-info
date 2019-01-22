## `mongo:4-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:976ca54e1d004472e532a46b700ec3780199a3b53bfc39582d0438a8f48d8079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `mongo:4-windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull mongo@sha256:5a8f8c2fe7eeb6d29fb24b5248102d070f35f924c3b6d8e864ed9227b42d6340
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5710236760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0b0d633dc4a918622a22579704fe94904fd8194cf29b5d936d012ae1380096`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Tue, 22 Jan 2019 11:49:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 22 Jan 2019 12:22:48 GMT
ENV MONGO_VERSION=4.0.5
# Tue, 22 Jan 2019 12:22:49 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.5-signed.msi
# Tue, 22 Jan 2019 12:22:50 GMT
ENV MONGO_DOWNLOAD_SHA256=e2ac83cfee3350012a641405ce5ba5c3cffe3f8d1a0cd5e0eb3e332246a9cc20
# Tue, 22 Jan 2019 12:27:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 22 Jan 2019 12:27:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 22 Jan 2019 12:27:07 GMT
EXPOSE 27017
# Tue, 22 Jan 2019 12:27:08 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:17b027d2e81dbd6d79eaa15e958f3abf591a89252f9711b74b706f4f7a4520d5`  
		Last Modified: Tue, 22 Jan 2019 13:31:37 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5164302b5f813642308cc01b6581fe5d8ac7df48af093aad2c7da7feccf7ecaa`  
		Last Modified: Tue, 22 Jan 2019 13:38:19 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bed35cdf338b3bd281327a9b04d8bb8e3d8d1c0e24bc437e6dd02d905f25be`  
		Last Modified: Tue, 22 Jan 2019 13:38:19 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f605a1ce17fdd47370da5b9604e59d8eb20800ff7ae96ee191cb71491bc37c`  
		Last Modified: Tue, 22 Jan 2019 13:38:17 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0956a4ab0b2c7ce8c22069ff542c160bf1ed1bb7a4250dc065d74805f6a4b34`  
		Last Modified: Tue, 22 Jan 2019 13:38:34 GMT  
		Size: 74.4 MB (74412208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7079b2724c963f0b2a6c584cdad9b8ff210d87550596bd7601c19dd4825c089b`  
		Last Modified: Tue, 22 Jan 2019 13:38:17 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d373969468427bde19fe13ca2cb5a9b98b81ecf8e3816e5d79d609ef4813f34b`  
		Last Modified: Tue, 22 Jan 2019 13:38:17 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1edc0c2b9afc623286f05c0b3c026ce0e981bd53975b55fb9673d06e80f7025c`  
		Last Modified: Tue, 22 Jan 2019 13:38:17 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
