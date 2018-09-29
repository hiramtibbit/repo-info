## `openjdk:11-windowsservercore`

```console
$ docker pull openjdk@sha256:c005c86e2c44716f4ef224694807fc51ea7dfa86c852525d24c0031e14b5fde8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64
	-	windows version 10.0.16299.665; amd64
	-	windows version 10.0.17134.285; amd64

### `openjdk:11-windowsservercore` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:54ccd1c4edec9ece426390fa1e5f3957165c9c12d3b5bc6c476c6133d96b0a89
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5783199174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:033ccbd6b2473891cf805df0e0d2c32ee9df522d68f811d4ad4397ae0afe8e08`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:54:21 GMT
ENV JAVA_HOME=C:\jdk-11
# Thu, 13 Sep 2018 09:55:41 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 29 Sep 2018 09:23:44 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 09:23:46 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/28/GPL/openjdk-11+28_windows-x64_bin.zip
# Sat, 29 Sep 2018 09:23:47 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Sat, 29 Sep 2018 09:26:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 29 Sep 2018 09:26:34 GMT
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
	-	`sha256:6a163c1d21ac3709c50d1ee769bc36e133da0d08b2e8d19758599255ace2edac`  
		Last Modified: Thu, 13 Sep 2018 10:26:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fdad88a0b618155f02b69cd24bcec49279f85b0625ea90430160d151b525ea`  
		Last Modified: Thu, 13 Sep 2018 10:26:57 GMT  
		Size: 5.1 MB (5090861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bb0386694f9e05f2daa3ffd3ed501b3d5cc61b6fd6ed6353974a79af4eed74`  
		Last Modified: Sat, 29 Sep 2018 09:34:37 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13da17b54a0f20fad25973947f98099423b325545b50b6a1e55c281643de61bf`  
		Last Modified: Sat, 29 Sep 2018 09:34:37 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94385d644284d82a72a40eb0c6fa8230351c87391657d868e3e58f75536cef7c`  
		Last Modified: Sat, 29 Sep 2018 09:34:37 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ecb9c3b75236f28174b6d503c5f0d16436f708b57c857cc22be502b4f2b245`  
		Last Modified: Sat, 29 Sep 2018 09:34:59 GMT  
		Size: 192.2 MB (192245004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40dc5ce19b00365a66febf6370d845215c9ee7cccc917f956b1407cba6bfd13`  
		Last Modified: Sat, 29 Sep 2018 09:34:37 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-windowsservercore` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:253aba15a3eb19bc69dc577721f511c90b1143328b000bcd66dea9d8d5209fa8
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3324768060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb2974af6b85c9c2f6ca3bef94f8907712accb5ed1a7f186cd44a1f470eb02b7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Thu, 13 Sep 2018 09:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:58:48 GMT
ENV JAVA_HOME=C:\jdk-11
# Thu, 13 Sep 2018 09:59:41 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 29 Sep 2018 09:26:40 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 09:26:41 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/28/GPL/openjdk-11+28_windows-x64_bin.zip
# Sat, 29 Sep 2018 09:26:42 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Sat, 29 Sep 2018 09:29:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 29 Sep 2018 09:29:09 GMT
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
	-	`sha256:e4d2740223569795bbfaa59e0ca67ae4a3f992218e293e85d470cec3bd72626e`  
		Last Modified: Thu, 13 Sep 2018 10:28:29 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517408eb2850768810590f3e4b6cc37a56eda4a10339ae1f36cb1cfcf027f961`  
		Last Modified: Thu, 13 Sep 2018 10:28:31 GMT  
		Size: 4.7 MB (4724586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b94eac591460e3a2ca4a9b752fae9280046b6cc451efa663cd5fada3d58970`  
		Last Modified: Sat, 29 Sep 2018 09:35:13 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c2a4632c0c91d721f4ef646420cb383eaf65f9f2a4da728cd35aebcb64a1fc`  
		Last Modified: Sat, 29 Sep 2018 09:35:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef5319bd5371594fd5ab90fe0b604ffd32737bd910481c79dbf4a0bee8bd5f2`  
		Last Modified: Sat, 29 Sep 2018 09:35:14 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10215a9a08791737177d87fdedbf2747d5497652ff9bb428a60363ca4edbdf40`  
		Last Modified: Sat, 29 Sep 2018 09:35:35 GMT  
		Size: 187.4 MB (187400204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ead3b6213ebe151813be6744b8530740ff9986c6698dcd484bd17e0093851e`  
		Last Modified: Sat, 29 Sep 2018 09:35:13 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-windowsservercore` - windows version 10.0.17134.285; amd64

```console
$ docker pull openjdk@sha256:1bc56b3bc93a689b7603fb0cca3f6cc81bd6ec93225d0e1c629aba6b27d841a5
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2394587224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bce6b54088c80d3afc34b5fe48f715039afb23b4edd07ad7d684372bc3937205`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Thu, 13 Sep 2018 09:50:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 10:02:00 GMT
ENV JAVA_HOME=C:\jdk-11
# Thu, 13 Sep 2018 10:02:50 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 29 Sep 2018 09:29:14 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 09:29:15 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/28/GPL/openjdk-11+28_windows-x64_bin.zip
# Sat, 29 Sep 2018 09:29:16 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Sat, 29 Sep 2018 09:31:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 29 Sep 2018 09:31:12 GMT
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
	-	`sha256:a911cc248ef9f987defedbaad7664b52fc397032080b977a4663731b9f303fd4`  
		Last Modified: Thu, 13 Sep 2018 10:29:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1fcfd192b0ee831ccb01cad021165d1cf536dbe91ae33a138e6d1364c29a1c`  
		Last Modified: Thu, 13 Sep 2018 10:29:33 GMT  
		Size: 4.7 MB (4653128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de55e2a5ca50495455f9062066c8b5045be22e22754095caa267bc26f6d5fc2`  
		Last Modified: Sat, 29 Sep 2018 09:35:48 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045e7fd863875420bc511fd9068d282ab2dff2577b7eba703d1e5ce46c0e14e3`  
		Last Modified: Sat, 29 Sep 2018 09:35:48 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4c42da0935895b8fa79294d4df7bc9d3cd0e6e737ecb115ac1d4b69fa6a1ef`  
		Last Modified: Sat, 29 Sep 2018 09:35:48 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fd83a7cdb30aa45e73f552f2de9d74d99ae2a36c59a610daa189e4271a88aa`  
		Last Modified: Sat, 29 Sep 2018 09:36:09 GMT  
		Size: 183.0 MB (183012858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdd3b3b94dfaeca548ec6c53cf7d5e3dfab1affaae8abd5832ffe0e81854ecb`  
		Last Modified: Sat, 29 Sep 2018 09:35:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
