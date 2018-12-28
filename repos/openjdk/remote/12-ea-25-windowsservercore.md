## `openjdk:12-ea-25-windowsservercore`

```console
$ docker pull openjdk@sha256:1687d9ffabf1c437d1c3a753eca86cbd74e5d7cff82869eab7d52eef14c11bf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64
	-	windows version 10.0.16299.846; amd64
	-	windows version 10.0.17134.469; amd64

### `openjdk:12-ea-25-windowsservercore` - windows version 10.0.14393.2665; amd64

```console
$ docker pull openjdk@sha256:76fc1f4b4e3f63f4b2a9b6d6b3126e3fc7157f20d644ab3eca90b45ac62f81ad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5841300750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a0a19f03ebf2aee97dcdf789beeaf8e66e1d207a90e2be8ff051265812e2ba4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Tue, 25 Dec 2018 17:17:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:08:36 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 25 Dec 2018 18:10:15 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 26 Dec 2018 10:54:27 GMT
ENV JAVA_VERSION=12-ea+25
# Wed, 26 Dec 2018 10:54:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/25/GPL/openjdk-12-ea+25_windows-x64_bin.zip
# Wed, 26 Dec 2018 10:54:29 GMT
ENV JAVA_SHA256=a3c94a495ea402b6c752c5757dcd902ec497720d52f59cee756975615a0661c3
# Fri, 28 Dec 2018 10:18:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 28 Dec 2018 10:18:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:88c3d7be4c2760e750ccd244f2cd79c32fc9e1534640817aad858156500c4e0a`  
		Last Modified: Tue, 25 Dec 2018 17:51:28 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bfff8d5bb5e4de0bf1a82679e5ba46ee4d0d5cb5793e5088fe2df492d5e7ae`  
		Last Modified: Tue, 25 Dec 2018 18:47:35 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b4b45920298a8651f9197e3244a96b5f5406b2307c15bc66e351ab0819df1e`  
		Last Modified: Tue, 25 Dec 2018 18:47:37 GMT  
		Size: 5.2 MB (5234964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206827ecaf37bf82b9c9ceef7818be358beec0b7ff3d2ad92302e3ae10f1c468`  
		Last Modified: Fri, 28 Dec 2018 10:20:30 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6f0a22209e8ed0f2a56315e81c0d3227354d52ae739a1bda5c01524355e929`  
		Last Modified: Fri, 28 Dec 2018 10:20:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a9bbdeb007f7de05ea7bea3a44f057a346c54418074f9a7af3310db118f01d`  
		Last Modified: Fri, 28 Dec 2018 10:20:30 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a8a87ef76271eedff2bc5741127f153769b437b963a967491df265c17ba9b3`  
		Last Modified: Fri, 28 Dec 2018 10:21:30 GMT  
		Size: 201.3 MB (201331381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5469ec481827189f64d9e132c60000be6f1fff5137004c2a97e7320ba56150c0`  
		Last Modified: Fri, 28 Dec 2018 10:20:30 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-25-windowsservercore` - windows version 10.0.16299.846; amd64

```console
$ docker pull openjdk@sha256:1f5addc0c15dc9e99fb655644388a101145f399a491cc29ef7761f82e625ddc6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3353255130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59f3cb9a9fd6d88aeff3f9979d4e2b47dcd2c9725cd0ef546c3c78e8b2d32254`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 17:23:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:13:49 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 25 Dec 2018 18:15:14 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 26 Dec 2018 11:06:43 GMT
ENV JAVA_VERSION=12-ea+25
# Wed, 26 Dec 2018 11:06:45 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/25/GPL/openjdk-12-ea+25_windows-x64_bin.zip
# Wed, 26 Dec 2018 11:06:46 GMT
ENV JAVA_SHA256=a3c94a495ea402b6c752c5757dcd902ec497720d52f59cee756975615a0661c3
# Wed, 26 Dec 2018 11:09:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 26 Dec 2018 11:09:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7c1b47cffe80520ef16d931d598cdadd371f9cb1e4ca9304d9c7532bb19c9721`  
		Last Modified: Tue, 25 Dec 2018 17:52:11 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92ea34c8947496c4ba4f71419f23e2f42855cf3a17134b17c6c1e9cfa4fac77`  
		Last Modified: Tue, 25 Dec 2018 18:49:21 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b23f96865d3acacf763109c78e252c9808fa0252025af27639c5ef024ea3c`  
		Last Modified: Tue, 25 Dec 2018 18:49:23 GMT  
		Size: 4.8 MB (4787993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2a1c11c17bd8ee10dc9bdf56398f4d2224bd28802f2f175f2b46256bca2bfa`  
		Last Modified: Wed, 26 Dec 2018 11:13:48 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee626b498467ef03b85f1f2fe0181389b0bc71632d8bd95a8136b581e956e0ce`  
		Last Modified: Wed, 26 Dec 2018 11:13:47 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f425847e8ee84c5e515f4e2eaa1767d4a3cb834fa75fc33964cb1f77fba356b`  
		Last Modified: Wed, 26 Dec 2018 11:13:48 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51953a479525839864fbc658ce8f31df47fad405f19ea5985986362693a700b4`  
		Last Modified: Wed, 26 Dec 2018 11:15:10 GMT  
		Size: 196.3 MB (196322329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5391290abfe912d5f366419a57d1a1da40895cdccd9f59c592d08f3fd70fd6c`  
		Last Modified: Wed, 26 Dec 2018 11:13:47 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-25-windowsservercore` - windows version 10.0.17134.469; amd64

```console
$ docker pull openjdk@sha256:6881e8f80eef4550eff006c7a40923d64ff09f4abef4866ed959f8a759a61253
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2440194351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82a3785510403f27e48b4f09a31b0c97ec5d5958a2bb26dda9680dd68fd62c42`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Tue, 25 Dec 2018 18:18:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:18:16 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 25 Dec 2018 18:19:10 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 26 Dec 2018 11:09:40 GMT
ENV JAVA_VERSION=12-ea+25
# Wed, 26 Dec 2018 11:09:42 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/25/GPL/openjdk-12-ea+25_windows-x64_bin.zip
# Wed, 26 Dec 2018 11:09:43 GMT
ENV JAVA_SHA256=a3c94a495ea402b6c752c5757dcd902ec497720d52f59cee756975615a0661c3
# Wed, 26 Dec 2018 11:12:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 26 Dec 2018 11:12:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a716b198c71b782955b21f1eed303f89f487eaef823ebccdeb452b764512b3b`  
		Last Modified: Tue, 11 Dec 2018 22:06:40 GMT  
		Size: 583.9 MB (583898765 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:219a311071ee4293d1c43ed6fbbc267544771d491843ca5ff9c1a235c116c96d`  
		Last Modified: Tue, 25 Dec 2018 18:50:55 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e041b07d5705ead9d465304f6a88a043a8e59306e41db5b264a326f968bbbc70`  
		Last Modified: Tue, 25 Dec 2018 18:50:54 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484503c2bd858dba296ec81f5ca7ea4fe8c497502e92e94f0e56f6a181881d4d`  
		Last Modified: Tue, 25 Dec 2018 18:50:56 GMT  
		Size: 4.7 MB (4704156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e028df12475f30d864acfc7984367bd42bfcc2e3c2157872dba3675eee3d2ec6`  
		Last Modified: Wed, 26 Dec 2018 11:15:34 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d0b424e03b65433347df5fdeca8c59b23e745ee2e98ff46053d722e4b4317e`  
		Last Modified: Wed, 26 Dec 2018 11:15:34 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa59f1f9b3c8dc1e756d57735e1f696d6b619f6102939ce069a138917683a05`  
		Last Modified: Wed, 26 Dec 2018 11:15:34 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1e8daffb818db7de25e9185489f25b8b21d2a58c68d6c0d4f95060765bb7b6`  
		Last Modified: Wed, 26 Dec 2018 11:16:07 GMT  
		Size: 191.9 MB (191895933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd82f1ede91dfb304f7bd4945411ab8ac4779f16e594a21ad506b60b6a834f51`  
		Last Modified: Wed, 26 Dec 2018 11:15:34 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
