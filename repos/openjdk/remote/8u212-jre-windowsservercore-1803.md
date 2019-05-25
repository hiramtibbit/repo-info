## `openjdk:8u212-jre-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:36011800e502ce9da402351c666adc826d74747cd2ce9a83f0be35c28c10a7b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `openjdk:8u212-jre-windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull openjdk@sha256:89f0e65975416e28a2d1309a803251c96832812666d84f479e3c189952fa7568
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2359200478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b35b023d36eaa2d85c85fa6116728870555ef62155e64dae7c3ec71b2190bf4`
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
# Fri, 24 May 2019 23:43:58 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 23:43:59 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 23:44:59 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
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
	-	`sha256:756f3203bf760a221e5830c9628abef1898d78f1ffd012d08511e7cfbc965da3`  
		Last Modified: Sat, 25 May 2019 00:01:10 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56be65ac0315aa7f47c790b3f9b7c4cfb762005ce00492733c26dad2608ee72`  
		Last Modified: Sat, 25 May 2019 00:01:10 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babc33a67bfe495faec01887a41f79e55e2fdd805ae617f2faf99105b86bedc3`  
		Last Modified: Sat, 25 May 2019 00:01:26 GMT  
		Size: 51.0 MB (50970567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
