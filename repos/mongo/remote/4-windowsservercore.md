## `mongo:4-windowsservercore`

```console
$ docker pull mongo@sha256:9ab9a36a219f49678be41d35c6d61d7e1aa815cf442b8700c99b6f3b93f4416a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64
	-	windows version 10.0.16299.665; amd64
	-	windows version 10.0.17134.285; amd64

### `mongo:4-windowsservercore` - windows version 10.0.14393.2485; amd64

```console
$ docker pull mongo@sha256:b03a88c41f75906e37ca541406934590f90a2ae0e3392d695937025c8ea1be59
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5649388986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c52cf2b5ca1d2d3085e43ef824d9849d7324b808ad7a89beb85386206bbab9a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Sat, 15 Sep 2018 09:16:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 15 Sep 2018 09:34:18 GMT
ENV MONGO_VERSION=4.0.2
# Sat, 15 Sep 2018 09:34:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.2-signed.msi
# Sat, 15 Sep 2018 09:34:20 GMT
ENV MONGO_DOWNLOAD_SHA256=a54030c609ef1ae99b85a78b9d4f1ef2d34fea991fc023830108e779f7fbee26
# Fri, 21 Sep 2018 10:02:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 21 Sep 2018 10:02:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 21 Sep 2018 10:02:24 GMT
EXPOSE 27017/tcp
# Fri, 21 Sep 2018 10:02:26 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6e046b8e194c642cfc4d7dcaa12ec2f9359e1f54dbc7088ee9ca188416d5c553`  
		Last Modified: Tue, 11 Sep 2018 16:53:50 GMT  
		Size: 1.5 GB (1515870209 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f786254e0429ce7f1ddc69d592364c6179e4c72da867230a987eba95e7d61708`  
		Last Modified: Fri, 21 Sep 2018 10:20:04 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f1a84e5a7664d47e7824c87e7a3d358b6b34ea864d42ceea358f794c5f76cc`  
		Last Modified: Fri, 21 Sep 2018 10:23:06 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c5ac6eff442266389e70131e3d53a01691038dbed981853a977a94dea78003`  
		Last Modified: Fri, 21 Sep 2018 10:23:05 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c621f97bce381a72614681d43867305e6a63dbd615a142bad1b0cb2d4af1b2b0`  
		Last Modified: Fri, 21 Sep 2018 10:23:03 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cd39153cdf73aeae8e4464f7574242792c11606fbc2e4919be061e40659a8a`  
		Last Modified: Fri, 21 Sep 2018 10:23:18 GMT  
		Size: 63.5 MB (63524502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780fcf3393572eee89eeede071b6e50cc62bf9a02e3ae58c575ffc5c0da63938`  
		Last Modified: Fri, 21 Sep 2018 10:23:03 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a15225749fe5d10b1d9f49fe5b4f620b7d6aa1963dae76f3c1c3332abee878`  
		Last Modified: Fri, 21 Sep 2018 10:23:03 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d3911a21c2c12957d58839afc0f8de5afb950e3f8119a0ad94c7f1ad672c6`  
		Last Modified: Fri, 21 Sep 2018 10:23:03 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4-windowsservercore` - windows version 10.0.16299.665; amd64

```console
$ docker pull mongo@sha256:5f1d784554166db9eb0cae0329d93c695a7568d4dc9191ad3b2b86b440118a7b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3191098764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebf3505b33133d784f3d529eefd5f449b026367313fe944abc09b0225091fe6c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Sat, 15 Sep 2018 09:20:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 15 Sep 2018 09:37:27 GMT
ENV MONGO_VERSION=4.0.2
# Sat, 15 Sep 2018 09:37:28 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.2-signed.msi
# Sat, 15 Sep 2018 09:37:29 GMT
ENV MONGO_DOWNLOAD_SHA256=a54030c609ef1ae99b85a78b9d4f1ef2d34fea991fc023830108e779f7fbee26
# Fri, 21 Sep 2018 10:05:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 21 Sep 2018 10:05:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 21 Sep 2018 10:05:41 GMT
EXPOSE 27017/tcp
# Fri, 21 Sep 2018 10:05:43 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a5b83e25f92aef992a2827d664111b4726ada7d0b13d7af21882734cab96d8d0`  
		Last Modified: Tue, 11 Sep 2018 17:07:56 GMT  
		Size: 858.3 MB (858335510 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4cdc6ca9b93c706388b66a6275c76b641997dbef9a73356ba7a8511a95ccd52`  
		Last Modified: Fri, 21 Sep 2018 10:20:28 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abb9fd66c258182319d83eb5ae747a39940bc50728a51f08221497cd0b38a89`  
		Last Modified: Fri, 21 Sep 2018 10:23:38 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1542c91d2381b4a3c89083e3ae0c517e9338894a06a30aab361e4431c396a58`  
		Last Modified: Fri, 21 Sep 2018 10:23:37 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349ee6ca661f8b086f41121aa42313631d1fa894e932834d5a3353a21b30de3e`  
		Last Modified: Fri, 21 Sep 2018 10:23:35 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c266ab6488221a64d205f3a6a19361d5eff44a4cb808c0a1511d400e6334c6ae`  
		Last Modified: Fri, 21 Sep 2018 10:23:49 GMT  
		Size: 58.5 MB (58454311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0141d17fbb6afe82c818448d950d31a4ea77ba4a09f23fde75e0ca790602dc6`  
		Last Modified: Fri, 21 Sep 2018 10:23:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef0f920be22dd44ee3a1c9a8362bb5018a603f62001f17487bb585de1f6e840`  
		Last Modified: Fri, 21 Sep 2018 10:23:35 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36af02630d2105ce0c1c34007e101398ad9ce3220d2d6e0ce269098ce0327c1f`  
		Last Modified: Fri, 21 Sep 2018 10:23:35 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4-windowsservercore` - windows version 10.0.17134.285; amd64

```console
$ docker pull mongo@sha256:bee7b1ff67ed24e69c40b0c025d67e72c93fc0ab705df4e7c586c32c42a71394
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2265364170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d349f1df98b1ec78a5ecc0d3390996e7bbd809cf3ab9d5853348b1a43ceb9373`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Sat, 15 Sep 2018 09:39:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Sat, 15 Sep 2018 09:39:58 GMT
ENV MONGO_VERSION=4.0.2
# Sat, 15 Sep 2018 09:39:59 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.2-signed.msi
# Sat, 15 Sep 2018 09:40:00 GMT
ENV MONGO_DOWNLOAD_SHA256=a54030c609ef1ae99b85a78b9d4f1ef2d34fea991fc023830108e779f7fbee26
# Fri, 21 Sep 2018 10:08:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 21 Sep 2018 10:08:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 21 Sep 2018 10:09:00 GMT
EXPOSE 27017/tcp
# Fri, 21 Sep 2018 10:09:02 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f036448990c273bb1accf8d436799639bbb644326ae47f30fe4faed21c8d8d9`  
		Last Modified: Tue, 11 Sep 2018 17:11:59 GMT  
		Size: 547.2 MB (547225773 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:72421b921bc76cd58967f35b89a741539cec39dab3ff330e790096ac6853216a`  
		Last Modified: Fri, 21 Sep 2018 10:24:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be09566590efffd8b985d2eed70e9e5da3de0a58877c029ed4c7e28086fb2fa4`  
		Last Modified: Fri, 21 Sep 2018 10:24:09 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bc503065c3b51704eede206b6ce095c4f44716db9319b24d0f49355cef6a9f`  
		Last Modified: Fri, 21 Sep 2018 10:24:09 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7781fc6ae3df11d48bc471df8afe03df89141ca5c02a6d14625cfac34bb6c990`  
		Last Modified: Fri, 21 Sep 2018 10:24:06 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9281a5a6e7eff0837e6191530b7e7e5e74651950b5929d065f2d4d0da3360d0c`  
		Last Modified: Fri, 21 Sep 2018 10:24:20 GMT  
		Size: 58.4 MB (58441756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7caf097f3684a432722e07e134a5dfadb9d9558ffb34fbce1f8d4d0fe9e5d98d`  
		Last Modified: Fri, 21 Sep 2018 10:24:07 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577e98ecd246ba8011d71d9ea5f7f5ea7527945d426d5514136abc35b3f185fb`  
		Last Modified: Fri, 21 Sep 2018 10:24:06 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674d702d1abfa8ac14919b07e51b4ceac5d14e6c8bedf850fb57513c8670b98a`  
		Last Modified: Fri, 21 Sep 2018 10:24:06 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
