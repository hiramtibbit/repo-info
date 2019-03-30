## `mongo:windowsservercore-1803`

```console
$ docker pull mongo@sha256:e4c6f5ffc754013f1d6e585fbc2ad92f4356d1be935e86fbe7cdd469975c4f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.648; amd64

### `mongo:windowsservercore-1803` - windows version 10.0.17134.648; amd64

```console
$ docker pull mongo@sha256:0c444492f5ddae245dd8f1025160cc061adb48fd597864ddb745233eaedf07fd
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2715603502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32104db029d2fed78782a2f2096cc111dcc6b9a6afaa1d7465054248aee9ec2c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 08 Mar 2019 23:20:01 GMT
RUN Install update 10.0.17134.648
# Fri, 15 Mar 2019 10:36:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 30 Mar 2019 09:42:36 GMT
ENV MONGO_VERSION=4.0.8
# Sat, 30 Mar 2019 09:42:38 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.8-signed.msi
# Sat, 30 Mar 2019 09:42:39 GMT
ENV MONGO_DOWNLOAD_SHA256=70562c79cf88ac56666dc874699f2da50ec9a7dfc1583586db4b7db877dbcbd4
# Sat, 30 Mar 2019 10:00:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Sat, 30 Mar 2019 10:00:58 GMT
VOLUME [C:\data\db C:\data\configdb]
# Sat, 30 Mar 2019 10:01:00 GMT
EXPOSE 27017
# Sat, 30 Mar 2019 10:01:02 GMT
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
	-	`sha256:1cdaeb8cd19eb1ef263ee780b0d37e99c2468c53883fe9cc3ed0b5330557acbb`  
		Last Modified: Sat, 30 Mar 2019 10:08:36 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01f2b72f59696deb85c912719781aebce9d85d07c0c70259929023e93deb454`  
		Last Modified: Sat, 30 Mar 2019 10:08:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db0f099ca814958395a29fbef6ce6e7b1e8d3465e6911e3fda25fee928d32f2`  
		Last Modified: Sat, 30 Mar 2019 10:08:34 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a9587d28a3e2ee62e6c636f8219a9592c2af2a694c6249f01c958cf8c9ec3b`  
		Last Modified: Sat, 30 Mar 2019 10:10:49 GMT  
		Size: 462.6 MB (462618763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6df8274fcbb2d232ed7a84bcd987740026b409caf8ec87bf3ab6f685df0a9b1`  
		Last Modified: Sat, 30 Mar 2019 10:08:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b8d06068b49e4515061bf35576da6f78c03942391c9b8d56fb45da52707f0f`  
		Last Modified: Sat, 30 Mar 2019 10:08:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d1562ac94fe1653f0e5215e499f5afd517dc036f04a34a57f150d0b1154aaf`  
		Last Modified: Sat, 30 Mar 2019 10:08:33 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
