## `openjdk:11-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:330351431a527ee5b8e5a5c0d5b227128dfa144bb1a4f8f0b7831448f8b92b92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.285; amd64

### `openjdk:11-jdk-windowsservercore-1803` - windows version 10.0.17134.285; amd64

```console
$ docker pull openjdk@sha256:1d742f7fc44019099b7b2b8d51f420b379a8500796e6d00ca1de3b472f1a888f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2394559566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83aee56664f4dc93beb2191ec5c897feefbc43891000ed1dd9eb40b5ea5cceab`
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
# Thu, 13 Sep 2018 10:02:51 GMT
ENV JAVA_VERSION=11+28
# Thu, 13 Sep 2018 10:02:53 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk11/28/GPL/openjdk-11+28_windows-x64_bin.zip
# Thu, 13 Sep 2018 10:02:54 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Thu, 13 Sep 2018 10:05:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 13 Sep 2018 10:05:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
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
	-	`sha256:2e5aff8f09bf65a8d5555b2d861d9ab39d6af87a2da2cba6192070f2cf5acfa0`  
		Last Modified: Thu, 13 Sep 2018 10:29:29 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45f5fc185983600ae4f3f9896c4a71d28ac01a5166256ce9444bd1e099e5fbf`  
		Last Modified: Thu, 13 Sep 2018 10:29:29 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9d83838eed4dfa76cb0b6adaea2a4cf2d991c713341adc0dba4baf6153deb6`  
		Last Modified: Thu, 13 Sep 2018 10:29:29 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87de2d045884f23388b292bb9286dbc8ba0aee2b0431f5141eaddf2bf15f910c`  
		Last Modified: Thu, 13 Sep 2018 10:30:05 GMT  
		Size: 183.0 MB (182985242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f718503edbf58a3f7ced37df2d626d4c77cf224b1ba007b5539d7ba88b95d26`  
		Last Modified: Thu, 13 Sep 2018 10:29:29 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
