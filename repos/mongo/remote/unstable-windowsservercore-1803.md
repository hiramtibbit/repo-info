## `mongo:unstable-windowsservercore-1803`

```console
$ docker pull mongo@sha256:bc7618e49a52855839efabf9e50a16e4f54a5e4348d1aaf83a54423aada18818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.345; amd64

### `mongo:unstable-windowsservercore-1803` - windows version 10.0.17134.345; amd64

```console
$ docker pull mongo@sha256:20f7f153cb6f0cc9feaf0a60411dbe45de03715e8594c4f437193616cce14bd1
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764986802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905ea51a61255a2c20d24a1e9cd7497ff984b2b811cdf58d2265d03cfce38b97`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 01 Oct 2018 21:32:36 GMT
RUN Install update 10.0.17134.345
# Tue, 16 Oct 2018 10:23:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 10 Nov 2018 11:03:15 GMT
ENV MONGO_VERSION=4.1.5
# Sat, 10 Nov 2018 11:03:16 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.5-signed.msi
# Sat, 10 Nov 2018 11:03:17 GMT
ENV MONGO_DOWNLOAD_SHA256=3ea02318751817b109932fc85ed666991799de4cf9515063068e93a6264364cb
# Sat, 10 Nov 2018 11:23:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Sat, 10 Nov 2018 11:24:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Sat, 10 Nov 2018 11:24:04 GMT
EXPOSE 27017/tcp
# Sat, 10 Nov 2018 11:24:05 GMT
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
	-	`sha256:b9aa7d0289aca29be86d7ca567ff25ec1db8f6cd8639ca43bb2247e54059d839`  
		Last Modified: Sat, 10 Nov 2018 11:29:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b4eae733d66f20a06949c48187c95b62e5a16a6398df976483ed425977afb7`  
		Last Modified: Sat, 10 Nov 2018 11:29:57 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ea118656d36bf6569459800aa40b9f857091ed148f676622ba01818801c993`  
		Last Modified: Sat, 10 Nov 2018 11:29:55 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d4b60083d615876bb266f5bd6b62f8132afa0d366301189cb8ddea21595856`  
		Last Modified: Sat, 10 Nov 2018 11:30:59 GMT  
		Size: 535.2 MB (535245559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36526945228ba0170d1b184e4100e57180f48c61d6f9181851c4b529e7eaa84c`  
		Last Modified: Sat, 10 Nov 2018 11:29:55 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628efdfa5ede2e0aa818832ec0a31782bfea8ceafe306b25ea7cf211034b80ca`  
		Last Modified: Sat, 10 Nov 2018 11:29:55 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3c08e42096339b03530317048fcf28ea6d298ee1a959f15eaa439d3e6e155a`  
		Last Modified: Sat, 10 Nov 2018 11:29:55 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
