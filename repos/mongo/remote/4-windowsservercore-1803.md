## `mongo:4-windowsservercore-1803`

```console
$ docker pull mongo@sha256:6654cefae560ac0f3ca1fd081bde97ebf1f764f7b4784c4d2e08edeebfff6bde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.590; amd64

### `mongo:4-windowsservercore-1803` - windows version 10.0.17134.590; amd64

```console
$ docker pull mongo@sha256:94698204518652b4498a811fe7b7422ff55f0f34517cdfe4db9b0f4f8d038a13
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2798994784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5e79561e2a779730e9c8feb0e35e4d19185fe3ff815f76a47128f58903ca58`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 07 Feb 2019 23:00:02 GMT
RUN Install update 10.0.17134.590
# Thu, 14 Feb 2019 11:32:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 14 Feb 2019 11:32:53 GMT
ENV MONGO_VERSION=4.0.6
# Thu, 14 Feb 2019 11:32:54 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Thu, 14 Feb 2019 11:32:55 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Thu, 14 Feb 2019 11:54:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 14 Feb 2019 11:54:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 14 Feb 2019 11:54:21 GMT
EXPOSE 27017
# Thu, 14 Feb 2019 11:54:22 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e94f7b83ce20c90f9f1b0323c3f9c3c791163e44e7069e47cd76cf50a3a07ef`  
		Last Modified: Mon, 11 Feb 2019 21:11:29 GMT  
		Size: 588.0 MB (587983329 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:608c11b759474cb7931cb0eaa5a61eebd1ead65f3503252a1524d8eb1eda6fc6`  
		Last Modified: Thu, 14 Feb 2019 13:16:08 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25fc5aab78c2d4a96f3a9ff86a75f48473349e652dec687da4399c73e99db70`  
		Last Modified: Thu, 14 Feb 2019 13:16:09 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab516f5b505663186c6c4ecee274e5618477978608e313b86aef75ce13162e88`  
		Last Modified: Thu, 14 Feb 2019 13:16:08 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eddad1f7f7a8e3c677e86b542b5c393dcd999ad5ef31e835e5ddfa373fcea7e`  
		Last Modified: Thu, 14 Feb 2019 13:16:06 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c4dc9e6f033ef4bc660f8ebb90d03ad1570d39bbabfcb9c91c1fe2a9d98b75`  
		Last Modified: Thu, 14 Feb 2019 13:18:26 GMT  
		Size: 551.3 MB (551314742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1e76563c03086b96d742fe78993a2c8f00b3a65de1c705e2ad6c63c9e2b489`  
		Last Modified: Thu, 14 Feb 2019 13:16:06 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94e1700b4980977a92dd9e372ec8b3e9b47fd6c086749828675979ba21d32e5`  
		Last Modified: Thu, 14 Feb 2019 13:16:06 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25036affb9ef19d273a69aa103ef3570c2a5017a9267b16d9a14b903a2466181`  
		Last Modified: Thu, 14 Feb 2019 13:16:06 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
