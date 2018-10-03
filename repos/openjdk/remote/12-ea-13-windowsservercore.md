## `openjdk:12-ea-13-windowsservercore`

```console
$ docker pull openjdk@sha256:a363e6efb1d27b9dea50db54c54434ee389d1b580af959ca04874f20515c26b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64
	-	windows version 10.0.16299.665; amd64
	-	windows version 10.0.17134.285; amd64

### `openjdk:12-ea-13-windowsservercore` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:17f26189d8e7a0900ef166d2ea6dec872279e39a032be2d2f5bc890fcd407878
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5780597265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d86b4841e90b3978bc1ad9161d330414c98419e183409cf9be5b501b2906cc`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 10:26:40 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 03 Oct 2018 10:28:01 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 03 Oct 2018 10:28:02 GMT
ENV JAVA_VERSION=12-ea+13
# Wed, 03 Oct 2018 10:28:03 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/13/GPL/openjdk-12-ea+13_windows-x64_bin.zip
# Wed, 03 Oct 2018 10:28:05 GMT
ENV JAVA_SHA256=a74c96ad4913583a1c7b241fe8e4b5069f12b18c293e2a5926673e71b6a08925
# Wed, 03 Oct 2018 10:30:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 03 Oct 2018 10:30:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6e046b8e194c642cfc4d7dcaa12ec2f9359e1f54dbc7088ee9ca188416d5c553`  
		Last Modified: Tue, 11 Sep 2018 16:53:50 GMT  
		Size: 1.5 GB (1515870209 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7aa2ad8eff720622c1b1f25bf31d2c32b588766208c093caef00e8b31961b74e`  
		Last Modified: Thu, 13 Sep 2018 10:24:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a9f12690baac04c48f542b4cb10d68ff90ea0766ee37b055bc12b097055bed`  
		Last Modified: Wed, 03 Oct 2018 11:06:07 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f2b53a1b840087a88430ad81d952335c52d847423a89cca793575d8c3d788b`  
		Last Modified: Wed, 03 Oct 2018 11:06:10 GMT  
		Size: 5.1 MB (5100445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d2faee6fb17a944af5ab8c9fb4c16218b7379d97da956c1b5b06e94e289ba3`  
		Last Modified: Wed, 03 Oct 2018 11:06:05 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b6a5403d985384e41023d4d5ce4db3a51cd64be529ce17c58b2aba14f171e6`  
		Last Modified: Wed, 03 Oct 2018 11:06:05 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967ad4f7ad80fad383c9737e0b450cd408d20dd45ba4be8aec7d18d92aa121ed`  
		Last Modified: Wed, 03 Oct 2018 11:06:05 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d53147713daeb477d8d5504b1ea1641b32b0fcc0ff4793ab800f91652124b5`  
		Last Modified: Wed, 03 Oct 2018 11:06:28 GMT  
		Size: 189.6 MB (189633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bf09ead118bc85d29eabc50ba2030f1f733f0d21f5eea0278f909bfde442de`  
		Last Modified: Wed, 03 Oct 2018 11:06:04 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-13-windowsservercore` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:91e643018b116728ee0320524d00b96203c44abbacff4f1709f0dc5e5c91043f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3326699664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b2c47e2fc81633eaea463efd9f1f4b7960079c6d07d4a4112c44152a5480499`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Thu, 13 Sep 2018 09:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 10:30:41 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 03 Oct 2018 10:31:38 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 03 Oct 2018 10:31:39 GMT
ENV JAVA_VERSION=12-ea+13
# Wed, 03 Oct 2018 10:31:40 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/13/GPL/openjdk-12-ea+13_windows-x64_bin.zip
# Wed, 03 Oct 2018 10:31:41 GMT
ENV JAVA_SHA256=a74c96ad4913583a1c7b241fe8e4b5069f12b18c293e2a5926673e71b6a08925
# Wed, 03 Oct 2018 10:33:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 03 Oct 2018 10:33:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a5b83e25f92aef992a2827d664111b4726ada7d0b13d7af21882734cab96d8d0`  
		Last Modified: Tue, 11 Sep 2018 17:07:56 GMT  
		Size: 858.3 MB (858335510 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa61e3e01eeaa5482e77157970441ee8c2414720462e140b668a5b58902a78f5`  
		Last Modified: Thu, 13 Sep 2018 10:25:08 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae90fde8b680ca3d4b1758bddb83b5fe82603ef03dd52a2a2dd2d36c21484362`  
		Last Modified: Wed, 03 Oct 2018 11:07:00 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316584245e2e3ac9eef5fa802a273a49faaca6a35ed381972ca5d75b197aad5c`  
		Last Modified: Wed, 03 Oct 2018 11:07:03 GMT  
		Size: 4.7 MB (4743153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0efd9b73ff24826ae665c8ce8708887bddd846020104011d59f3edf4512745d`  
		Last Modified: Wed, 03 Oct 2018 11:06:58 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18b12596a6986f1abe1d84cfbf1b5f7a1c0cbab80a9ff7862db33f8a9594548`  
		Last Modified: Wed, 03 Oct 2018 11:06:58 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f732808e68c138b277381173b5cd28b3b89b70a336c560366ceb5bf9a9f19612`  
		Last Modified: Wed, 03 Oct 2018 11:06:58 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c095c92826e77804af88fe1e552e4e5bf5d1658aaeab790abf61321c45d1ade4`  
		Last Modified: Wed, 03 Oct 2018 11:07:30 GMT  
		Size: 189.3 MB (189313246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cda020613aa21e74b0c6ee9b0566e1276ce85f58daac8e405f103d02559e1d`  
		Last Modified: Wed, 03 Oct 2018 11:06:58 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-13-windowsservercore` - windows version 10.0.17134.285; amd64

```console
$ docker pull openjdk@sha256:19f86b05794b9c382eb59b4734f7d0b414bcd05f6312de62b4f2a88f6aeff443
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2396507090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3acb7a29615d7f7a41922acc9525729c65bdedbd66580a49fbfe3bc4c8213be9`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Thu, 13 Sep 2018 09:50:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 10:33:49 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 03 Oct 2018 10:35:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 03 Oct 2018 10:35:01 GMT
ENV JAVA_VERSION=12-ea+13
# Wed, 03 Oct 2018 10:35:02 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/13/GPL/openjdk-12-ea+13_windows-x64_bin.zip
# Wed, 03 Oct 2018 10:35:03 GMT
ENV JAVA_SHA256=a74c96ad4913583a1c7b241fe8e4b5069f12b18c293e2a5926673e71b6a08925
# Wed, 03 Oct 2018 10:36:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 03 Oct 2018 10:37:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f036448990c273bb1accf8d436799639bbb644326ae47f30fe4faed21c8d8d9`  
		Last Modified: Tue, 11 Sep 2018 17:11:59 GMT  
		Size: 547.2 MB (547225773 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:499c5d8410bcb30d8e576aa1248844529b2af7aff7307a4b79f366790c87756f`  
		Last Modified: Thu, 13 Sep 2018 10:26:08 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152ac716e0e58a1536dce5c63493a24de08dc2bb165fd6ea2e074c4ad26e2354`  
		Last Modified: Wed, 03 Oct 2018 11:08:03 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd57c14e974a8b56595413ba657fc382e8b03cc02850e6ff4f8b65ec514a97fa`  
		Last Modified: Wed, 03 Oct 2018 11:08:04 GMT  
		Size: 4.7 MB (4669279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693b43c7d1fdb3d772aaa009f324044b58f336046e69a261e4cbe630b2ffd8a6`  
		Last Modified: Wed, 03 Oct 2018 11:07:59 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9afff353aa3688bc5a22294b94b8b22b8bdbf6dd18f7a06d38cdb703eafa597`  
		Last Modified: Wed, 03 Oct 2018 11:07:59 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fadd83a87691a4129a8b858bbc4169ba02146d8127e1d0cc6f7e7462c7e5854`  
		Last Modified: Wed, 03 Oct 2018 11:08:00 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c93243a41c0586114f33a94f7745808a7d790a7811a4e15827827d8041e268`  
		Last Modified: Wed, 03 Oct 2018 11:08:21 GMT  
		Size: 184.9 MB (184916577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19f5a9ccf54ad7afdc5a16bda66be17630236c71dd6e88e8b5c04e5ce25c83a`  
		Last Modified: Wed, 03 Oct 2018 11:07:59 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
