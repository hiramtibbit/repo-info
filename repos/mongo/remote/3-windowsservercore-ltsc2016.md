## `mongo:3-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:28d2be8a11842ef97e5f59336011ff787434a6ca65bfb1304f8b95a4f2f76229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64

### `mongo:3-windowsservercore-ltsc2016` - windows version 10.0.14393.2665; amd64

```console
$ docker pull mongo@sha256:6f52d80127f9a7cdceb017f4b23331f905f7cb4b074cbe70553813824ab9c60e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5705706446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a964b8d49194680124cd47acda050e95fd4a847ce7dce1cdefce6d1642a5661e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Tue, 25 Dec 2018 19:01:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 25 Dec 2018 19:13:20 GMT
ENV MONGO_VERSION=3.6.9
# Tue, 25 Dec 2018 19:13:21 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.9-signed.msi
# Tue, 25 Dec 2018 19:13:23 GMT
ENV MONGO_DOWNLOAD_SHA256=b9f7f889f34c610e36995d3892768be610605f1413866efa1a867c0b13bb635f
# Tue, 25 Dec 2018 19:17:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 19:17:22 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 25 Dec 2018 19:17:25 GMT
EXPOSE 27017
# Tue, 25 Dec 2018 19:17:26 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b92498775bef108bcee0d3239688e91da8acbfcaec62c8b5e05f78b04c70602`  
		Last Modified: Tue, 25 Dec 2018 20:32:55 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aaa17b9f18eb70d8a8fb351b21403dfe3b21b5a611283b2d3795312fcb6cd7`  
		Last Modified: Tue, 25 Dec 2018 20:34:38 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0aa850538162ae8681e66d27819653fa6ea052e7da1f10149a79d000e29ee48`  
		Last Modified: Tue, 25 Dec 2018 20:34:38 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd15b1ccf570f241a48c1435f553b42800ca72acece2fafcf8daabcd9829748c`  
		Last Modified: Tue, 25 Dec 2018 20:34:36 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c6fbeb880dc9eab07532afbe4f839f1ef0c89666227a2f1f211905b793c75d`  
		Last Modified: Tue, 25 Dec 2018 20:34:51 GMT  
		Size: 71.0 MB (70970791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c8ae0d02baa7d901369f465cab86d70a4c60e5d23c0ad1caf34511f790dbc3`  
		Last Modified: Tue, 25 Dec 2018 20:34:36 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0c6eae435315705f14e7e5eb9108f4d9a8748d230dc1723a922c27aa413bc7`  
		Last Modified: Tue, 25 Dec 2018 20:34:36 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b79712f4eaa52c90d5f09c2b59d4fa853a65cf7f909455d5186313a5de4055e`  
		Last Modified: Tue, 25 Dec 2018 20:34:36 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
