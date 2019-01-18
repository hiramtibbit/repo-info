## `openjdk:8u191-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:7ff42a1dd41c9dfa16eff49377cdf31d880fa2e2abe0ce619f789763a999afd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.253; amd64

### `openjdk:8u191-windowsservercore-1809` - windows version 10.0.17763.253; amd64

```console
$ docker pull openjdk@sha256:be2eb6975c6a1ec2c409b30fb932dfee3f53fd196714280bf7d66a23120e7329
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (1960744454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da29ed6800b9146d8a4e77b90db4983459e787c22eae8ff904e423ec764f0334`
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
# Fri, 18 Jan 2019 10:35:36 GMT
ENV JAVA_VERSION=8u191
# Fri, 18 Jan 2019 10:35:38 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Fri, 18 Jan 2019 10:35:39 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Fri, 18 Jan 2019 10:35:40 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Fri, 18 Jan 2019 10:36:56 GMT
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
	-	`sha256:ad373c46feffadacae7526fe13387d1370d448492264110771aa08cc236c0aef`  
		Last Modified: Fri, 18 Jan 2019 10:54:50 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399c6b75026d5d73ae4f0b29d1ab0017f136774dce30850ddfd048bd220cd10d`  
		Last Modified: Fri, 18 Jan 2019 10:54:49 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8712583ae1d3c3ec88b66072db2699a6970c64d17f656add0af5dd5aac344c67`  
		Last Modified: Fri, 18 Jan 2019 10:54:50 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a5a9bab16dbf7f965f33fe132d755aa8f60aa8bb6c7676176b481cfeeeedd2`  
		Last Modified: Fri, 18 Jan 2019 10:54:49 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110b3bcbee4885f7f54088046f9c88365fe546171bdeda4d74eb5bd89b73d59`  
		Last Modified: Fri, 18 Jan 2019 10:55:31 GMT  
		Size: 106.6 MB (106582427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
