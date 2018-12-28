## `mongo:windowsservercore-1803`

```console
$ docker pull mongo@sha256:40d5138ac7e41540115c349af84fda1408e14863e17960f3bec73f28d21b76a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `mongo:windowsservercore-1803` - windows version 10.0.17134.469; amd64

```console
$ docker pull mongo@sha256:5d7316e98bedbbf66590d8f83c39572ad0ac079c234b5d9fdb627e76bd77bc07
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2312834555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ab319c1f982a9137246aee1ed4e790f2d59e42fdd35d7a6ebcddc01b4c282d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Tue, 25 Dec 2018 19:28:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 28 Dec 2018 10:32:18 GMT
ENV MONGO_VERSION=4.0.5
# Fri, 28 Dec 2018 10:32:20 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.5-signed.msi
# Fri, 28 Dec 2018 10:32:21 GMT
ENV MONGO_DOWNLOAD_SHA256=e2ac83cfee3350012a641405ce5ba5c3cffe3f8d1a0cd5e0eb3e332246a9cc20
# Fri, 28 Dec 2018 10:35:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 28 Dec 2018 10:36:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 28 Dec 2018 10:36:02 GMT
EXPOSE 27017
# Fri, 28 Dec 2018 10:36:04 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a716b198c71b782955b21f1eed303f89f487eaef823ebccdeb452b764512b3b`  
		Last Modified: Tue, 11 Dec 2018 22:06:40 GMT  
		Size: 583.9 MB (583898765 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:edcb8af516ba153b07675737209648bd886ef5c8b56e7c912ead73de6e7b2b28`  
		Last Modified: Tue, 25 Dec 2018 20:36:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4157b5ae35c4c78e0f7678469285156d9f03dabd0307184165ee1cca6b5172`  
		Last Modified: Fri, 28 Dec 2018 10:38:23 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9c37a5d56d6c6565d0b318517531bbea0485843c20d752c4593a5074c0fa15`  
		Last Modified: Fri, 28 Dec 2018 10:38:22 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb33c714820939711f78815ed7a18ae27a6f449d270c6cc8d94000fdfcbad9d3`  
		Last Modified: Fri, 28 Dec 2018 10:38:20 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e728de46061f0ca3ffcc9c0ab2b1c1f37cb6117a0b40577fbe9e5cb0e24f2949`  
		Last Modified: Fri, 28 Dec 2018 10:38:36 GMT  
		Size: 69.2 MB (69239082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab055d5d9cea2f9742806a120f2daa3251ee6fc33b328513f821ac13d12dd31`  
		Last Modified: Fri, 28 Dec 2018 10:38:20 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ca60f815b54323c7f7064deb09970ee8d4cfaa7e78f66d19c19c3582560161`  
		Last Modified: Fri, 28 Dec 2018 10:38:20 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d9ce77253fa4244f6243e8d550ddd6456d4c74c6d2344f02b6600d973b2808`  
		Last Modified: Fri, 28 Dec 2018 10:38:21 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
