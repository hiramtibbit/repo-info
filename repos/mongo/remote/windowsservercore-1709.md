## `mongo:windowsservercore-1709`

```console
$ docker pull mongo@sha256:4c4d16db8fa31619b15435096cccfea0754a7986da75a97bb9f443a45440aa42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.785; amd64

### `mongo:windowsservercore-1709` - windows version 10.0.16299.785; amd64

```console
$ docker pull mongo@sha256:fa0d700bcdbdbead1e9f981121fe4d0c89417fb62e275c8518cb560936edf253
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3204560653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5742159352ac4b15e4fd161cc2a1dbb3ceb4365a3c510685f620751524890f49`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Fri, 16 Nov 2018 10:21:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 16 Nov 2018 10:39:30 GMT
ENV MONGO_VERSION=4.0.4
# Fri, 16 Nov 2018 10:39:31 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.4-signed.msi
# Fri, 16 Nov 2018 10:39:32 GMT
ENV MONGO_DOWNLOAD_SHA256=7d5b1f3a655cf2fe9864554699ffd6d7db616889fd211b4f0951d185e8395659
# Fri, 16 Nov 2018 10:42:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 16 Nov 2018 10:42:41 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 16 Nov 2018 10:42:43 GMT
EXPOSE 27017/tcp
# Fri, 16 Nov 2018 10:42:44 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a8ba966c2023bd5d3efcf1bc198b992a036e63816441ba6465bd60758d97058b`  
		Last Modified: Fri, 16 Nov 2018 11:40:41 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b23f7a1e28029f70eaef3b0670d66208c5d4ed13cb84743a707be4aff16d16a`  
		Last Modified: Fri, 16 Nov 2018 11:43:46 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c8ebe6716992874c684ddce24936b5edf008f8f58c929a84b3e961de8261ed`  
		Last Modified: Fri, 16 Nov 2018 11:43:45 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76742d370ab857303ca90069a042612498b0504cba8da1172a494934a8a6653`  
		Last Modified: Fri, 16 Nov 2018 11:43:43 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c937d7760b0c733990bd804d5e609a10a06cc12294a6bfaec0d8ca52b72b921`  
		Last Modified: Fri, 16 Nov 2018 11:43:58 GMT  
		Size: 58.6 MB (58644834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2b5df517ec4f58aec11fc5af7f17720d19cb79474af10778bca78a3c8347e6`  
		Last Modified: Fri, 16 Nov 2018 11:43:43 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d4ecf4e59e9b77e31e905b19b404fafba16f0e6654fd04c7fccf2901b09a71`  
		Last Modified: Fri, 16 Nov 2018 11:43:43 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e89a5c55481b0d81c0c91b105302dca92bbee62fd32a9f2651fa5b436fd4b06`  
		Last Modified: Fri, 16 Nov 2018 11:43:43 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
