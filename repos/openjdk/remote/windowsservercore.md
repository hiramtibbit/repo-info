## `openjdk:windowsservercore`

```console
$ docker pull openjdk@sha256:e7bea49e22f54a5ae396297096999896037f7676823b351554494f0a31065782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64

### `openjdk:windowsservercore` - windows version 10.0.14393.2430; amd64

```console
$ docker pull openjdk@sha256:aaa64333466c48c8b34decd7ac2ca81db49594913b4148d5e43f25ca802aaa00
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5796241365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aaca39546d400f8b653bcd07ee0756f9d75ffaca3ee3870010d78e981258394`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Aug 2018 09:35:26 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 15 Aug 2018 09:36:54 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 15 Aug 2018 09:36:55 GMT
ENV JAVA_VERSION=10.0.2
# Wed, 15 Aug 2018 09:36:57 GMT
ENV JAVA_OJDKBUILD_VERSION=10.0.2-1
# Wed, 15 Aug 2018 09:36:58 GMT
ENV JAVA_OJDKBUILD_ZIP=java-10-openjdk-10.0.2-1.b13.ojdkbuild.windows.x86_64.zip
# Wed, 15 Aug 2018 09:36:59 GMT
ENV JAVA_OJDKBUILD_SHA256=39801db76f04b9f1491b0d0a64258535f14e319a3cd08d3e161b18a6af7a842d
# Wed, 15 Aug 2018 09:39:39 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Wed, 15 Aug 2018 09:39:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632569d0e1b6c0d5f488562966eab0f7d44dd4a7f9c9e8a7fd5d66e83f4bbe38`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705d990e7e9b57b711e408125de44634546968a9895b27efbd576c19b4dc2116`  
		Last Modified: Wed, 15 Aug 2018 09:53:37 GMT  
		Size: 5.0 MB (5046433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13cf04eea1aad800566d21e914011aea7b3cd7a211a565e8840a8e0eee2f8ee`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18b846cf432c0b2c2177b63f2698535155e7751228f4c232138da3b8de2d914`  
		Last Modified: Wed, 15 Aug 2018 09:53:33 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a52e9900ff1aa2293e32cb862963c61affee2432252edd70b1e39433a9b7c`  
		Last Modified: Wed, 15 Aug 2018 09:53:33 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0998871ea6ba7286c6d6b2f4375f3a5efced1c019bb5e162d88d57d1907ae5`  
		Last Modified: Wed, 15 Aug 2018 09:53:32 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c65944f36b0597dfec8e61fae5aace52f40c2cbc6e362313e54d1bf9772f91`  
		Last Modified: Wed, 15 Aug 2018 09:54:02 GMT  
		Size: 279.3 MB (279295596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be06bf3facf726181595e73c3aae55e6fcb9b899fd64287b70687078d3fd9e18`  
		Last Modified: Wed, 15 Aug 2018 09:53:33 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:windowsservercore` - windows version 10.0.16299.611; amd64

```console
$ docker pull openjdk@sha256:093744168695926eddec7e645a7bee11985994d27f87ba60e51c7fd91bbde4bc
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3395923368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8187c8e9efd1a7d45dfb41c1a6fd088b1a862ca5add60b717abc08d91b00c77f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Aug 2018 09:39:56 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 15 Aug 2018 09:41:06 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 15 Aug 2018 09:41:07 GMT
ENV JAVA_VERSION=10.0.2
# Wed, 15 Aug 2018 09:41:08 GMT
ENV JAVA_OJDKBUILD_VERSION=10.0.2-1
# Wed, 15 Aug 2018 09:41:09 GMT
ENV JAVA_OJDKBUILD_ZIP=java-10-openjdk-10.0.2-1.b13.ojdkbuild.windows.x86_64.zip
# Wed, 15 Aug 2018 09:41:10 GMT
ENV JAVA_OJDKBUILD_SHA256=39801db76f04b9f1491b0d0a64258535f14e319a3cd08d3e161b18a6af7a842d
# Wed, 15 Aug 2018 09:43:38 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Wed, 15 Aug 2018 09:43:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908447fc8e25f96ed0a90a9d476916c2c34a8da3ebb54a19197ed2be1d53ce5f`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08363414b2e660f12b58c5c11f679496aee1707e53d131d807b31376e14d80a`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 4.7 MB (4745056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639f7099b1e3070a529c2c5745d9526895d4c0ee99d8268d77065180e2b54625`  
		Last Modified: Wed, 15 Aug 2018 09:54:43 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f49b1fcf0c01d04dfdbfa215b328635b71658538557f10d55718ca75c4a58fe`  
		Last Modified: Wed, 15 Aug 2018 09:54:40 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404c0e745e2da46bc88dacce4eccab6a66379fe0e5b05d09c6e717f06c182ee`  
		Last Modified: Wed, 15 Aug 2018 09:54:40 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3890f240c7ab6c3555dc0dc7129b34143604b543c76be61682e846c11aa42e6c`  
		Last Modified: Wed, 15 Aug 2018 09:54:40 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91406c489756ff425177a1f048e9f9f7642e83bf7eabbe52acda9e96251e549d`  
		Last Modified: Wed, 15 Aug 2018 09:55:12 GMT  
		Size: 279.0 MB (279034233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a57263019f0dc827ccfc750a84a24ef1288f1deb0252973d780dff2f331d67f`  
		Last Modified: Wed, 15 Aug 2018 09:54:40 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
