## `openjdk:12-ea-18-windowsservercore`

```console
$ docker pull openjdk@sha256:08a22445918acb9bce0801218ddcefd489dd5dfdb62819c0ff939395a1cb6f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64
	-	windows version 10.0.16299.726; amd64
	-	windows version 10.0.17134.345; amd64

### `openjdk:12-ea-18-windowsservercore` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:ee14af4f78eb60d2c4ed0d9999f9931e09de79ccbb45ed5f58e3c691d781f410
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5802097030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a4336c8a22a7e699a3d45cf9bd0b1d2cf38329825f3b6d22225e580974ae70`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Wed, 10 Oct 2018 09:36:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:21:03 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 10 Oct 2018 10:22:53 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 03 Nov 2018 10:34:34 GMT
ENV JAVA_VERSION=12-ea+18
# Sat, 03 Nov 2018 10:34:35 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/18/GPL/openjdk-12-ea+18_windows-x64_bin.zip
# Sat, 03 Nov 2018 10:34:36 GMT
ENV JAVA_SHA256=788f13148f1025f5ac875a6df420741d89b77dcdbfb9fa74b36a0f37f41f3806
# Sat, 03 Nov 2018 10:38:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 03 Nov 2018 10:38:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d41004b1d809eac4e77c97920984b278977d36627024ab085d0dd8ccc941ddeb`  
		Last Modified: Wed, 10 Oct 2018 10:08:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f2b49afd3609a249fe7bf207dc223e3894f836b1e2e1ea8d2427f2aa818283`  
		Last Modified: Wed, 10 Oct 2018 11:03:04 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4cd4842c91e00185651e122353cd21466f678b55d81a9c073a5415899b6232`  
		Last Modified: Wed, 10 Oct 2018 11:03:06 GMT  
		Size: 5.1 MB (5083722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48622c17967dbcd94c01867bad54dc851bfce41ee01068b91f915590f9b4d9`  
		Last Modified: Sat, 03 Nov 2018 10:45:21 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e0b62b377bde51c823b3f50bd80b4d11d3cf82af399e4377dfbf3e7e6ce537`  
		Last Modified: Sat, 03 Nov 2018 10:45:21 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555ffc7cda7e5c9a04c3bf4f51e787caacf99ae89b06e1ab5d53e48adbbb8bf4`  
		Last Modified: Sat, 03 Nov 2018 10:45:21 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd0240465de862fc6d80cb95b076c1378f38fbc3fd8276d9662bfb11367b5e7`  
		Last Modified: Sat, 03 Nov 2018 10:45:46 GMT  
		Size: 199.9 MB (199895180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a482d63eabbc05827b6d314ac458ce75e2b74b62b73862e3b177d43da1bf0`  
		Last Modified: Sat, 03 Nov 2018 10:45:21 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-18-windowsservercore` - windows version 10.0.16299.726; amd64

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

### `openjdk:12-ea-18-windowsservercore` - windows version 10.0.17134.345; amd64

```console
$ docker pull openjdk@sha256:9687971ce3feb3856f5b249d255dd15c89985c2d3c98837bdb0b5d72b4623df9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2425085415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4130a1a503b5ae74a4f050dd5856e0f0305b05a611902128634b69f051637e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 01 Oct 2018 21:32:36 GMT
RUN Install update 10.0.17134.345
# Wed, 10 Oct 2018 10:30:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:30:27 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 10 Oct 2018 10:31:33 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 03 Nov 2018 10:40:59 GMT
ENV JAVA_VERSION=12-ea+18
# Sat, 03 Nov 2018 10:41:00 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/18/GPL/openjdk-12-ea+18_windows-x64_bin.zip
# Sat, 03 Nov 2018 10:41:01 GMT
ENV JAVA_SHA256=788f13148f1025f5ac875a6df420741d89b77dcdbfb9fa74b36a0f37f41f3806
# Sat, 03 Nov 2018 10:43:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 03 Nov 2018 10:43:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:eba07b94d5f77aa900bf02c4247fc580222254782681cc3c74a7cf9566e8890a`  
		Last Modified: Mon, 08 Oct 2018 19:44:48 GMT  
		Size: 570.0 MB (570044587 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:27edf24f1e4fe928232c90f140f4c86cd7eed50efd07761c6c0832c7bfe26d30`  
		Last Modified: Wed, 10 Oct 2018 11:04:51 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f85d281352e27f7b30dd9de055e7b8d0820d635c1b51c696c95884b3b77322a`  
		Last Modified: Wed, 10 Oct 2018 11:04:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778c8fe5d5b6d982b9efce6ae468a1843f175d7b56eb4e89908ebb5a198af2bf`  
		Last Modified: Wed, 10 Oct 2018 11:04:53 GMT  
		Size: 4.7 MB (4683934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fc062da18b6777460e462730cfe8380f769cc11192a841459cba0a5bf316ec`  
		Last Modified: Sat, 03 Nov 2018 10:47:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6403d43d3976c20ec5456619e07b041130648734fec13fa4c438391f3c8936`  
		Last Modified: Sat, 03 Nov 2018 10:47:11 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307e1eb86530043eca3726955ac6362f922d764b2bc78a1353b05132d0044abf`  
		Last Modified: Sat, 03 Nov 2018 10:47:11 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debb46bd9ccc4556cd50064650b68375d6cd3f4d7d6658b2768036c1ac8a3f52`  
		Last Modified: Sat, 03 Nov 2018 10:47:34 GMT  
		Size: 190.7 MB (190661453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e99615b0ef7e10afbef05a98dd09076add6f27dd4779fa1393e9d7583dfff7d`  
		Last Modified: Sat, 03 Nov 2018 10:47:11 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
