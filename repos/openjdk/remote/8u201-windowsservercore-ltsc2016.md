## `openjdk:8u201-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:33ce88fcc6b371af9aa983ed2b066cdd70cbf886f8500b6bcb14169fe483b7e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64

### `openjdk:8u201-windowsservercore-ltsc2016` - windows version 10.0.14393.2791; amd64

```console
$ docker pull openjdk@sha256:7ab69f306ab64c190a94aa06e59ecdf25c2fafac8bb2e49d8a549414f79636bc
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5756686283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ece65d60e2037435fa92d27e3b9df4e0711baa4036e75d6b8c8a9239aa831d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Wed, 13 Feb 2019 10:35:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 11:30:38 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 15 Feb 2019 11:31:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 15 Feb 2019 11:31:36 GMT
ENV JAVA_VERSION=8u201
# Fri, 15 Feb 2019 11:31:38 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Fri, 15 Feb 2019 11:31:40 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Fri, 15 Feb 2019 11:31:41 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Fri, 15 Feb 2019 11:33:37 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b479a92ce115faf181c1196d762b00f05ec9aa83dc2fec2b7ca094c8d6e1bfff`  
		Last Modified: Mon, 11 Feb 2019 20:08:57 GMT  
		Size: 1.6 GB (1570061102 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d6be0e7f96b74f68be8ae9cde286b6108d09d939d8cb130d00bfb8519a6b7fbc`  
		Last Modified: Wed, 13 Feb 2019 11:04:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d81aa865a0a95af15cafa6de7a7be16bf3095845e884e00e9667a3582f418e`  
		Last Modified: Fri, 15 Feb 2019 12:16:52 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b5f10102f616e3ae4a541615e224843ba02a71fe6ded4e87faf9b11689e168`  
		Last Modified: Fri, 15 Feb 2019 12:16:54 GMT  
		Size: 5.2 MB (5211712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73f640408ff9c8cbf6ed2a2d7ae337062d770d1a0265193ec10bf4cccdfa465`  
		Last Modified: Fri, 15 Feb 2019 12:16:49 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6634ddee881253da8784a8493b53e25a95689dc0574719f19ac650a4eaba7719`  
		Last Modified: Fri, 15 Feb 2019 12:16:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f991b88d09203aacc9dff606c3f2584bc09405a27eb036da09bdf2308b9afa`  
		Last Modified: Fri, 15 Feb 2019 12:16:49 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29e2e68c6277dbc68d9d910aa7e0b212b499a7cf8215dcda6c502afca03708e`  
		Last Modified: Fri, 15 Feb 2019 12:16:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d4f5929d33f7543924000cded1208f5af8cb605c2276c4f55f06aa3c9548a3`  
		Last Modified: Fri, 15 Feb 2019 12:17:13 GMT  
		Size: 111.4 MB (111420317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
