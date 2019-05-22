## `openjdk:8u212-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:0d8a41b3c416cd79d48d523ed848e0951b1bf637c7dafc0b1ec66ded883144d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `openjdk:8u212-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull openjdk@sha256:096f31c60e65798cd0fda43c52e18b11d889dd6047dc6292b63c8904ecd53ec2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5819156066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd13441da0e964ce89defca4556086b25f9d72b5d43ea03af47b0c4b40e6e9e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 12:40:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 15:21:13 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 22 May 2019 15:22:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 22 May 2019 15:22:13 GMT
ENV JAVA_VERSION=8u212
# Wed, 22 May 2019 15:22:15 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Wed, 22 May 2019 15:22:17 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Wed, 22 May 2019 15:22:18 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Wed, 22 May 2019 15:24:19 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
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
	-	`sha256:136a27d2cc8733eebe3637bfaa5ea3f0d176972f553cd5a498632dc7058a249f`  
		Last Modified: Wed, 22 May 2019 16:15:16 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d054efeeda656f822886a6cf88dcce52adf5c82fb33f099008eaf0e3648c6fed`  
		Last Modified: Wed, 22 May 2019 16:15:17 GMT  
		Size: 5.2 MB (5216978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ce36217fe302a5017c7d8e8f54d558dcf9150aa7c55464ff2f6be7ee086bf5`  
		Last Modified: Wed, 22 May 2019 16:15:13 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a92c98a7db0bce817425f4bde8c9935b2164b7cfd4b3bb495d510d434f47c58`  
		Last Modified: Wed, 22 May 2019 16:15:14 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0226095618a8cc17a9675870f5f4d4ec92d7d4d5221a2e7ff3020612f3ae63`  
		Last Modified: Wed, 22 May 2019 16:15:13 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7f0987aa60e47e6645fa353cf811bb3e1d483361826d3e940856699a177230`  
		Last Modified: Wed, 22 May 2019 16:15:13 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921386dadab9807e6e728fa35c7a4160875fcd1abdb9be38f2c436b0c201a206`  
		Last Modified: Wed, 22 May 2019 16:15:34 GMT  
		Size: 114.1 MB (114143696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
