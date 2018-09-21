## `openjdk:11-ea-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:33e4293bfd51dfbea1a18100912d44867109853e7f176ee43d35f48ee29ac7f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.285; amd64

### `openjdk:11-ea-windowsservercore-1803` - windows version 10.0.17134.285; amd64

```console
$ docker pull openjdk@sha256:a7914fd5c15be7ab5aec05602e13b6065041717ba8f6521a545f3f929936ba73
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2394588361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e8b8d141d951963ca522ad5f26dd1da8b4b48611fe4d589efd5d5ffdfe284d3`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Thu, 13 Sep 2018 09:50:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 10:02:00 GMT
ENV JAVA_HOME=C:\jdk-11
# Thu, 13 Sep 2018 10:02:50 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 21 Sep 2018 09:30:27 GMT
ENV JAVA_VERSION=11-ea+28
# Fri, 21 Sep 2018 09:30:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk11/28/GPL/openjdk-11+28_windows-x64_bin.zip
# Fri, 21 Sep 2018 09:30:28 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Fri, 21 Sep 2018 09:32:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 21 Sep 2018 09:32:56 GMT
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
	-	`sha256:a911cc248ef9f987defedbaad7664b52fc397032080b977a4663731b9f303fd4`  
		Last Modified: Thu, 13 Sep 2018 10:29:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1fcfd192b0ee831ccb01cad021165d1cf536dbe91ae33a138e6d1364c29a1c`  
		Last Modified: Thu, 13 Sep 2018 10:29:33 GMT  
		Size: 4.7 MB (4653128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525da148311ed0e55649fe24edb4c16833d643d357018d0a6ade92266888cb93`  
		Last Modified: Fri, 21 Sep 2018 09:38:30 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5969c000961c00523f1ea7db6e7c1bacc32d62d552ba548ea546a1c7d61d9d1b`  
		Last Modified: Fri, 21 Sep 2018 09:38:30 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6411171bee99fda10fb64b787d3d3a48074bcfd3518363bd770a7986952f791f`  
		Last Modified: Fri, 21 Sep 2018 09:38:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016da88096580e299a2159579a97d3045e9721fbf6dd9060cf33ac7b66691cd`  
		Last Modified: Fri, 21 Sep 2018 09:38:51 GMT  
		Size: 183.0 MB (183014004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20e92019a8a7ce268c3d83578de2e3e00c67bc33326b9892b863ba19b7141a5`  
		Last Modified: Fri, 21 Sep 2018 09:38:30 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
