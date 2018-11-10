## `openjdk:12-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:559bdfff4f77f054b612c1337b1dca6346a7f2e9dfdab8117b632f2905c710ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.726; amd64

### `openjdk:12-jdk-windowsservercore-1709` - windows version 10.0.16299.726; amd64

```console
$ docker pull openjdk@sha256:baf245f5f694c46463ee76e7c760c7209ab4243036502383ded02caf0eb614c1
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3340598260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd0cc19ed064d68aa9c5e610ce42f56def14019da77cc6a7c44d964e0364b6c`
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
# Sat, 10 Nov 2018 11:36:44 GMT
ENV JAVA_VERSION=12-ea+19
# Sat, 10 Nov 2018 11:36:45 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/19/GPL/openjdk-12-ea+19_windows-x64_bin.zip
# Sat, 10 Nov 2018 11:36:47 GMT
ENV JAVA_SHA256=6053dd7893539141545a82fdf0b948dd1723bed6c1011ec3fdeaac35423f6b29
# Sat, 10 Nov 2018 11:39:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 10 Nov 2018 11:39:11 GMT
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
	-	`sha256:2baed5b667c36ade6736cc8317ba5a21ed5f5e398b8045cc69044d025638382d`  
		Last Modified: Sat, 10 Nov 2018 11:44:18 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc71e1bf6724a9974aa9806ac5ad808de86865b0854c49af76e8114a81fa9a2`  
		Last Modified: Sat, 10 Nov 2018 11:44:17 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0b9cfbc8e3639567c707a749150ddf6a252c8061a26fcff9fa81edb5ae890e`  
		Last Modified: Sat, 10 Nov 2018 11:44:17 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493f01ef9595bf5cca9f86f5e461919b066f171693f261ef124f9bf905359467`  
		Last Modified: Sat, 10 Nov 2018 11:44:41 GMT  
		Size: 195.1 MB (195067289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0b15b036a749a200eab759fb93a1ff3ee28b3a9e4ed0e25b3f54640cfb6126`  
		Last Modified: Sat, 10 Nov 2018 11:44:17 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
