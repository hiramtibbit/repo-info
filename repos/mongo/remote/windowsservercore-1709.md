## `mongo:windowsservercore-1709`

```console
$ docker pull mongo@sha256:bbb9d337742d0ef15876d244ed10fb57600a40a6e692f8b6abd142014ec4f862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.1087; amd64

### `mongo:windowsservercore-1709` - windows version 10.0.16299.1087; amd64

```console
$ docker pull mongo@sha256:17ada96493788d8f1fbd466f03a80953c15ea488c9f25623c96619aa788d1a6c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3685102924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33f812493c5e7cc638204e2b390505ead5bc73d27ac0d589bd4b830fa7f4ba02`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 1709-RTM-amd64
# Thu, 04 Apr 2019 00:21:24 GMT
RUN Install update 1709-amd64
# Fri, 12 Apr 2019 02:09:20 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:12:46 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 03:12:47 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 03:12:48 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:30:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:30:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:30:35 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:30:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8c7d1531260f1f41cc711bfb3c8ab8efac981758fd7943518b863803f0b31552`  
		Last Modified: Tue, 09 Apr 2019 18:39:54 GMT  
		Size: 926.6 MB (926563180 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e701206ccf088c14af6f5af1c1d84d79a98ec58e5340a3038a02cfb9f9fe2de2`  
		Last Modified: Fri, 12 Apr 2019 04:38:27 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ee0eb00c130922591ca000e561b8eafbf331249bb093876bf8efac1427986d`  
		Last Modified: Fri, 12 Apr 2019 04:42:39 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0598e0750a3f0febbfb2d4382f4f4d22e9adcd8dfe21ec2e1c08881294a9407c`  
		Last Modified: Fri, 12 Apr 2019 04:42:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4522e1af91e0a6a36c98af4ba95b6cd40108db8d11fe319cfcb79fa0462025fe`  
		Last Modified: Fri, 12 Apr 2019 04:42:36 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca7424f9a8071eb885ab88f7359dd1815a5d67a6ce93cc3370f2f341cd3bcb8`  
		Last Modified: Fri, 12 Apr 2019 04:44:43 GMT  
		Size: 484.2 MB (484230724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4bec470778dce08087cc25839999f18574f469cb0d2e4fae1e7f7012e8071e`  
		Last Modified: Fri, 12 Apr 2019 04:42:36 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e76ff766ae5b723b22a6cb0cc115bd3ffcf36135262a1c004791fbf57291e82`  
		Last Modified: Fri, 12 Apr 2019 04:42:36 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7703c7b0e2baaa40dd91bc5360001a5ed6ff558a9a6e0e68dc37e772a671f3ab`  
		Last Modified: Fri, 12 Apr 2019 04:42:36 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
