## `mongo:4-windowsservercore-1709`

```console
$ docker pull mongo@sha256:5e23ea7fd063aa3609d39fc94629fdfde42de622fd63705c4ec9df56cefff10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `mongo:4-windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull mongo@sha256:6d4d504c39b935798df3798546ce47410950d59d399d10fbc4732379dfe12af3
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3718476312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855317c57b387fd4bf76d2c2d71b8071bd0c34b193c34fc5b1549355ddeb313d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Tue, 22 Jan 2019 11:52:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 06 Feb 2019 10:29:39 GMT
ENV MONGO_VERSION=4.0.6
# Wed, 06 Feb 2019 10:29:40 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Wed, 06 Feb 2019 10:29:41 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Wed, 06 Feb 2019 10:50:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 06 Feb 2019 10:50:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 06 Feb 2019 10:50:49 GMT
EXPOSE 27017
# Wed, 06 Feb 2019 10:50:51 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b73a0893a2a72f596b0b6e0f0bd7c375cc57a9f8c99eecac91cb183e81a685df`  
		Last Modified: Tue, 22 Jan 2019 13:32:24 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6473ceea802de39743b51a74fe75b978d5b21b0576ab37c991bcb4ef366203a`  
		Last Modified: Wed, 06 Feb 2019 11:05:05 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2e871f3d0508dd2f51ca110bae9719435265a4de92c5d31a7e79261249fa47`  
		Last Modified: Wed, 06 Feb 2019 11:05:05 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243357279e685c059443c1a419ca870ba603f03fbfa11a5a2432e52a46dc36d`  
		Last Modified: Wed, 06 Feb 2019 11:05:03 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452ce823dd2fa03aaf1706c5ae2bebea1f995e87e4a3175d18140eea76172aa8`  
		Last Modified: Wed, 06 Feb 2019 11:08:59 GMT  
		Size: 571.4 MB (571412013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8e86034382fdb1c891c32d718501547d9189b7032936c6f31b4d9e7cdd70af`  
		Last Modified: Wed, 06 Feb 2019 11:05:03 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25bad38271f66370215c282ecf9ef18713822952d0d9659949bc2d5fa6804fe`  
		Last Modified: Wed, 06 Feb 2019 11:05:03 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba22de9ed3ca61333a040e5728209b17c684b4a7a29e097f5249ab7d3bcf0339`  
		Last Modified: Wed, 06 Feb 2019 11:05:03 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
