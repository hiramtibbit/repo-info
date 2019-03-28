## `openjdk:8-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:d94fe1b2a5f7e0f820cd8808173b19fc8c525c2d9a10ca36f4bfef19135e3730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2848; amd64
	-	windows version 10.0.16299.1029; amd64
	-	windows version 10.0.17134.648; amd64
	-	windows version 10.0.17763.379; amd64

### `openjdk:8-jdk-windowsservercore` - windows version 10.0.14393.2848; amd64

```console
$ docker pull openjdk@sha256:cdeb2e1e45e3919ac54dfc1dc1dd08135401da942374c370f1b6c4c9fdd68e77
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5755753875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:984a71d95dc6272bbb8936b207056e1d1a7b526bdbf0f252539d2cf0225260ad`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Mar 2019 20:57:18 GMT
RUN Install update 10.0.14393.2848
# Sat, 16 Mar 2019 09:25:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:49:27 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 28 Mar 2019 10:50:29 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 28 Mar 2019 10:50:31 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 10:50:33 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Thu, 28 Mar 2019 10:50:34 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Thu, 28 Mar 2019 10:50:35 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Thu, 28 Mar 2019 10:52:42 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e0718b11f51220dd85c47a1d225be81c5ba343fbb45f9b43fe3d762c0a20300a`  
		Last Modified: Mon, 11 Mar 2019 20:57:18 GMT  
		Size: 1.6 GB (1569132556 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3c84f6ec9cf25e40329a2ab2c9fa1da3095d19cb67d4eacabcec0838b7e89729`  
		Last Modified: Sat, 16 Mar 2019 10:38:59 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313b9c5eebb20f3003786ac2fc894401c9f51cbde13a3dbcd41f05151d05882e`  
		Last Modified: Thu, 28 Mar 2019 11:22:25 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4356af0e336469cc8255fa1a7758543668859133eb3962174ddf05d849bbd356`  
		Last Modified: Thu, 28 Mar 2019 11:22:27 GMT  
		Size: 5.2 MB (5205359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaa2a71bb2c5a4e32568d313ae669e799bbec9e9c04b4ab63064d484572f461`  
		Last Modified: Thu, 28 Mar 2019 11:22:23 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a916b5f9369d7d01b4bfc75c670a31afd00013404c61b21c99e1aa61c616c144`  
		Last Modified: Thu, 28 Mar 2019 11:22:22 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c31672dca2abe5976ce007aca38a7f8ff4fd94129f4e833588eca814ecb8af`  
		Last Modified: Thu, 28 Mar 2019 11:22:22 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97946c499e04b9c3ded433b2c10f0636f5ea041448276536d16d2758d18d86c`  
		Last Modified: Thu, 28 Mar 2019 11:22:22 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4741110407a3b8b42c131413dcaffd33c26aa0a8bc3a9e1f9cd4d1f63e20f2`  
		Last Modified: Thu, 28 Mar 2019 11:22:53 GMT  
		Size: 111.4 MB (111422815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk-windowsservercore` - windows version 10.0.16299.1029; amd64

```console
$ docker pull openjdk@sha256:5115754ec66d69c57c4a55b042089839b9be4cc086ff96c6a207a5abb4b54e8a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3326654796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba12afdf5afccbe58b836e6aead3ac3cae13e39ece233f947d2e340a28b02637`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Sat, 16 Mar 2019 09:35:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:52:56 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 28 Mar 2019 10:53:48 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 28 Mar 2019 10:53:49 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 10:53:51 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Thu, 28 Mar 2019 10:53:53 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Thu, 28 Mar 2019 10:53:54 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Thu, 28 Mar 2019 10:55:41 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7f4a716683dc03db3521ed040924c24ea9bd17c7f134c09bf22e33f6af33ade8`  
		Last Modified: Mon, 11 Mar 2019 21:13:17 GMT  
		Size: 936.6 MB (936551125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:81856e9377a060d58cb8798fbc456fc8414158afec682bdd098149edc0a7d1fc`  
		Last Modified: Sat, 16 Mar 2019 10:41:06 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f4bdf443e6bd630381cc22499b99921822ed81d02cf239fb8f6b4b80d713f1a`  
		Last Modified: Thu, 28 Mar 2019 11:23:17 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9797fc6ef93e73deed58e3f6a4a4b1b9fa0fa517f533bcc6bd4581ce0f30cf`  
		Last Modified: Thu, 28 Mar 2019 11:23:19 GMT  
		Size: 4.8 MB (4794960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b14c2c6cc9e2714083c9d7224695d02ee64ad2d49092070350d327fb7c14a95`  
		Last Modified: Thu, 28 Mar 2019 11:23:15 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2697e0c5d9805e3acc2ee6b1059c7b991d910b3a85868367104d6b4703e4e8a`  
		Last Modified: Thu, 28 Mar 2019 11:23:15 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8528e29f4b29981f7648bbaba2ef25f331046ef3ec709bc62e07e611cde557d8`  
		Last Modified: Thu, 28 Mar 2019 11:23:15 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412ee3cdb96126464cbb16a9a00c6855f305ad9e52c4dcb628868a4f3738b3d3`  
		Last Modified: Thu, 28 Mar 2019 11:23:15 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018efe9f1b6651ef16b650a1eb52ce724b280616a4e0d2b1c9773713237ff3cc`  
		Last Modified: Thu, 28 Mar 2019 11:23:56 GMT  
		Size: 111.0 MB (111000907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk-windowsservercore` - windows version 10.0.17134.648; amd64

```console
$ docker pull openjdk@sha256:e3b4792c5a16b57d0da63604ec63a35665902d9dfc47afcbe4d3ad3d2478b2db
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2364247532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6d29bc2df841d5d7d91c863229744354b0da933782c8a674826d0af0e2ac1c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 08 Mar 2019 23:20:01 GMT
RUN Install update 10.0.17134.648
# Sat, 16 Mar 2019 09:44:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:55:54 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 28 Mar 2019 10:56:38 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 28 Mar 2019 10:56:39 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 10:56:41 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Thu, 28 Mar 2019 10:56:42 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Thu, 28 Mar 2019 10:56:44 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Thu, 28 Mar 2019 10:58:08 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be86bca8de59067e592a8becc2e83ed2465a6d9bce324043e434aa4a15493b00`  
		Last Modified: Mon, 11 Mar 2019 21:17:02 GMT  
		Size: 593.3 MB (593288046 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:97db8a70a029fc0e25892873d5695bd2b9a1c93e4cd7dcd91fcddf338989a592`  
		Last Modified: Sat, 16 Mar 2019 10:43:05 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f76be53ebc4bebabc950d9c60a3797dfb28c314044624895cafcd94b18fcb9`  
		Last Modified: Thu, 28 Mar 2019 11:24:19 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e45b378dfb9f31b0552913a893ee05d9d814c2f7d8c72cb9eabfe636111b61`  
		Last Modified: Thu, 28 Mar 2019 11:24:20 GMT  
		Size: 4.7 MB (4726387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9135fb7b14af9a991b0a8b420afafc599ca8f30c36e0e04610118000e4685eb2`  
		Last Modified: Thu, 28 Mar 2019 11:24:16 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2fd8a5bf10689ef4b9837c63d2e999fd9f426819b50d81d9748e2c4b72ab28`  
		Last Modified: Thu, 28 Mar 2019 11:24:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63cd0da87d571f6716cabf460d7298993486694f6f777aa7ce8df27dfd4800c3`  
		Last Modified: Thu, 28 Mar 2019 11:24:16 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebad463bca8fe411f543e4998505e0a5b7ec8d014d2fe6c270e01b088f3e342`  
		Last Modified: Thu, 28 Mar 2019 11:24:16 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f2cd3066684f09de637266d75e5c705db7de0d8275ba09d9c6f35efb59a97b`  
		Last Modified: Thu, 28 Mar 2019 11:24:35 GMT  
		Size: 106.5 MB (106537603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk-windowsservercore` - windows version 10.0.17763.379; amd64

```console
$ docker pull openjdk@sha256:375c6fd884fb3c4de8a260dd3b8a47c96a92c449eef4d9421e3e5894277987d3
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2266271536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76dcc9df55fa546c001b12131797197ce93ac3b213b3839f8791eb371025adb1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 09 Mar 2019 03:10:13 GMT
RUN Install update 1809-amd64
# Sat, 16 Mar 2019 09:52:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:58:22 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 28 Mar 2019 10:59:02 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 28 Mar 2019 10:59:03 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 10:59:05 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Thu, 28 Mar 2019 10:59:06 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Thu, 28 Mar 2019 10:59:08 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Thu, 28 Mar 2019 11:00:25 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d48f500354393ec6614f6435639636db175e3ac6c3d1a3d1857b609789de7a7d`  
		Last Modified: Tue, 12 Mar 2019 22:36:05 GMT  
		Size: 620.8 MB (620755432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e195200ec7c843146b67b39b26ec25466f3b96bce8db32ff3a809a25fdece80`  
		Last Modified: Sat, 16 Mar 2019 10:45:02 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62cf3ba961e1684a1e7982c0367343b51c97d6cda3f893b50d3b47aeb87b0282`  
		Last Modified: Thu, 28 Mar 2019 11:24:57 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794af30231ba3b1696e813513477a706f9031f5603275a8bdfc42d9171962215`  
		Last Modified: Thu, 28 Mar 2019 11:24:58 GMT  
		Size: 4.3 MB (4282069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b57af01112d41ec31af49b5b66678cb5953ad5a8850e6a98f8f9c1eeae68202`  
		Last Modified: Thu, 28 Mar 2019 11:24:55 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a016fb9e5d0c4a0d01dcf964ba949fef0b23133a91787cd0dca448abc101d4ce`  
		Last Modified: Thu, 28 Mar 2019 11:24:54 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533948b0fec5d9cd068a7b4daa84d636fdb86f1d4b4c04d8414628792ef4c510`  
		Last Modified: Thu, 28 Mar 2019 11:24:54 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cdd6420b7185f55e414a643a1fa59eef3543a98b2b92850a0e06a8ccfdfa49b`  
		Last Modified: Thu, 28 Mar 2019 11:24:54 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119fd2e4367cdc4cd28540d7b257265747fe6bc9e38b27db0f32fda33c76da44`  
		Last Modified: Thu, 28 Mar 2019 11:25:34 GMT  
		Size: 106.5 MB (106541451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
