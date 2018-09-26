## `openjdk:12-ea-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:fc232a6feb3af3ab04d2ba4780911c61497013c58076ff87ce33e46eb5002759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.665; amd64

### `openjdk:12-ea-jdk-windowsservercore-1709` - windows version 10.0.16299.665; amd64

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
