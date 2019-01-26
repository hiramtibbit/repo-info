## `openjdk:8-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:18e66bfb80c2dca23e93c5101c9d81e12428a68888e80cfcc332babf828d650f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `openjdk:8-jdk-windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull openjdk@sha256:aa1c7b6f05b29ada45c47281a2b0c2a98f6fe781415f861b0119cc5bf8d919f0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3262829964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57df3f80aedbab18b48a39e1cd731debeee92fcb0ac7f6b86e277b79b38e1564`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 11:21:45 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 11 Jan 2019 11:22:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 26 Jan 2019 11:12:06 GMT
ENV JAVA_VERSION=8u201
# Sat, 26 Jan 2019 11:12:07 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Sat, 26 Jan 2019 11:12:08 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Sat, 26 Jan 2019 11:12:10 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Sat, 26 Jan 2019 11:13:55 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc4fe126b6e2ff963f858269d65dbb18dfd023a7e9e24bb4940f53cf18f1dcd`  
		Last Modified: Fri, 11 Jan 2019 11:47:07 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1158185279e0622473aa47e89c03aba05bc340332a6c68a1a02f0e60dd319c1d`  
		Last Modified: Fri, 11 Jan 2019 11:47:12 GMT  
		Size: 4.8 MB (4783809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c86145047d7d019600f4677ac101f988f46a73c7a3a649f2299e99657ede16e`  
		Last Modified: Sat, 26 Jan 2019 11:42:10 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611b7c0add54d55d9d48aa0eab1b0ef86c87433b5e3414c4732f14a8e938c930`  
		Last Modified: Sat, 26 Jan 2019 11:42:10 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91c06bae70c8f539b0587bbfcb920f5ba8e94e046e648a49b8ebdf2f564d2da`  
		Last Modified: Sat, 26 Jan 2019 11:42:10 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0970d2947fc61575e727f9c69e1346d24b78fb00c3ab3e483df181a1dac68a01`  
		Last Modified: Sat, 26 Jan 2019 11:42:10 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d54c4bc2ca5b1f7a47ace0aa56fe82071794fb5410e4c277d1597a5d8821ad8`  
		Last Modified: Sat, 26 Jan 2019 11:44:12 GMT  
		Size: 111.0 MB (110983073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
