## `openjdk:12-ea-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:69d03362f9374cfd24fdb8ca6ee96acb4b6c03ffb7f9e07f42ab16824693a4da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.726; amd64

### `openjdk:12-ea-jdk-windowsservercore-1709` - windows version 10.0.16299.726; amd64

```console
$ docker pull openjdk@sha256:6da2abde32ae431569334b0763e53219f0f48392434b51800015767500c3e0fe
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3340604780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3e621d99efd6c0aba0acd5682c37730e942aee40fe99e05485cf73b712341d2`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 01 Oct 2018 22:02:14 GMT
RUN Install update 10.0.16299.726
# Wed, 10 Oct 2018 09:42:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:26:42 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 10 Oct 2018 10:28:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 03 Nov 2018 10:38:17 GMT
ENV JAVA_VERSION=12-ea+18
# Sat, 03 Nov 2018 10:38:18 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/18/GPL/openjdk-12-ea+18_windows-x64_bin.zip
# Sat, 03 Nov 2018 10:38:19 GMT
ENV JAVA_SHA256=788f13148f1025f5ac875a6df420741d89b77dcdbfb9fa74b36a0f37f41f3806
# Sat, 03 Nov 2018 10:40:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 03 Nov 2018 10:40:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd7a4737dfbb59b49c30480146e7f0a61842409755bd479b63004c5643d0ed3`  
		Last Modified: Mon, 08 Oct 2018 19:38:11 GMT  
		Size: 866.5 MB (866458210 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cf0d3e1d36b0cda001b50a29a3b2898c0f456696a4491b2d5536e4af41eed468`  
		Last Modified: Wed, 10 Oct 2018 10:08:52 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19865e1a3d44da656772f14c9b6bcaf79e686d2721aab008563de748a895280f`  
		Last Modified: Wed, 10 Oct 2018 11:03:58 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bab5bdc16ecbdb302a0c04a6e81913ccd6ebc425dc9ac4aac12acd89118396`  
		Last Modified: Wed, 10 Oct 2018 11:04:00 GMT  
		Size: 4.8 MB (4765004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f220f894348406191ec1f9e7831275aefb1dc2ede438d99779b868ed3d37b7c7`  
		Last Modified: Sat, 03 Nov 2018 10:46:18 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2e8aa93e7e58dde6e7098e0d8cc39a2676a3545d220e3088077c8be1968961`  
		Last Modified: Sat, 03 Nov 2018 10:46:18 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02403109e9bc9e62d85a878f2e9f8727f8092053c7ce8c4973c64b8ca704c88`  
		Last Modified: Sat, 03 Nov 2018 10:46:19 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c916846747554cccd455c33fed4cedf6a834835c19f2de06ef927977ae8ab1`  
		Last Modified: Sat, 03 Nov 2018 10:46:42 GMT  
		Size: 195.1 MB (195073814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98ebce3844f9f56e107510f318903c901c57e4a928845a7de2be727223a71fc`  
		Last Modified: Sat, 03 Nov 2018 10:46:18 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
