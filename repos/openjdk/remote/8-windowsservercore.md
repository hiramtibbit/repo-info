## `openjdk:8-windowsservercore`

```console
$ docker pull openjdk@sha256:53ef7b3f18c6892b52505a1f06cfc8290fae299c7f71f377b25161e505ade71c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64
	-	windows version 10.0.16299.785; amd64
	-	windows version 10.0.17134.345; amd64

### `openjdk:8-windowsservercore` - windows version 10.0.14393.2608; amd64

```console
$ docker pull openjdk@sha256:30bafc521f5043a9c948765efb72fce8da8bb3f47922b9a04037b38c0d018092
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5750543094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8eb64c120b41e64995fe6f5491a03a546cdb2b88195138536b0878be843bb67`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:39:16 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 21 Nov 2018 10:40:39 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 21 Nov 2018 10:47:45 GMT
ENV JAVA_VERSION=8u191
# Wed, 21 Nov 2018 10:47:46 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Wed, 21 Nov 2018 10:47:47 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Wed, 21 Nov 2018 10:47:48 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Wed, 21 Nov 2018 10:49:48 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a102a3df7d886927b6eebc598d60c23e633df5bb3c448cc4890f232b61b72dd`  
		Last Modified: Wed, 21 Nov 2018 11:01:29 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f003a91f6d334c84a6df640c2787f3e72486e70678a2bdd4fd01342b8d352db0`  
		Last Modified: Wed, 21 Nov 2018 11:01:31 GMT  
		Size: 5.2 MB (5203650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13637870db3941d4bd0df7138aa10b82258dc126de16d158254a0ca3152828a0`  
		Last Modified: Wed, 21 Nov 2018 11:03:45 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc89bd575e45ca3a8368baa64085ef97e0efea853bfc3ae7b0c12c7c23c9f260`  
		Last Modified: Wed, 21 Nov 2018 11:03:44 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1abb8d31f127ac17739a569f18c9ddccc12ec632b0753cb185f65878f5af2d`  
		Last Modified: Wed, 21 Nov 2018 11:03:45 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b59560967bff62a2fdb003207360a6604d2fac43919275473febc7356a2ef56`  
		Last Modified: Wed, 21 Nov 2018 11:03:45 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2916efeea5a3d35ca90d3cab0885d561c3bb7c8ba55d9c4949746107bc3ebf45`  
		Last Modified: Wed, 21 Nov 2018 11:04:05 GMT  
		Size: 111.4 MB (111411232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-windowsservercore` - windows version 10.0.16299.785; amd64

```console
$ docker pull openjdk@sha256:a4a13af7bb6cb8f1ba269c561e6f9bc67981bd6f6efaebbf494d842949310aea
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3261721619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e518e985cc90207c24661cc71cc405c0ad828ba26aed2da5ef0e09247f7cd4cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:43:59 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 21 Nov 2018 10:44:51 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 21 Nov 2018 10:49:56 GMT
ENV JAVA_VERSION=8u191
# Wed, 21 Nov 2018 10:49:58 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Wed, 21 Nov 2018 10:49:59 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Wed, 21 Nov 2018 10:50:00 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Wed, 21 Nov 2018 10:51:39 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
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
	-	`sha256:bd17e5a5c479b6668ad240896334e90bdbc1e2582b65fa0ee1e21aee6b531472`  
		Last Modified: Wed, 21 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f4ad77d4f97f172c34d98b31dad922d444ef110edc5b9a65b5aa062cf14111`  
		Last Modified: Wed, 21 Nov 2018 11:02:43 GMT  
		Size: 4.8 MB (4786561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f3ad343b1c333c3849c2a4f520c36b167a72d5e55c2f24ceabede2154c12ca`  
		Last Modified: Wed, 21 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220bc089fab0e90bcec5afd9b21a60fa0a609dace4ebaf207aa0d0b26e49754`  
		Last Modified: Wed, 21 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6d437d96e87fc970ce10f8f44661aa3823c4cd3b1103f9f2fa4f5176964682`  
		Last Modified: Wed, 21 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9971c10ed22d037c1f3fd13d4ccbb57a3a6e04232434ac54b3857cc34f6fa1a`  
		Last Modified: Wed, 21 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c2b2c1f078d179b9f778c7f26853e3798e40163ae57f80504bc2abbdb76ac7`  
		Last Modified: Wed, 21 Nov 2018 11:04:43 GMT  
		Size: 111.0 MB (111020385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-windowsservercore` - windows version 10.0.17134.345; amd64

```console
$ docker pull openjdk@sha256:c04448b56f46b38aa376dcd48f032e3cccaf8158b57277aea2977ce00f70385a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2341022825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe15251ff8a25812821377381afcfd3c277ee34096ffa233a9ff595e95f9651`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 01 Oct 2018 21:32:36 GMT
RUN Install update 10.0.17134.345
# Wed, 10 Oct 2018 10:30:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 29 Nov 2018 10:25:35 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 29 Nov 2018 10:26:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 29 Nov 2018 10:26:29 GMT
ENV JAVA_VERSION=8u191
# Thu, 29 Nov 2018 10:26:30 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Thu, 29 Nov 2018 10:26:31 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Thu, 29 Nov 2018 10:26:32 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Thu, 29 Nov 2018 10:28:08 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:eba07b94d5f77aa900bf02c4247fc580222254782681cc3c74a7cf9566e8890a`  
		Size: 570.0 MB (570044587 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:27edf24f1e4fe928232c90f140f4c86cd7eed50efd07761c6c0832c7bfe26d30`  
		Last Modified: Wed, 10 Oct 2018 11:04:51 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7005b0ff1742b97eb37c44ed115db658d90d37dc9368ad9a2f6c67aa37632ef9`  
		Last Modified: Thu, 29 Nov 2018 10:32:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97d9cb7979fe97d48589a1070e6a9282ca13fd19f522a7f6acf0e676f3510c2`  
		Last Modified: Thu, 29 Nov 2018 10:32:04 GMT  
		Size: 4.7 MB (4683093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77facc060a0ade4a79bf4ac21627dd6b21fe812031c1020ebeb2524381e0045`  
		Last Modified: Thu, 29 Nov 2018 10:31:59 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be51c62e347df34972564dabc6908f038340567bee9c6b7dfbedbe7354721a0`  
		Last Modified: Thu, 29 Nov 2018 10:32:00 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab703c28e8fb5382a7ea2b477da11c1fe54d8aafb75fb65539f5cac7ef5ef3d`  
		Last Modified: Thu, 29 Nov 2018 10:31:59 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6eb1053258c94adde108e92b419cadcb5be517ca4cc698f9540ea9058f20eb`  
		Last Modified: Thu, 29 Nov 2018 10:31:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cb1013ed99d09aa6bfeab045abe37903b7a5682e1f0c62dc5053c5dfd2c3b0`  
		Last Modified: Thu, 29 Nov 2018 10:32:16 GMT  
		Size: 106.6 MB (106599689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
