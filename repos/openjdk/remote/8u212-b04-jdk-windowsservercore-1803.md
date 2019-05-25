## `openjdk:8u212-b04-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:d07ffaf92133bc2438996f5d92fb847986f72d6bc83e02104c182dfde9a29f54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `openjdk:8u212-b04-jdk-windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull openjdk@sha256:e62541b1fab117a3330cde315ba6eee9b5b197ab86c289dd0414bc9fce0b62ac
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2408590333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0414a90980d1c7cc4a2ad5283a0bfc6fa5c6c28969d20ac693d216eadafdd1e8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 12:50:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 24 May 2019 23:36:45 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 24 May 2019 23:37:26 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 24 May 2019 23:37:28 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 23:37:29 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Fri, 24 May 2019 23:37:31 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 23:39:01 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac -version'; javac -version; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:437e42e2c79862963e84efa4879b7522ff44416964747070df92412c08b9d147`  
		Last Modified: Wed, 22 May 2019 13:23:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca286b9003968aa084b96f07a644f17029279853b4e0d886e71fe6aed0b67dfe`  
		Last Modified: Fri, 24 May 2019 23:57:48 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9904ba75a09f8073f21d3e48b870afa2bcae69710a151bac6ebabbb78257b4e0`  
		Last Modified: Fri, 24 May 2019 23:57:47 GMT  
		Size: 4.8 MB (4767254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d73ee38c163fddb78a81e87abbdeea5b06e86fe4c34e58fefb5cf9aa9802ae`  
		Last Modified: Fri, 24 May 2019 23:57:46 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f63cc8959b7a2cd173b055b5b8769e28614da7b516c45236a66f931d82bdb7`  
		Last Modified: Fri, 24 May 2019 23:57:46 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8120accfcf47c68020b8530f0c90c3a67304ca6fca843d8b283089b5cddd7bdc`  
		Last Modified: Fri, 24 May 2019 23:57:46 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b195a996c5bb29c536580e4ce74be26e2c5b1d8913055f2c35a502d1ed01ac`  
		Last Modified: Fri, 24 May 2019 23:58:25 GMT  
		Size: 100.4 MB (100360419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
