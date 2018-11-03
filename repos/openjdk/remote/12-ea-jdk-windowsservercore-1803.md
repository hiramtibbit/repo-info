## `openjdk:12-ea-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:a501464b31ca0e5d13c8bd9198fd4c92923d823c4ddc5a11d82b88c91ff57ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.345; amd64

### `openjdk:12-ea-jdk-windowsservercore-1803` - windows version 10.0.17134.345; amd64

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
