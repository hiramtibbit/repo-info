## `openjdk:8u212-windowsservercore`

```console
$ docker pull openjdk@sha256:ac19fb678db989cb6cb3ee58fec58f9954d68c5ab5b3979b069e08da65a69dd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64
	-	windows version 10.0.17134.766; amd64
	-	windows version 10.0.14393.2972; amd64

### `openjdk:8u212-windowsservercore` - windows version 10.0.17763.504; amd64

```console
$ docker pull openjdk@sha256:47bb21626dbe853d4354b855d51eb9a103beffd90e5b7002244b5d14602a1816
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2183810534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:720ec957109f616a4caa87180ce3a9f9b8c15e463506367eab985960924f5c9b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 24 May 2019 23:34:17 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 24 May 2019 23:34:55 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 24 May 2019 23:34:56 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 23:34:58 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Fri, 24 May 2019 23:34:59 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 23:36:28 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac -version'; javac -version; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d4e587840c15e420fe1e5fdaf8caf8cfc443e767405a1caa51e7c38e956da8`  
		Last Modified: Fri, 24 May 2019 23:56:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5be97e3694157e37f7e42ae3006bfa411f1d49010daed156d92061aa612d65`  
		Last Modified: Fri, 24 May 2019 23:56:27 GMT  
		Size: 4.3 MB (4338267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64742ab7c1769852c5852aa47770969d44476d4ccd5cb9c2ecd198879b0662fb`  
		Last Modified: Fri, 24 May 2019 23:56:26 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6757722a49c6e616dae7f0e14770758879ff21a38b5afb60e129a53993894c3e`  
		Last Modified: Fri, 24 May 2019 23:56:26 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b9ef41d8e9fcb981ffdda7e9e44362ccf4f25566f3a640a1b1b4a21016b967`  
		Last Modified: Fri, 24 May 2019 23:56:26 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db08a4a9d060e8dbcc927c595323bc0b27ad12cae16a4c6255e2be025846052c`  
		Last Modified: Fri, 24 May 2019 23:57:13 GMT  
		Size: 100.3 MB (100339667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u212-windowsservercore` - windows version 10.0.17134.766; amd64

```console
$ docker pull openjdk@sha256:e62541b1fab117a3330cde315ba6eee9b5b197ab86c289dd0414bc9fce0b62ac
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2408590333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0414a90980d1c7cc4a2ad5283a0bfc6fa5c6c28969d20ac693d216eadafdd1e8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 12:50:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 24 May 2019 23:36:45 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 24 May 2019 23:37:26 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 24 May 2019 23:37:28 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 23:37:29 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Fri, 24 May 2019 23:37:31 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 23:39:01 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac -version'; javac -version; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:437e42e2c79862963e84efa4879b7522ff44416964747070df92412c08b9d147`  
		Last Modified: Wed, 22 May 2019 13:23:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca286b9003968aa084b96f07a644f17029279853b4e0d886e71fe6aed0b67dfe`  
		Last Modified: Fri, 24 May 2019 23:57:48 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9904ba75a09f8073f21d3e48b870afa2bcae69710a151bac6ebabbb78257b4e0`  
		Last Modified: Fri, 24 May 2019 23:57:47 GMT  
		Size: 4.8 MB (4767254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d73ee38c163fddb78a81e87abbdeea5b06e86fe4c34e58fefb5cf9aa9802ae`  
		Last Modified: Fri, 24 May 2019 23:57:46 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f63cc8959b7a2cd173b055b5b8769e28614da7b516c45236a66f931d82bdb7`  
		Last Modified: Fri, 24 May 2019 23:57:46 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8120accfcf47c68020b8530f0c90c3a67304ca6fca843d8b283089b5cddd7bdc`  
		Last Modified: Fri, 24 May 2019 23:57:46 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b195a996c5bb29c536580e4ce74be26e2c5b1d8913055f2c35a502d1ed01ac`  
		Last Modified: Fri, 24 May 2019 23:58:25 GMT  
		Size: 100.4 MB (100360419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u212-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull openjdk@sha256:eb4ea8f0c78036c92a3dde78c55817ae0105c9971ee2b6361bd3d20b12974355
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5810254459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec634b7d41ce03a398677305bf66bcf069f51ef2b41b8da47861cad09acd659`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 12:40:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 24 May 2019 23:39:14 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 24 May 2019 23:40:14 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 24 May 2019 23:40:16 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 23:40:17 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Fri, 24 May 2019 23:40:19 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 23:42:27 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac -version'; javac -version; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:238abb146382d28000f03a82c40be99cbfac99a1480f9d23f8a6420cafc6b083`  
		Last Modified: Wed, 22 May 2019 13:21:05 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08d0bdf137e4b7081a701ed21bdbd344bd0d1c7c1d03d7d55d3c3c90e09ec58`  
		Last Modified: Fri, 24 May 2019 23:59:00 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5b9a097f80f3a884497bf19bc5f568f78785b22bbf0cc8b77d70c262f22d33`  
		Last Modified: Fri, 24 May 2019 23:58:59 GMT  
		Size: 5.2 MB (5215876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f04883f4346190798457740647b3c39b5e5bb0419dcfc1cf885330643158ef`  
		Last Modified: Fri, 24 May 2019 23:58:57 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12221ebabebe6c7b7a6cb2897663aa723e7d0187be9778d20fb35ca84d1c38e9`  
		Last Modified: Fri, 24 May 2019 23:58:57 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a053138c26f94b1a876c39b67ee4254783355196f9936cf49e4e3d69e1b125b8`  
		Last Modified: Fri, 24 May 2019 23:58:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b29da59769425c88cacd76cf11e3e2a17eb043946f53ea87f9b16facf8d83c0`  
		Last Modified: Fri, 24 May 2019 23:59:23 GMT  
		Size: 105.2 MB (105244546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
