## `openjdk:12-ea-14-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:6cc18fdda66ca92d277c4dbcfd79792f1d641e58f3c3ef8b924d92149041111c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.665; amd64

### `openjdk:12-ea-14-jdk-windowsservercore-1709` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:96833619eca60c07e3f914e7e536227766621513a39edb6f69fedf61c526f42e
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3326635287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd6013e1470f0f4520be88842966a4f9002048499e58198460ce2274c5798bf`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Thu, 13 Sep 2018 09:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 10:30:41 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 03 Oct 2018 10:31:38 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 06 Oct 2018 09:19:58 GMT
ENV JAVA_VERSION=12-ea+14
# Sat, 06 Oct 2018 09:19:59 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/14/GPL/openjdk-12-ea+14_windows-x64_bin.zip
# Sat, 06 Oct 2018 09:20:00 GMT
ENV JAVA_SHA256=43ac13c36e6d868c55e4e5bfefa2e9ae1fa7fb4006fde49ac8b2a3e1b9ca8279
# Sat, 06 Oct 2018 09:22:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 06 Oct 2018 09:22:15 GMT
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
	-	`sha256:ae90fde8b680ca3d4b1758bddb83b5fe82603ef03dd52a2a2dd2d36c21484362`  
		Last Modified: Wed, 03 Oct 2018 11:07:00 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316584245e2e3ac9eef5fa802a273a49faaca6a35ed381972ca5d75b197aad5c`  
		Last Modified: Wed, 03 Oct 2018 11:07:03 GMT  
		Size: 4.7 MB (4743153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c14bf229b9257de9017fd20121dfa7255693f854210e9fd807e330e6dbe719`  
		Last Modified: Sat, 06 Oct 2018 09:26:35 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cd0bb904a1d2d76b599744d08f70e211ab92a1cc7f70560aee99614c70e313`  
		Last Modified: Sat, 06 Oct 2018 09:26:35 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec72d083503d127ed61e5c9e81d17ac956edf1b09c1952ad3207da35aef8172`  
		Last Modified: Sat, 06 Oct 2018 09:26:35 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318881530f1e34de451f0f82b63fb13b9df082e9f1c3754f874e368bc710fc4d`  
		Last Modified: Sat, 06 Oct 2018 09:26:57 GMT  
		Size: 189.2 MB (189248866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5110ee185d8697ab17081b8244216285390bc9119e23eef2e7177d88ec7e4193`  
		Last Modified: Sat, 06 Oct 2018 09:26:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
