## `mongo:4-windowsservercore-1709`

```console
$ docker pull mongo@sha256:ed5253787f71a4c9a436fb0c362fd1d0c76a1088023fe46ba931f7b11a338c0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.1029; amd64

### `mongo:4-windowsservercore-1709` - windows version 10.0.16299.1029; amd64

```console
$ docker pull mongo@sha256:ca7eb9ea0de969ed0215ecdfefa6d6c5aada6adf905c09a8c0bc107fcc91f4f9
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3684188549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03e9315d376b54b376d20a3e47fe9107ab38240bbe8f567a97c418237aaf2b2f`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Fri, 15 Mar 2019 09:46:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Mar 2019 10:19:06 GMT
ENV MONGO_VERSION=4.0.6
# Fri, 15 Mar 2019 10:19:07 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Fri, 15 Mar 2019 10:19:08 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Fri, 15 Mar 2019 10:36:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Mar 2019 10:36:33 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Mar 2019 10:36:35 GMT
EXPOSE 27017
# Fri, 15 Mar 2019 10:36:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7f4a716683dc03db3521ed040924c24ea9bd17c7f134c09bf22e33f6af33ade8`  
		Last Modified: Mon, 11 Mar 2019 21:13:17 GMT  
		Size: 936.6 MB (936551125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b217250878f40ff58563b56494c3225f606f7bde90c1be1e82385924187428f2`  
		Last Modified: Fri, 15 Mar 2019 10:53:26 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e76d2be1a7b866437071d826877d4fbb899e2959e1994f49fd371d385e2e40a`  
		Last Modified: Fri, 15 Mar 2019 10:58:31 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8ea80ed57aa445edc5373ef4c8197e08efbbc2ffc745bd40a19259bb3668b3`  
		Last Modified: Fri, 15 Mar 2019 10:58:31 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:362cfc3ea74cec02f300d75f414e8a1b113ed58cd13e9fbcd2d3108109e16805`  
		Last Modified: Fri, 15 Mar 2019 10:58:29 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec84acb7124820effb0eacc7ee520b698f61c2cb0c76de7d53266074730af8a`  
		Last Modified: Fri, 15 Mar 2019 11:02:08 GMT  
		Size: 473.3 MB (473328395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbdac38b8d5413a625de3da7e570747e97195a189f17d5869839a2b22075aa7`  
		Last Modified: Fri, 15 Mar 2019 10:58:29 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b1c6b716345ad366496a27b28bf3120c514550925ee1be04aeffefba23f8c5`  
		Last Modified: Fri, 15 Mar 2019 10:58:29 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8cac98142b377b2103413f686098f6bc8e2bca52bcbdafa771205176d9d3042`  
		Last Modified: Fri, 15 Mar 2019 10:58:29 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
