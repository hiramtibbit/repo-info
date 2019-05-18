## `openjdk:8u212-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:449b74a4ed1278ac8416eadfa39cd1696512ece079d9183ec3cdfa05b56f32f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.503; amd64

### `openjdk:8u212-windowsservercore-1809` - windows version 10.0.17763.503; amd64

```console
$ docker pull openjdk@sha256:e85a32df69cc9c2f3d4f24b1848c41b99fc602135c864f32ae75f3801784779e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2455402525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd78fd5ddfa4d7611a70a2099f027baaf821d2df978b5c5e2767b7bbb32d7eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Mon, 13 May 2019 04:24:59 GMT
RUN Install update 1809-amd64
# Fri, 17 May 2019 23:48:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:55:01 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 17 May 2019 23:55:37 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 17 May 2019 23:55:39 GMT
ENV JAVA_VERSION=8u212
# Fri, 17 May 2019 23:55:41 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Fri, 17 May 2019 23:55:42 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Fri, 17 May 2019 23:55:43 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Fri, 17 May 2019 23:57:07 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee54d5f8c1c17d6a2d177ece78df7ab6b2b13276699d52254ec988ad3ee41dbb`  
		Last Modified: Wed, 15 May 2019 17:14:11 GMT  
		Size: 807.1 MB (807120948 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4c3abc8365785955424fd2b634b981e82e0c1bf98d5cfa77b3bf179f3509f08b`  
		Last Modified: Sat, 18 May 2019 00:01:18 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19671bb6d79706acd20a12a2b31d8331b3c81a60d23bd1a99dbf68b170a109b8`  
		Last Modified: Sat, 18 May 2019 00:03:48 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67133352fcfcaa6e5eac6829bdcb836b3b1da04f05c0679b60e8527d42a88c27`  
		Last Modified: Sat, 18 May 2019 00:03:49 GMT  
		Size: 4.3 MB (4336546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63329f6eadc506d5297b71b83772e2ff8c38ec79ea671065285d0a07eaa57545`  
		Last Modified: Sat, 18 May 2019 00:03:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e584a547e4308b10dd392c611f3f578c5e1d6dfea179e984a795afb06168b945`  
		Last Modified: Sat, 18 May 2019 00:03:45 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123de7eb4a3b7607dede1c1c2de5184ecc73d193632bb6496a597806c6ce3f28`  
		Last Modified: Sat, 18 May 2019 00:03:45 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e7123c7b846342236aa91c899ea63b6f50e4ace8956d0c8ebed244ca069161`  
		Last Modified: Sat, 18 May 2019 00:03:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c859bc336bbe54c8b86fcf17bbf8c6d66a6ac5606743ce528309074c8db13aae`  
		Last Modified: Sat, 18 May 2019 00:04:08 GMT  
		Size: 109.3 MB (109252473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
