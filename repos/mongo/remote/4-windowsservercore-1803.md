## `mongo:4-windowsservercore-1803`

```console
$ docker pull mongo@sha256:911b563a85a32232bcb772d40a7939271d9ddd87a028c454c2682489d4245d2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.345; amd64

### `mongo:4-windowsservercore-1803` - windows version 10.0.17134.345; amd64

```console
$ docker pull mongo@sha256:3dc72963c3e68a4792584529a5a4b5ec10861efed86d3dfc9cb53a195b3d59dd
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2288171826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f29661c8fda07cde7e91d3cd90aac212e7c8b150c6364bf7dcad85b3066fbe`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 01 Oct 2018 21:32:36 GMT
RUN Install update 10.0.17134.345
# Tue, 16 Oct 2018 10:23:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 16 Oct 2018 10:23:17 GMT
ENV MONGO_VERSION=4.0.3
# Tue, 16 Oct 2018 10:23:18 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.3-signed.msi
# Tue, 16 Oct 2018 10:23:19 GMT
ENV MONGO_DOWNLOAD_SHA256=0e53cfd224d27862c286b765b85d769b39e3518b2dc2704ff87bd8a565ea9b7f
# Tue, 16 Oct 2018 10:26:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 16 Oct 2018 10:26:26 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 16 Oct 2018 10:26:27 GMT
EXPOSE 27017/tcp
# Tue, 16 Oct 2018 10:26:28 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:eba07b94d5f77aa900bf02c4247fc580222254782681cc3c74a7cf9566e8890a`  
		Last Modified: Mon, 08 Oct 2018 19:44:48 GMT  
		Size: 570.0 MB (570044587 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:20fe9f55ed528e30fbf4e5f7bec4130d40fc43576c556b10fe710c78e0d8ab2b`  
		Last Modified: Tue, 16 Oct 2018 10:58:11 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6169bb272175bf6cc45104c2698b12867c5ce0e1651c6ad86600cf851d9f7e`  
		Last Modified: Tue, 16 Oct 2018 10:58:11 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6a39aa9d201a61e2b8163670c5e2f7da925dfda8352ac8b2e144587ed0e414`  
		Last Modified: Tue, 16 Oct 2018 10:58:12 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05caa9554a3a1e41491f194b69dcbd5f3bd46707374041adf819f90a73eee7f`  
		Last Modified: Tue, 16 Oct 2018 10:58:09 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29184166a6ae14c5cd74dd6f5dcc563fed2e90b2b67be2df6239274bf8a830dc`  
		Last Modified: Tue, 16 Oct 2018 10:58:23 GMT  
		Size: 58.4 MB (58430628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950d8b88bc08f424ac1ac5370cb3568b9fb79dcd761ceee68239f440acb2d7f6`  
		Last Modified: Tue, 16 Oct 2018 10:58:09 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a4959345edbf8dfdc455fb459606b007f06db80806532f02fe8971c4359b0a`  
		Last Modified: Tue, 16 Oct 2018 10:58:09 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7978c1bd33fd210791e43774f157d8dd8520937a7684dd9385de7c9360b0c3`  
		Last Modified: Tue, 16 Oct 2018 10:58:09 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
