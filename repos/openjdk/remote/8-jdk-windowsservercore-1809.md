## `openjdk:8-jdk-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:845380f2537158dfe86f0a5d185629482b28cf246d194a632c3cc44e5cff8288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.253; amd64

### `openjdk:8-jdk-windowsservercore-1809` - windows version 10.0.17763.253; amd64

```console
$ docker pull openjdk@sha256:b8a04e91613684436b25cb4538d33eb3e17e709e6ec7f8cb7ea4c2c52fe12e9b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (1960718912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:685f7489417c9d4c9778ad9671347691d1cc73f1a1576afa997c0e5e671b2039`
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
# Sat, 26 Jan 2019 11:15:44 GMT
ENV JAVA_VERSION=8u201
# Sat, 26 Jan 2019 11:15:45 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Sat, 26 Jan 2019 11:15:46 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Sat, 26 Jan 2019 11:15:47 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Sat, 26 Jan 2019 11:17:06 GMT
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
	-	`sha256:8f455662b2c4d711ca6418cebea42d8b558aaab2e66b66fb6cd400231ac095a1`  
		Last Modified: Sat, 26 Jan 2019 11:45:12 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3268073e22671015a18f10f76646976ab6b4d20192418dbca01d5ebb99a46d6b`  
		Last Modified: Sat, 26 Jan 2019 11:45:11 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e50d1f0ca22f0e8b5ca04bf6e7a6d9627bce9bbec5a839f12f8992696d56d0`  
		Last Modified: Sat, 26 Jan 2019 11:45:12 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eac3214ce9f8b47499b9101be928b6c5f24913eff6a5231e7aa6297992a6c41`  
		Last Modified: Sat, 26 Jan 2019 11:45:11 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5c2f423ec59fbe2cbdd5db56a33b376bb8bbf32a0d5e13fce7b57ec8884fca`  
		Last Modified: Sat, 26 Jan 2019 11:45:38 GMT  
		Size: 106.6 MB (106556882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
