## `openjdk:8u191-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:cba41a8c2a5652f24003a36978e9d606aa7fd042527b252888299af8f281beb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64
	-	windows version 10.0.17134.523; amd64
	-	windows version 10.0.17763.253; amd64

### `openjdk:8u191-jdk-windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull openjdk@sha256:c5a04564c9d2c9328ae6c9c2c74f662c62655b89f1af03d3acef33f2c2e0895b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5752514158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afec74279a39a9795cfa169af250f54df1a0eb578d9d561269dfa08a1eb1c227`
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
# Fri, 11 Jan 2019 11:19:20 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 11:19:21 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Fri, 11 Jan 2019 11:19:23 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Fri, 11 Jan 2019 11:19:24 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Fri, 11 Jan 2019 11:21:27 GMT
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
	-	`sha256:c5d1e446158b7acf7c6f1e1db18db6db0194ea13471413ba7ec49cd3e32f1b7e`  
		Last Modified: Fri, 11 Jan 2019 11:46:27 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb326cefcb7afbe707103a77df850f73b735cc8b7e552161bbd5a65f30a4ead4`  
		Last Modified: Fri, 11 Jan 2019 11:46:27 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9a2c811ab17b4534375f04ac8d3fb246fb17782b813a09bc2d82b603b5ebdc`  
		Last Modified: Fri, 11 Jan 2019 11:46:27 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdf338c72cb6ca9d77578d490b25d2afa051ec00e62d153e2d8b8ce8a7c655`  
		Last Modified: Fri, 11 Jan 2019 11:46:27 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bcce93ec6b3c7d9064972e5885558105cd256e0783b97a46e7a96071b95efd`  
		Last Modified: Fri, 11 Jan 2019 11:46:47 GMT  
		Size: 111.5 MB (111465057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u191-jdk-windowsservercore` - windows version 10.0.16299.904; amd64

```console
$ docker pull openjdk@sha256:a2153281f10aef73daedc056d1df84c0c4e8e15236c546777db2236a0093d716
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3262861434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53d3fc037cd0fab2afe4eed1d44621397191bc348a5ca273730b05cf07775f35`
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
# Fri, 11 Jan 2019 11:22:36 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 11:22:38 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Fri, 11 Jan 2019 11:22:39 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Fri, 11 Jan 2019 11:22:41 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Fri, 11 Jan 2019 11:24:24 GMT
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
	-	`sha256:b7550a323c91a18fa871537a710103a820e9183a110b12129b3acc470009ba9b`  
		Last Modified: Fri, 11 Jan 2019 11:47:04 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cda433c020a36833d3ea5e6204a2fdc9e1d3dbf48f3b1c3e5c50b537f17e96`  
		Last Modified: Fri, 11 Jan 2019 11:47:04 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4ace5b0461dc82b2879a2920aecd87451486939b72d52f80a48d7b5a57e80c`  
		Last Modified: Fri, 11 Jan 2019 11:47:05 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6778913f7bc4b333bdc2adcf596afd71c6c608a35923ab2e3d603fe7c3c1da8`  
		Last Modified: Fri, 11 Jan 2019 11:47:04 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a126e90a8ae8fe25e127a10d6835766fd34b7cd11900dcd628f92ce5200a6`  
		Last Modified: Fri, 11 Jan 2019 11:49:04 GMT  
		Size: 111.0 MB (111014558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u191-jdk-windowsservercore` - windows version 10.0.17134.523; amd64

```console
$ docker pull openjdk@sha256:0219b254b9002dfba995cd8d79335a74f80b039d13f398b2bdeebf33d43bd7c0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2356947595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c8e7bde96ec027932b384486f5ab517f3d609d4e5258afe74ab444133fd0bc1`
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
# Fri, 11 Jan 2019 11:25:31 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 11:25:33 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Fri, 11 Jan 2019 11:25:34 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Fri, 11 Jan 2019 11:25:35 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Fri, 11 Jan 2019 11:26:59 GMT
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
	-	`sha256:fe94a2eaae91a81bfd049bf8bb58f60a6e2d9cb1aeb213de8f2ac137ce97453c`  
		Last Modified: Fri, 11 Jan 2019 11:49:21 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7842e6d0cc63ae794eb31c1018abad8577ef28476e0b4f3bd036129d2f45da`  
		Last Modified: Fri, 11 Jan 2019 11:49:21 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ded42b33de11032b004b141f9af5bc387b0f4a5e9c610d73ddfbc238ca4f0f`  
		Last Modified: Fri, 11 Jan 2019 11:49:21 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761f3a9b6aa2515e9719685ed50557b7749aba971e7db8df197d0dfa1ea60a50`  
		Last Modified: Fri, 11 Jan 2019 11:49:22 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fdea16f7eb65737aab7357d3d3269a18f409160a1f91c8073d124e2ed631cc`  
		Last Modified: Fri, 11 Jan 2019 11:49:37 GMT  
		Size: 106.6 MB (106574444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u191-jdk-windowsservercore` - windows version 10.0.17763.253; amd64

```console
$ docker pull openjdk@sha256:be2eb6975c6a1ec2c409b30fb932dfee3f53fd196714280bf7d66a23120e7329
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (1960744454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da29ed6800b9146d8a4e77b90db4983459e787c22eae8ff904e423ec764f0334`
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
# Fri, 18 Jan 2019 10:35:36 GMT
ENV JAVA_VERSION=8u191
# Fri, 18 Jan 2019 10:35:38 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Fri, 18 Jan 2019 10:35:39 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Fri, 18 Jan 2019 10:35:40 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Fri, 18 Jan 2019 10:36:56 GMT
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
	-	`sha256:ad373c46feffadacae7526fe13387d1370d448492264110771aa08cc236c0aef`  
		Last Modified: Fri, 18 Jan 2019 10:54:50 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399c6b75026d5d73ae4f0b29d1ab0017f136774dce30850ddfd048bd220cd10d`  
		Last Modified: Fri, 18 Jan 2019 10:54:49 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8712583ae1d3c3ec88b66072db2699a6970c64d17f656add0af5dd5aac344c67`  
		Last Modified: Fri, 18 Jan 2019 10:54:50 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a5a9bab16dbf7f965f33fe132d755aa8f60aa8bb6c7676176b481cfeeeedd2`  
		Last Modified: Fri, 18 Jan 2019 10:54:49 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110b3bcbee4885f7f54088046f9c88365fe546171bdeda4d74eb5bd89b73d59`  
		Last Modified: Fri, 18 Jan 2019 10:55:31 GMT  
		Size: 106.6 MB (106582427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
