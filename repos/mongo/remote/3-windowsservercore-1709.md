## `mongo:3-windowsservercore-1709`

```console
$ docker pull mongo@sha256:0683af009c374a28a488a767da14d1cbc78d8cb2ba98cd6dcf19f209befcc5a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.611; amd64

### `mongo:3-windowsservercore-1709` - windows version 10.0.16299.611; amd64

```console
$ docker pull mongo@sha256:0e80e91c37d0cfa2bf588c959ac36e44ccebf01e9ed6843f946752e3bc3bb405
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3650457811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe18c46e51581058ee9f9c4e14785fed256f9d1110999534df46656c2c1336fc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Fri, 17 Aug 2018 09:24:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Aug 2018 09:26:16 GMT
ENV MONGO_VERSION=3.6.7
# Thu, 23 Aug 2018 09:26:17 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.7-signed.msi
# Thu, 23 Aug 2018 09:26:17 GMT
ENV MONGO_DOWNLOAD_SHA256=c672b80ae0c682da76662917fd09a024f1695f82008b2180664c0c4d684b9a87
# Thu, 23 Aug 2018 09:47:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 09:47:35 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Aug 2018 09:47:36 GMT
EXPOSE 27017/tcp
# Thu, 23 Aug 2018 09:47:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:979b51c3a12a3db81990ebd92c5d5a3325e035f84c0503e987ede3bfd73f44df`  
		Last Modified: Fri, 17 Aug 2018 11:36:35 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d86456760b9c67506aae0cc59eef33a77f1aa73edce1cf56aceedf53737b73`  
		Last Modified: Thu, 23 Aug 2018 09:49:24 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c55070d5a8fc0322895313767cd75a5698e80e8f7bf9de4785cda61096be46`  
		Last Modified: Thu, 23 Aug 2018 09:49:25 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45efc667c8ed124e9b313fbac59a5c30e7613f78a4e20c0d72816d004b1002d2`  
		Last Modified: Thu, 23 Aug 2018 09:49:22 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590e5204dab2353f8a53edab4a07e7a1bd78dd89246e4bee679766c6173a0519`  
		Last Modified: Thu, 23 Aug 2018 09:50:30 GMT  
		Size: 538.3 MB (538313727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d937365c596e769c6602ef2bba9718d3fe82edb4f8b9563e01f68fc750b861`  
		Last Modified: Thu, 23 Aug 2018 09:49:22 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bac697dbbc7000dc2bbd880110d0d55336e1ddb51027b74623423c64208415`  
		Last Modified: Thu, 23 Aug 2018 09:49:22 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0235921d16889eabd93c3fe4b1408dbce22435cd8ce3c9d4c1826ddeb98c8696`  
		Last Modified: Thu, 23 Aug 2018 09:49:22 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
