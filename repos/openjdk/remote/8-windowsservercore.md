## `openjdk:8-windowsservercore`

```console
$ docker pull openjdk@sha256:b7598a6565f48d01ae128f2494798c997d85ce51a03d7b144e9c1f5a2a348846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64
	-	windows version 10.0.17134.523; amd64
	-	windows version 10.0.17763.253; amd64

### `openjdk:8-windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull openjdk@sha256:985d0dfe5c38feb056b80937cddf1793e3a42e202464adaac03a8634983984ce
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5752495172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b558e10fa98dce6b6e7c77e558b5b30806a4c7505d3f5fa898f6dadaa4fb6457`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 11:18:18 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 11 Jan 2019 11:19:18 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 26 Jan 2019 11:09:38 GMT
ENV JAVA_VERSION=8u201
# Sat, 26 Jan 2019 11:09:40 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Sat, 26 Jan 2019 11:09:41 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Sat, 26 Jan 2019 11:09:42 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Sat, 26 Jan 2019 11:11:51 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6fde31c5d8c81f2c82316c26411814a455a2721d2784f51175600f73cd237`  
		Last Modified: Fri, 11 Jan 2019 11:46:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806046c56985d461b8c8de1444188d78e05983371de5c391c7f8f20f35eeb8db`  
		Last Modified: Fri, 11 Jan 2019 11:46:36 GMT  
		Size: 5.2 MB (5225798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473d90f565dfeb5d6d0d18bb797898e9aad843014791cc15add38c67cc9ef026`  
		Last Modified: Sat, 26 Jan 2019 11:41:07 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b87a3ad49da9efbeac1b13a48bb0d7e030d00612c1a553361c5d3827673802`  
		Last Modified: Sat, 26 Jan 2019 11:41:07 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dc817893f7796b43ee3de7b0fe3fa55a2207fc02c19dd24413fe5b51a1cf7b`  
		Last Modified: Sat, 26 Jan 2019 11:41:08 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9b184a35bcbc19d3456bbfe43e1b5b1beb2137c5744165574d5fe0caf1d7e6`  
		Last Modified: Sat, 26 Jan 2019 11:41:08 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f88b0d310959d2cf1a583a33777df8d64c1b13bf134ec247fa53cdb8adb42d`  
		Last Modified: Sat, 26 Jan 2019 11:41:53 GMT  
		Size: 111.4 MB (111446058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-windowsservercore` - windows version 10.0.16299.904; amd64

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

### `openjdk:8-windowsservercore` - windows version 10.0.17134.523; amd64

```console
$ docker pull openjdk@sha256:86d861991ce79ee8bb5f167ee82280b0552d2df15f3e5b305b4f799d5aca32a8
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2356932894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28f441c29fef1f04c966aeee4e015ef9dfc5d935c1aed52ac3fe87170d9e93b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 11:24:43 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 11 Jan 2019 11:25:30 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 26 Jan 2019 11:14:02 GMT
ENV JAVA_VERSION=8u201
# Sat, 26 Jan 2019 11:14:04 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Sat, 26 Jan 2019 11:14:05 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Sat, 26 Jan 2019 11:14:06 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Sat, 26 Jan 2019 11:15:27 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f40afb6f83974ecb870826b1c484f5742308e550adb5d6c57fb5f9594cef06f`  
		Last Modified: Fri, 11 Jan 2019 11:49:24 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e4ae02f0db967b3fa5d729c2e0b246c8d7bee2ae483a17bb87b12e9db3beb6`  
		Last Modified: Fri, 11 Jan 2019 11:49:26 GMT  
		Size: 4.7 MB (4678787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e48ae761374716b1d762847dd702b3e2c61d4fd36c37af86c3b851ddd1eb254`  
		Last Modified: Sat, 26 Jan 2019 11:44:29 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed46405e9ae2ce6feefdde08a7f3c82f3e75732762a71e1cbd86874586b4279`  
		Last Modified: Sat, 26 Jan 2019 11:44:29 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09e28dea9245b4cc80a5e17fafbd93016d4718cc9c4ee7ec3bab478edd8b8ec`  
		Last Modified: Sat, 26 Jan 2019 11:44:29 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9824cb2fbefa961f2a145b07b0c95b1ceaef4d2582fe5ae06acce52d66ada0`  
		Last Modified: Sat, 26 Jan 2019 11:44:29 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c21059774263bd6ddb21d054551352a8a41eb2b40fd0f3c47e018004be359faf`  
		Last Modified: Sat, 26 Jan 2019 11:44:54 GMT  
		Size: 106.6 MB (106559760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-windowsservercore` - windows version 10.0.17763.253; amd64

```console
$ docker pull openjdk@sha256:b8a04e91613684436b25cb4538d33eb3e17e709e6ec7f8cb7ea4c2c52fe12e9b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (1960718912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:685f7489417c9d4c9778ad9671347691d1cc73f1a1576afa997c0e5e671b2039`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809_RTM_amd64
# Wed, 02 Jan 2019 22:33:05 GMT
RUN Install update 1809_amd64
# Fri, 11 Jan 2019 12:21:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 18 Jan 2019 10:34:54 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 18 Jan 2019 10:35:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 26 Jan 2019 11:15:44 GMT
ENV JAVA_VERSION=8u201
# Sat, 26 Jan 2019 11:15:45 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Sat, 26 Jan 2019 11:15:46 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Sat, 26 Jan 2019 11:15:47 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Sat, 26 Jan 2019 11:17:06 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2ac060f1ef0656a73755234824c317294dcaf934c9f0933b1a3aa349d8e4fbf3`  
		Last Modified: Tue, 08 Jan 2019 19:21:17 GMT  
		Size: 315.3 MB (315326112 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:409ca3908f9b0e2af8c5b8e8e66b93a5b0b79aa380a8750859965d0017697547`  
		Last Modified: Fri, 11 Jan 2019 14:00:24 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cd049b2f6597e57d85bdc82e208da14983d95c0a9bed881e647d224f795572`  
		Last Modified: Fri, 18 Jan 2019 10:54:52 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1475a4d4d21fc19c2c2f1f00e81f3cdcc74b6a50a52d7014f0ea237ab5f495d`  
		Last Modified: Fri, 18 Jan 2019 10:54:53 GMT  
		Size: 4.1 MB (4143348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f455662b2c4d711ca6418cebea42d8b558aaab2e66b66fb6cd400231ac095a1`  
		Last Modified: Sat, 26 Jan 2019 11:45:12 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3268073e22671015a18f10f76646976ab6b4d20192418dbca01d5ebb99a46d6b`  
		Last Modified: Sat, 26 Jan 2019 11:45:11 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e50d1f0ca22f0e8b5ca04bf6e7a6d9627bce9bbec5a839f12f8992696d56d0`  
		Last Modified: Sat, 26 Jan 2019 11:45:12 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eac3214ce9f8b47499b9101be928b6c5f24913eff6a5231e7aa6297992a6c41`  
		Last Modified: Sat, 26 Jan 2019 11:45:11 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5c2f423ec59fbe2cbdd5db56a33b376bb8bbf32a0d5e13fce7b57ec8884fca`  
		Last Modified: Sat, 26 Jan 2019 11:45:38 GMT  
		Size: 106.6 MB (106556882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
