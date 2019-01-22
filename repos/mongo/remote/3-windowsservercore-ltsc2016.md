## `mongo:3-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:39f6a4573dc5551c09d81509ed340d56241fb1b97fcbc38fb576b36b9bfd03c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `mongo:3-windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull mongo@sha256:a05d90ffea4deef85ddfa0635f62ced400ce1230b8ec932af3c5480d01acca01
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5718213639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b708164c80ddbf42f1ca9d0fcc4b203929ef3a8fcfae6a9f7734fed68e727698`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Tue, 22 Jan 2019 11:49:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 22 Jan 2019 11:54:30 GMT
ENV MONGO_VERSION=3.6.10
# Tue, 22 Jan 2019 11:54:31 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.10-signed.msi
# Tue, 22 Jan 2019 11:54:32 GMT
ENV MONGO_DOWNLOAD_SHA256=959acce14e4a565c1eb090a3430f20a7a04cadbe2d31b3367a7ff44b14e5b24d
# Tue, 22 Jan 2019 12:00:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 22 Jan 2019 12:01:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 22 Jan 2019 12:01:03 GMT
EXPOSE 27017
# Tue, 22 Jan 2019 12:01:04 GMT
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
	-	`sha256:a59342c8c80cb8a9ddc03c37bf3a50c893076eea1bceffe3dd645853ddb16dc2`  
		Last Modified: Tue, 22 Jan 2019 13:33:17 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1816a562afc7237e376d7d25c3cb018f72c3a46525774f9e499f90edb5c9bf91`  
		Last Modified: Tue, 22 Jan 2019 13:33:17 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260ca8308041293a5b88964cce3a20d39b446accc14b67d83bc9e5fba7321740`  
		Last Modified: Tue, 22 Jan 2019 13:33:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d375463002bd05967f867fcd90034bf5e821ffed4ea906fbbc3ef2cf36e3f4`  
		Last Modified: Tue, 22 Jan 2019 13:33:33 GMT  
		Size: 82.4 MB (82389078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d8c476c5b6e79872ca5b90720e60bab4c38875b7976ff400b423e90709a2d7`  
		Last Modified: Tue, 22 Jan 2019 13:33:15 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e8f901de6f3ea126df13636948926ba31f743ab02386082d43f52e212d4c14`  
		Last Modified: Tue, 22 Jan 2019 13:33:15 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08facf9f45d72b1c89011cf513e5fd927533e68885490be1b14b14f908a72a4f`  
		Last Modified: Tue, 22 Jan 2019 13:33:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
