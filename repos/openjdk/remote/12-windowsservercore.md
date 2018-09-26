## `openjdk:12-windowsservercore`

```console
$ docker pull openjdk@sha256:a93826fd14f6fbcad7c2f21e64788927deab458209e89cd3db6db3d21f7a3d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64
	-	windows version 10.0.16299.665; amd64
	-	windows version 10.0.17134.285; amd64

### `openjdk:12-windowsservercore` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:eaeb0f25a6fd0f9222101b3de2c914be9d956f514ff3fd6aa0bbb5110ca0793d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5786095509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6edc17fd95b40bd60a1a8b62ab9ceb05e04facd5bcf546c3ae649d0eb7d4483`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:42:25 GMT
ENV JAVA_HOME=C:\jdk-12
# Thu, 13 Sep 2018 09:44:05 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 26 Sep 2018 09:15:37 GMT
ENV JAVA_VERSION=12-ea+12
# Wed, 26 Sep 2018 09:15:38 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/12/GPL/openjdk-12-ea+12_windows-x64_bin.zip
# Wed, 26 Sep 2018 09:15:39 GMT
ENV JAVA_SHA256=0cf74cff43f57e2d73466e257c15e9827bb073f18f2422cbaee20b950312ad7c
# Wed, 26 Sep 2018 09:19:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 26 Sep 2018 09:19:01 GMT
CMD ["jshell"]
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
	-	`sha256:7aa2ad8eff720622c1b1f25bf31d2c32b588766208c093caef00e8b31961b74e`  
		Last Modified: Thu, 13 Sep 2018 10:24:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d41013d53a6436cb43e00e548dbba344be745186756d51785d7d2112f893dc`  
		Last Modified: Thu, 13 Sep 2018 10:24:12 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf3b5f90ddee927318cc694f2e987e9a4be7bff110d2728d6b461d343523b5f`  
		Last Modified: Thu, 13 Sep 2018 10:24:15 GMT  
		Size: 5.1 MB (5091320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad0910494ee9fe0d955855389d2f7fa7a8cc58c2808083ba315de5bbfa610b4`  
		Last Modified: Wed, 26 Sep 2018 09:24:58 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0a17647cc8dff31771b597974c38db4da542965079801c9836e67e3302c568`  
		Last Modified: Wed, 26 Sep 2018 09:24:58 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46deacdf5ee54b1c1c07d41723cf54703138b55aa2e9811b530fa5bc30d2cf2`  
		Last Modified: Wed, 26 Sep 2018 09:24:58 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb6a8d3cc585101e7432e81d3ccb409e015ae60a41763aeed1f456bddeed710`  
		Last Modified: Wed, 26 Sep 2018 09:25:21 GMT  
		Size: 195.1 MB (195140900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a80c4aff5024ff764c2a0c47ddcf5c8a115357bbad46d2b4b89ef63322d39f`  
		Last Modified: Wed, 26 Sep 2018 09:24:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-windowsservercore` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:e941e570c5d2d1df9846ae92d7c9a4f3976961acc11363e9382aad405df417ac
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3327677308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ddf88a0ea5f55a4f09add74ae13fc980003807adc65450fb61e7f397d25101a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Thu, 13 Sep 2018 09:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:47:27 GMT
ENV JAVA_HOME=C:\jdk-12
# Thu, 13 Sep 2018 09:48:45 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 26 Sep 2018 09:19:07 GMT
ENV JAVA_VERSION=12-ea+12
# Wed, 26 Sep 2018 09:19:09 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/12/GPL/openjdk-12-ea+12_windows-x64_bin.zip
# Wed, 26 Sep 2018 09:19:10 GMT
ENV JAVA_SHA256=0cf74cff43f57e2d73466e257c15e9827bb073f18f2422cbaee20b950312ad7c
# Wed, 26 Sep 2018 09:21:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 26 Sep 2018 09:21:23 GMT
CMD ["jshell"]
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
	-	`sha256:fa61e3e01eeaa5482e77157970441ee8c2414720462e140b668a5b58902a78f5`  
		Last Modified: Thu, 13 Sep 2018 10:25:08 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f915f46bd201ed77d19fd21bb1a003cd14161bfbc561ddc5846b6981820caf55`  
		Last Modified: Thu, 13 Sep 2018 10:25:08 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f952dfc8ea57f78895574e91e37e90226fdfd33520cbc1f91e6de3a753d5`  
		Last Modified: Thu, 13 Sep 2018 10:25:11 GMT  
		Size: 4.7 MB (4723981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05caeedff1fda5df53f69c68ad6651462eace2ac0c193c37f754dc4f851e4fff`  
		Last Modified: Wed, 26 Sep 2018 09:25:49 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f6f524570a6eb9276e2b37ab3a8bfcb509c08643663d43ea8a5fae5ca3349a`  
		Last Modified: Wed, 26 Sep 2018 09:25:49 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb732060e671790031ff8400388d99c522f36797481f97d43ef8793995a5ca4`  
		Last Modified: Wed, 26 Sep 2018 09:25:49 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91695329c4397af9721e49737471953e42d0d6ee2e06cccbfdda5cfb363edf1`  
		Last Modified: Wed, 26 Sep 2018 09:26:20 GMT  
		Size: 190.3 MB (190310059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e54dbc4d2b64fcf7c36be2b4ac530191d2379f0c8ca9d2fabda979938e7031`  
		Last Modified: Wed, 26 Sep 2018 09:25:50 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-windowsservercore` - windows version 10.0.17134.285; amd64

```console
$ docker pull openjdk@sha256:67d42b61647a798440dd8ff8212b4221581f04e2abbb6cc0dd8b5c5469857732
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2397487842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:438f94cc9a4d89e0dd1d53b8a5e81039aee650981644c5f31e16cd0e5dd89126`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Thu, 13 Sep 2018 09:50:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:50:55 GMT
ENV JAVA_HOME=C:\jdk-12
# Thu, 13 Sep 2018 09:52:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 26 Sep 2018 09:21:30 GMT
ENV JAVA_VERSION=12-ea+12
# Wed, 26 Sep 2018 09:21:31 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/12/GPL/openjdk-12-ea+12_windows-x64_bin.zip
# Wed, 26 Sep 2018 09:21:32 GMT
ENV JAVA_SHA256=0cf74cff43f57e2d73466e257c15e9827bb073f18f2422cbaee20b950312ad7c
# Wed, 26 Sep 2018 09:23:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 26 Sep 2018 09:23:39 GMT
CMD ["jshell"]
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
	-	`sha256:499c5d8410bcb30d8e576aa1248844529b2af7aff7307a4b79f366790c87756f`  
		Last Modified: Thu, 13 Sep 2018 10:26:08 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a707f51d0c866dc051de3d98f35b0059daf96c55f64e7813dcacc2ef54a4474d`  
		Last Modified: Thu, 13 Sep 2018 10:26:08 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f3fe0d22db23f29670f1ef789a4799b1ebac94bc42ff79abfab3449ac0c92c`  
		Last Modified: Thu, 13 Sep 2018 10:26:09 GMT  
		Size: 4.7 MB (4653887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827e14d398792e77fca1885e39b0146d81f12aff0f1f319c349e865d20349dee`  
		Last Modified: Wed, 26 Sep 2018 09:26:48 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701b35d00518f159f94fe13783f758e82dffd5849991c5d6c39274177fee785`  
		Last Modified: Wed, 26 Sep 2018 09:26:47 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfc23991e0a375f72fafa6767b5a1ea0276d1267f4db025989321dfb3cd2c71`  
		Last Modified: Wed, 26 Sep 2018 09:26:47 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4eca237d47ebb5165bbac291760acbf448666f7fb892296b3bf5623f699b4b`  
		Last Modified: Wed, 26 Sep 2018 09:27:09 GMT  
		Size: 185.9 MB (185912737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fa936d0384594fe96f621ae112f539bc169cc58c9775202b74c88c2b8cefcd`  
		Last Modified: Wed, 26 Sep 2018 09:26:47 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
