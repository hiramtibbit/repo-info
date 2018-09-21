## `mongo:windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:4305cd562ffa863bc394bb04d7f9c3aaabc996a3bca2952384e6c88117181570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `mongo:windowsservercore-ltsc2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull mongo@sha256:b03a88c41f75906e37ca541406934590f90a2ae0e3392d695937025c8ea1be59
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5649388986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c52cf2b5ca1d2d3085e43ef824d9849d7324b808ad7a89beb85386206bbab9a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Sat, 15 Sep 2018 09:16:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 15 Sep 2018 09:34:18 GMT
ENV MONGO_VERSION=4.0.2
# Sat, 15 Sep 2018 09:34:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.2-signed.msi
# Sat, 15 Sep 2018 09:34:20 GMT
ENV MONGO_DOWNLOAD_SHA256=a54030c609ef1ae99b85a78b9d4f1ef2d34fea991fc023830108e779f7fbee26
# Fri, 21 Sep 2018 10:02:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 21 Sep 2018 10:02:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 21 Sep 2018 10:02:24 GMT
EXPOSE 27017/tcp
# Fri, 21 Sep 2018 10:02:26 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6e046b8e194c642cfc4d7dcaa12ec2f9359e1f54dbc7088ee9ca188416d5c553`  
		Last Modified: Tue, 11 Sep 2018 16:53:50 GMT  
		Size: 1.5 GB (1515870209 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f786254e0429ce7f1ddc69d592364c6179e4c72da867230a987eba95e7d61708`  
		Last Modified: Fri, 21 Sep 2018 10:20:04 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f1a84e5a7664d47e7824c87e7a3d358b6b34ea864d42ceea358f794c5f76cc`  
		Last Modified: Fri, 21 Sep 2018 10:23:06 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c5ac6eff442266389e70131e3d53a01691038dbed981853a977a94dea78003`  
		Last Modified: Fri, 21 Sep 2018 10:23:05 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c621f97bce381a72614681d43867305e6a63dbd615a142bad1b0cb2d4af1b2b0`  
		Last Modified: Fri, 21 Sep 2018 10:23:03 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cd39153cdf73aeae8e4464f7574242792c11606fbc2e4919be061e40659a8a`  
		Last Modified: Fri, 21 Sep 2018 10:23:18 GMT  
		Size: 63.5 MB (63524502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780fcf3393572eee89eeede071b6e50cc62bf9a02e3ae58c575ffc5c0da63938`  
		Last Modified: Fri, 21 Sep 2018 10:23:03 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a15225749fe5d10b1d9f49fe5b4f620b7d6aa1963dae76f3c1c3332abee878`  
		Last Modified: Fri, 21 Sep 2018 10:23:03 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d3911a21c2c12957d58839afc0f8de5afb950e3f8119a0ad94c7f1ad672c6`  
		Last Modified: Fri, 21 Sep 2018 10:23:03 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
