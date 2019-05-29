## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:c5e03c720ef3e6a1cb11134678a714b71249a04cf47c97334dadb6848453617f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.2972; amd64

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

### `mongo:windowsservercore` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:028373d156e59512fdddd8971359861f5a080e0af48619b9cdfa7e56d1ef653b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2784938590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b3386bb7c72e395b28c7811c6056c3686fd320cf35f13e7d655085fb917f16`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:22:49 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:22:50 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:22:52 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:42:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:42:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:42:34 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:36 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b5c8c0e871040e7e91d5b16174c1d149ce0332b7b8b7f8930d6a8d2e401744`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335322e451e70aae885934fba6cb2f43f666de6cf4593a1e13e387af329ada06`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4eba3893a41cf13201c0640e444b7d842dbd289bb4a7c9abdc3a5274652c01`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c60d97ae5ca6737561d99c6f3f4b2c8540bf0e3f851b0be296649b883c6907`  
		Last Modified: Wed, 29 May 2019 21:02:01 GMT  
		Size: 481.5 MB (481473579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1bb86203542c23106a38562b2dc82003ad7ab68b184db922d1448501bc4fd6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217748c354057a9d2b88f60c0e2572481f2a323f2e3fe30d5c7a7d7f098507f6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b7cc2a8fb7f1423f18cff5bed90423aea5d08190ee544a7b7e5c6088e50b9c`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
