## `openjdk:8u212-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:321626cbd6f37f5a249b9205d4c6ea80c6582a815ac45b8f7c59a57a460dac0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64
	-	windows version 10.0.17763.437; amd64

### `openjdk:8u212-jdk-windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull openjdk@sha256:9b4639cb06ec716bd7137786dbf63e8c4c9942d3d57aea4092304d5f01fcf9af
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5821516065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0c4f0f7eae78b16644a8f54736f1f7c7ad52c12e95f25d5f2ac71cb958d20c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 14:28:21 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 15 May 2019 14:29:21 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 15 May 2019 14:29:23 GMT
ENV JAVA_VERSION=8u212
# Wed, 15 May 2019 14:29:25 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Wed, 15 May 2019 14:29:26 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Wed, 15 May 2019 14:29:28 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Wed, 15 May 2019 14:31:26 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b89cf34797442846d6d46877849e5c7c1a7233cd2ad0a6d256089cc2ce2e03`  
		Last Modified: Wed, 15 May 2019 14:40:07 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f3aecf98d667a76343dbcd44b319b0e3efaa1383f0f93f74d16dab33d33823`  
		Last Modified: Wed, 15 May 2019 14:40:08 GMT  
		Size: 5.2 MB (5229373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de52f022bd4be9c772c7c745e2637a36f7a5ed56d4d97f366673be32d6e63945`  
		Last Modified: Wed, 15 May 2019 14:40:04 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666a0f1e82aabfd11d789f07745cb06ab0b713d99820cf18e75b1b57dabc362a`  
		Last Modified: Wed, 15 May 2019 14:40:04 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5383db392fba4853339e705d3a77fd25406649d0c763ca504c3a439146adffaf`  
		Last Modified: Wed, 15 May 2019 14:40:04 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e2a0e25d090ef8c65237a29b98c4d1bf262d7b6901875cb78814fecfd42291`  
		Last Modified: Wed, 15 May 2019 14:40:04 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8de047234272bb5d01b88e3bda998c76e1b5caa292f79eac0fef6411d4d6a5`  
		Last Modified: Wed, 15 May 2019 14:40:30 GMT  
		Size: 114.2 MB (114158568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u212-jdk-windowsservercore` - windows version 10.0.17134.765; amd64

```console
$ docker pull openjdk@sha256:fc1f5a74500535524690cf81ad74ecd69fa4e0a9b5b8fd131ee48b4cbfcee612
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416289118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a9b894897ed2b65c52b1554f264a0ae8565c264512b86b0697ebaf195b9aee`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 14:31:36 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 15 May 2019 14:32:16 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 15 May 2019 14:32:17 GMT
ENV JAVA_VERSION=8u212
# Wed, 15 May 2019 14:32:19 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Wed, 15 May 2019 14:32:20 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Wed, 15 May 2019 14:32:22 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Wed, 15 May 2019 14:33:43 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cca3cfa9ed10193a105a30e6710a479f032188ab2430386fb62d2b14bbd4376`  
		Last Modified: Wed, 15 May 2019 14:40:55 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2e6d1e2a6968e0b984db790be49b401625ae767d072710786cf5f99812eaac`  
		Last Modified: Wed, 15 May 2019 14:40:57 GMT  
		Size: 4.8 MB (4770975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9c33f82334576e19a3d62aaaf68b1a9836548ab4fa32174341cf90f6ec4aa7`  
		Last Modified: Wed, 15 May 2019 14:40:52 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6301b56e29a36110ce6ea63d792b579da5da78d98067746dfdc9e1d7745a50f`  
		Last Modified: Wed, 15 May 2019 14:40:53 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8fffab290ba0a8a6dd3050642a94a4467a2619ae7db8d9b69608f18fb00f57`  
		Last Modified: Wed, 15 May 2019 14:40:53 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43795b1333dce4ad76504d8a1b3710aaffa100e320b7552871d201d0f761993b`  
		Last Modified: Wed, 15 May 2019 14:40:53 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d45e3b17d780ff201051eb78ffcfa1935b724ccd61960b40962ed156435eb3f`  
		Last Modified: Wed, 15 May 2019 14:43:04 GMT  
		Size: 109.3 MB (109260803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u212-jdk-windowsservercore` - windows version 10.0.17763.437; amd64

```console
$ docker pull openjdk@sha256:59a0177a537617a71eef0bfc355d164753a72ea3b7b4a8f4bd11b183422d542f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2087470125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cada7a047b2378c15416272bf9c19679f65f32b36fd2005925d53ac073819e4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 01:09:15 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 12 Apr 2019 01:40:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 25 Apr 2019 09:48:36 GMT
ENV JAVA_VERSION=8u212
# Thu, 25 Apr 2019 09:48:38 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Thu, 25 Apr 2019 09:48:39 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Thu, 25 Apr 2019 09:48:40 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Thu, 25 Apr 2019 09:50:02 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5b2dd28acb9f0bc26b10ba7e668caeae093e3cdb6deaa9214993be0c2044a1`  
		Last Modified: Fri, 12 Apr 2019 01:59:32 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199f619aea7e26cdeea9a70a82964cfee407b41ba9f77e721dbe6a8b2ae9c0ef`  
		Last Modified: Fri, 12 Apr 2019 01:59:33 GMT  
		Size: 4.3 MB (4340593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9713f9483f6b18e729742459e42bed1be8219ec4ecb675088971825eabb167`  
		Last Modified: Thu, 25 Apr 2019 09:53:04 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedb40387ff3ca9ad5f09de58790975ed5c2dd1ba66f43634c321d684ffafb5d`  
		Last Modified: Thu, 25 Apr 2019 09:53:04 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4f70461a57880393ae444746826b4e33c93674d74de5271e8be4f85aa4d77d`  
		Last Modified: Thu, 25 Apr 2019 09:53:04 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7803a91b5178a794e0475e69bf36ac5de409adb827ff4e8cbf087b64b88efb51`  
		Last Modified: Thu, 25 Apr 2019 09:53:04 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcf62be1169eb56f466544e0a5a540232d48687d6ad37f9507f83923ab95eef`  
		Last Modified: Thu, 25 Apr 2019 09:53:26 GMT  
		Size: 109.3 MB (109259035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
