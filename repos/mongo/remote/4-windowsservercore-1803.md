## `mongo:4-windowsservercore-1803`

```console
$ docker pull mongo@sha256:62209176b6cae484059897ff6ad86fc7eca13eba8989606c992973da1aec93a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `mongo:4-windowsservercore-1803` - windows version 10.0.17134.766; amd64

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
