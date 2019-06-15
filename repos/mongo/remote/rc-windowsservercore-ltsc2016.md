## `mongo:rc-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:8b745ab55be0e9b59c33573a9cf2f5dda4b35d2493af037c1047934d2cca7f70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `mongo:rc-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull mongo@sha256:26e83d3a74e0415a86933bfb20b000d41a8c6e78f97738cc5beb786f942638a8
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 GB (6197444322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4baad1f26325de635051ae473931606184c4dc5451c0b599200dba6d20aa6716`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 16:02:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 14 Jun 2019 22:17:09 GMT
ENV MONGO_VERSION=4.2.0-rc1
# Fri, 14 Jun 2019 22:17:10 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.2.0-rc1-signed.msi
# Fri, 14 Jun 2019 22:17:12 GMT
ENV MONGO_DOWNLOAD_SHA256=379bcf1725c19c6ff2f2f159ef4e22c9a4ba32692a994e809457f1053c50066f
# Fri, 14 Jun 2019 22:35:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 14 Jun 2019 22:35:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 14 Jun 2019 22:35:26 GMT
EXPOSE 27017
# Fri, 14 Jun 2019 22:35:28 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a93a9306787f35923544db17afaac32adba5f64cbbb54158d169119bec4293a0`  
		Last Modified: Wed, 12 Jun 2019 17:13:38 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c9c55f57c1314df0c0ea3bfa0f9828048f1aa4ca1889f889f26b07e6bfabd0`  
		Last Modified: Fri, 14 Jun 2019 22:55:39 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b795d63ca0c60369e3d027e4954c844c6efe95bfd395c873405e10f880562a50`  
		Last Modified: Fri, 14 Jun 2019 22:55:39 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c485f7beb6b0250926a31c4362ecd3d4931aea22fab60066139091f1e655b48`  
		Last Modified: Fri, 14 Jun 2019 22:55:37 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e897bddc85c4048aa769ead4c61124c95cc0e766bc307a9983808764a10f4bec`  
		Last Modified: Fri, 14 Jun 2019 22:58:32 GMT  
		Size: 487.5 MB (487461320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff27079ef190d12fb0e9660f17afc04ca56f6b935845de4a12606074bfff77b`  
		Last Modified: Fri, 14 Jun 2019 22:55:37 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c4b77789be7b96e52e277a1665dd5db601174bb4c7c99f4dae38dcfaccbe3f`  
		Last Modified: Fri, 14 Jun 2019 22:55:37 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd6f8bda3590926cd663d1cd123564075952ee2edb14dc53d817eb7cd05075e`  
		Last Modified: Fri, 14 Jun 2019 22:55:37 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
