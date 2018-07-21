## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:f64d714de9c0a613690d3c0e1737a6d090c9c489c1a9abc3f575db25c3d402d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:bf9a83c3904400edb18de3187451597b73fc527ba61e8fe76be810d35156fef1
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5426898646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64aaddfb26295f95ccf511020d0c27ad2ad357414588d7d6e8e4c71db0373c1a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:59:30 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 15 Nov 2017 02:59:31 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 15 Nov 2017 02:59:31 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 15 Nov 2017 03:01:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 03:01:52 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 03:01:55 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 03:01:56 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41f8df0c8b1aa41ba99c2e9552977463e3657c825ae65163661f17b84dc0719`  
		Last Modified: Wed, 15 Nov 2017 03:03:47 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea6ea7eba67c5cb2ffcf9e423d1d28cdab585b50d6f170abee434dc3dc1c128`  
		Last Modified: Wed, 15 Nov 2017 03:03:46 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b4ade4d48e5af7820e405ea8017711de5a1b8031c9ef75e7113a02f5c251c5`  
		Last Modified: Wed, 15 Nov 2017 03:03:44 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961bca6c3758e043266583cd652a09e1c7ca58782094e96f3fe243e32317951e`  
		Last Modified: Wed, 15 Nov 2017 03:03:58 GMT  
		Size: 69.9 MB (69911393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3226d383bcc5642184896e279a9a06cbe55ec38e9a9533c34239b8c1145453`  
		Last Modified: Wed, 15 Nov 2017 03:03:44 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d804dfcd7791f707b240f0c9482ac8a9fe22f53e02083bce5ac6c71dd0773f`  
		Last Modified: Wed, 15 Nov 2017 03:03:43 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1ae943c69c48ab33e1b692b4df11273b1345d67d3ab096e0004ced56b1a337`  
		Last Modified: Wed, 15 Nov 2017 03:03:44 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
