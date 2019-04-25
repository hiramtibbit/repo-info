## `openjdk:8-windowsservercore`

```console
$ docker pull openjdk@sha256:93c9bdd30e868dc234b6d61b1a78bcf3ca2b03dd7cb1c3ad6ba2281526798613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `openjdk:8-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull openjdk@sha256:be88a22baa604e25444ba1a3676ee8797ef14e296baadbe03e706865f62b54e0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5761755467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34e65b8fc26de1ef33e021052d4719f208a9c7bba4de051718d59e00b740540a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 01:00:20 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 12 Apr 2019 01:01:19 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 25 Apr 2019 09:44:25 GMT
ENV JAVA_VERSION=8u212
# Thu, 25 Apr 2019 09:44:27 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Thu, 25 Apr 2019 09:44:28 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Thu, 25 Apr 2019 09:44:29 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Thu, 25 Apr 2019 09:46:34 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8199042532c2951363ae1436b39e9a775abe385a986adafbc360c090aff5f0ad`  
		Last Modified: Fri, 12 Apr 2019 01:57:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c50b78933457acd5424fb4d28c2fccfd763fed15d278d13d9a2676e34f9eebd`  
		Last Modified: Fri, 12 Apr 2019 01:57:16 GMT  
		Size: 5.2 MB (5220971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18382a184821348dd91e6c9b426540b64fcd90d2c08b4d6d721ef89bb31c134`  
		Last Modified: Thu, 25 Apr 2019 09:51:40 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50bbc31995ba6a897f6516daf27725aa540acfd594a3be8d5949babf113b4c5`  
		Last Modified: Thu, 25 Apr 2019 09:51:40 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a162d05be956beb5bf5edbc39f1eb2ab62ba13128590f95b528c761815d90c`  
		Last Modified: Thu, 25 Apr 2019 09:51:40 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cba0131b073a9c90ac419660b8723b00beb98ddc6a9bff3ce5997adfd0eed9`  
		Last Modified: Thu, 25 Apr 2019 09:51:40 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d0d47639081c1994130c476ce2ec81f60c903e85821a3e41e37194bfd3974`  
		Last Modified: Thu, 25 Apr 2019 09:51:59 GMT  
		Size: 114.2 MB (114157544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull openjdk@sha256:bc4de9916790e553b1b12f3e7e86326c73b8add67d4f6596524db4079e806062
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2370332578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfde24d386508232a9b37e2de35e1dedfcaf4df5cb6a3ef1aed8ac1e4b2a39f1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 01:06:47 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 12 Apr 2019 01:07:33 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 25 Apr 2019 09:46:53 GMT
ENV JAVA_VERSION=8u212
# Thu, 25 Apr 2019 09:46:54 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Thu, 25 Apr 2019 09:46:56 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Thu, 25 Apr 2019 09:46:57 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Thu, 25 Apr 2019 09:48:23 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b3e022d3eee9ea9319623cf271fffcbd633bc68c16d6cecf0ffa5398f22c81`  
		Last Modified: Fri, 12 Apr 2019 01:58:52 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157c42d342911c5549cc12dc17ec7c8c077bcb7849fbe27ba37ce15c973e8ec9`  
		Last Modified: Fri, 12 Apr 2019 01:58:53 GMT  
		Size: 4.7 MB (4722755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdce8c9aaf3c54740b23507874721317c125246f3bb439ca699ce2302c30e5c5`  
		Last Modified: Thu, 25 Apr 2019 09:52:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd29d6326cede425b6bc021505df7522d6b4388589fec93455bce41bce2525c`  
		Last Modified: Thu, 25 Apr 2019 09:52:23 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7bb0ef6c8b37aa62f77f15fcac10ccb559548bdc0ab108fab73d42763d443e`  
		Last Modified: Thu, 25 Apr 2019 09:52:23 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1242b30f7e90a2a758ff843130cacd74961a712673c7f07f30658f5b411a32c4`  
		Last Modified: Thu, 25 Apr 2019 09:52:23 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79e8a9d7bf9e4a9e24be2c130b5cfee26689c2c22c4f4b93080eeab3bc40341`  
		Last Modified: Thu, 25 Apr 2019 09:52:41 GMT  
		Size: 109.3 MB (109251981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-windowsservercore` - windows version 10.0.17763.437; amd64

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
