## `mongo:4-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:ba6e81a06617ff8eeda353da66d4133c249a540562d848922aa6edad13f7b6ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:4-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:b1ca419cbfc383e8a13078e5ee09a1c3514576a91f3d14c196b785d8c86e5f8e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785025652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826a4243bf19a547d0b1dce522933755e8d2f1d4ae8bb9387549c6ba0268164`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:18:50 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:18:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:18:53 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:22:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:22:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:22:35 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:22:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614e7a9166aecb1a112fd30dd449b22f1f766b2e25e551ab3ca3937f790e0f8`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb516f41ef3d428513082a3ef5c61c541f683e2f2bcf8c4af01f0c7024c6a39`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a9140cc356bac323f8c1b4e9d243bf56e8d345c4885de2c3258e6ec087672a`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6395bf368e75a835e04ca5f0f37e8b1756eba1fe1de64b88e6e6d87e9e4fc9`  
		Last Modified: Wed, 29 May 2019 20:58:09 GMT  
		Size: 85.2 MB (85229202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd12d243a853e32737bcea47946e1a7b5937dd964db31023200c2457d9e67ef`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcf17e6f70acbafd13b6b6f34e07822b2d42035b3baed1046387eb5af331f1`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95abfa44a068d062c5f32a8e02b27c53831b06660e1aaf4259c8a9cd172fa9`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
