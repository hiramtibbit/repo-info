## `openjdk:12-ea-20-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:90826fc7fffd58dbfcc3a3bd3b6330dee2d9919ed4ef121291bae61c79f6fcf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.785; amd64

### `openjdk:12-ea-20-jdk-windowsservercore-1709` - windows version 10.0.16299.785; amd64

```console
$ docker pull openjdk@sha256:8f29bc2ae932a7a6f3ced3158cafceed46d7889288a826b3ade722aeacf9a290
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3345971379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4c7b869ff6197ed9308d5bf245c27c4cbc8207b69a5080fcb47bd6d94d2945`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:21:58 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 21 Nov 2018 10:23:05 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 21 Nov 2018 10:23:06 GMT
ENV JAVA_VERSION=12-ea+20
# Wed, 21 Nov 2018 10:23:08 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/20/GPL/openjdk-12-ea+20_windows-x64_bin.zip
# Wed, 21 Nov 2018 10:23:09 GMT
ENV JAVA_SHA256=42f843635a0166951bd96a85d982ead987b6cfc07ba18b7f6830eb5a6c1df5c9
# Wed, 21 Nov 2018 10:25:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 21 Nov 2018 10:25:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea36ab330d906868d0bf99eff14a14b023ff4c1196d6d019743a1c179b9b2af`  
		Last Modified: Wed, 21 Nov 2018 10:56:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6887eed8a4a61124bd277b7a9e4385e2d963e1aa6734ff4e4839292a7de45c15`  
		Last Modified: Wed, 21 Nov 2018 10:56:30 GMT  
		Size: 4.8 MB (4781685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf59f96426eede0833e45d40368cad2d3e95a35cf44c207acdf8293376e2bd07`  
		Last Modified: Wed, 21 Nov 2018 10:56:25 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60652bba5447b938a75e44b4e30f1740503f364e562704ad53283a2cd8353087`  
		Last Modified: Wed, 21 Nov 2018 10:56:25 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d02b3a0c0c9ab35f372bef6464611f7834795d6b77a66499d59ce35e10320e`  
		Last Modified: Wed, 21 Nov 2018 10:56:25 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebe7b916d0031cbe4263b1e455dd952445332a3a28e4af8e0ff909ba0a564a5`  
		Last Modified: Wed, 21 Nov 2018 10:56:50 GMT  
		Size: 195.3 MB (195275053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a688da783681807b1aa2bdea409f1f771527ce04e4567e211ce99a378e8614`  
		Last Modified: Wed, 21 Nov 2018 10:56:25 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
