## `openjdk:11-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:9b410371e7afbead55a37e14dd6a14640c33bef6bc17a056c19e619faa9ba5c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.285; amd64

### `openjdk:11-jdk-windowsservercore-1803` - windows version 10.0.17134.285; amd64

```console
$ docker pull openjdk@sha256:8c52ae1d39cd868b6b1822a852354ff4eb0df86e665efd5d3ffc71c118041d09
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2394595463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e57d44e82a6954becf1b00e0e16414d42ffa394d4bb3e4ab1f3ec1ed2bedf8ee`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Thu, 13 Sep 2018 09:50:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 10:44:13 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 03 Oct 2018 10:45:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 03 Oct 2018 10:45:04 GMT
ENV JAVA_VERSION=11
# Wed, 03 Oct 2018 10:45:05 GMT
ENV JAVA_URL=https://download.java.net/java/ga/jdk11/openjdk-11_windows-x64_bin.zip
# Wed, 03 Oct 2018 10:45:06 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Wed, 03 Oct 2018 10:46:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 03 Oct 2018 10:46:58 GMT
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
	-	`sha256:bbedf3867f83e747f4d46d841c7ea751b8096686c02651c3dd7a250bdc3e68e5`  
		Last Modified: Wed, 03 Oct 2018 11:10:32 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64e6afc1d72115f82da84ef44286dd6f0336704f99c66cbe09679b4109a472e`  
		Last Modified: Wed, 03 Oct 2018 11:10:34 GMT  
		Size: 4.7 MB (4670527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5632ebcccbfacb40933469e0f86ec762c8cc489b1f76eccaaddc95aaee34ba18`  
		Last Modified: Wed, 03 Oct 2018 11:10:30 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185c19ef7c52223f74d4d2cb73d89cad4ec7b3894850b49dc894903490338d18`  
		Last Modified: Wed, 03 Oct 2018 11:10:29 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958b505c00908b3b8d17bcb1808f2c295bc1720361e6ff5988979b0258287936`  
		Last Modified: Wed, 03 Oct 2018 11:10:29 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52711d4ca783c468005b058f2865febeeef6d3afa07f7a78b5e76f6d819eb74`  
		Last Modified: Wed, 03 Oct 2018 11:11:05 GMT  
		Size: 183.0 MB (183003702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278468ad6e62e7cde6f2efb8648f2fb6aab8696becf0f84b3f088fc0ed1ac581`  
		Last Modified: Wed, 03 Oct 2018 11:10:29 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
