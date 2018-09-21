## `mongo:windowsservercore-1803`

```console
$ docker pull mongo@sha256:1fa0b429692e287ddb3dc730546b62ddf5fa96ef2b50fc2b7df442d6efcca06c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.285; amd64

### `mongo:windowsservercore-1803` - windows version 10.0.17134.285; amd64

```console
$ docker pull mongo@sha256:bee7b1ff67ed24e69c40b0c025d67e72c93fc0ab705df4e7c586c32c42a71394
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2265364170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d349f1df98b1ec78a5ecc0d3390996e7bbd809cf3ab9d5853348b1a43ceb9373`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Sat, 15 Sep 2018 09:39:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 15 Sep 2018 09:39:58 GMT
ENV MONGO_VERSION=4.0.2
# Sat, 15 Sep 2018 09:39:59 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.2-signed.msi
# Sat, 15 Sep 2018 09:40:00 GMT
ENV MONGO_DOWNLOAD_SHA256=a54030c609ef1ae99b85a78b9d4f1ef2d34fea991fc023830108e779f7fbee26
# Fri, 21 Sep 2018 10:08:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 21 Sep 2018 10:08:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 21 Sep 2018 10:09:00 GMT
EXPOSE 27017/tcp
# Fri, 21 Sep 2018 10:09:02 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f036448990c273bb1accf8d436799639bbb644326ae47f30fe4faed21c8d8d9`  
		Last Modified: Tue, 11 Sep 2018 17:11:59 GMT  
		Size: 547.2 MB (547225773 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:72421b921bc76cd58967f35b89a741539cec39dab3ff330e790096ac6853216a`  
		Last Modified: Fri, 21 Sep 2018 10:24:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be09566590efffd8b985d2eed70e9e5da3de0a58877c029ed4c7e28086fb2fa4`  
		Last Modified: Fri, 21 Sep 2018 10:24:09 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bc503065c3b51704eede206b6ce095c4f44716db9319b24d0f49355cef6a9f`  
		Last Modified: Fri, 21 Sep 2018 10:24:09 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7781fc6ae3df11d48bc471df8afe03df89141ca5c02a6d14625cfac34bb6c990`  
		Last Modified: Fri, 21 Sep 2018 10:24:06 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9281a5a6e7eff0837e6191530b7e7e5e74651950b5929d065f2d4d0da3360d0c`  
		Last Modified: Fri, 21 Sep 2018 10:24:20 GMT  
		Size: 58.4 MB (58441756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7caf097f3684a432722e07e134a5dfadb9d9558ffb34fbce1f8d4d0fe9e5d98d`  
		Last Modified: Fri, 21 Sep 2018 10:24:07 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577e98ecd246ba8011d71d9ea5f7f5ea7527945d426d5514136abc35b3f185fb`  
		Last Modified: Fri, 21 Sep 2018 10:24:06 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674d702d1abfa8ac14919b07e51b4ceac5d14e6c8bedf850fb57513c8670b98a`  
		Last Modified: Fri, 21 Sep 2018 10:24:06 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
