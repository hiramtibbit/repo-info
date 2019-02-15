## `openjdk:8u201-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:dd5f3d55ebc7e5a0f0d111a67ece4c0d1ea0df8d02481de696d8469e763207db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.967; amd64

### `openjdk:8u201-windowsservercore-1709` - windows version 10.0.16299.967; amd64

```console
$ docker pull openjdk@sha256:e5c9ea912e3b6a35a3cdfe715457ef31682351abde1b7747ea0801e86e31251b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3263954263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3204ccf20fcca9876e175a0273db682403aa0f83a292bd719be3a79fcc60a9b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Fri, 08 Feb 2019 07:16:29 GMT
RUN Install update 10.0.16299.967
# Wed, 13 Feb 2019 10:40:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 11:33:51 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 15 Feb 2019 11:34:37 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 15 Feb 2019 11:34:39 GMT
ENV JAVA_VERSION=8u201
# Fri, 15 Feb 2019 11:34:41 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Fri, 15 Feb 2019 11:34:42 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Fri, 15 Feb 2019 11:34:44 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Fri, 15 Feb 2019 11:36:21 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:effca3ebc3a86f19a139eb7047c6e97d2fe4c941737e8d9698820d0491ccf530`  
		Last Modified: Mon, 11 Feb 2019 21:05:02 GMT  
		Size: 873.9 MB (873894336 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:731ba2742afc105cbc6ca69724a36a1b3dd4199873953d6581f5339a67939b09`  
		Last Modified: Wed, 13 Feb 2019 11:05:29 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e60063399a9554009509b3fb74f8cd5bd0a3f17cb0ee9c44dafc622dbea96f`  
		Last Modified: Fri, 15 Feb 2019 12:17:34 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ceb3f8550eefbe3e6b6e31fdd6f19aa15f548e3ab247f0f4f96976341a0daf0`  
		Last Modified: Fri, 15 Feb 2019 12:17:36 GMT  
		Size: 4.8 MB (4776662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e47642c6347dca2bb0c304301d5a42653353442e8810cbac4fcff2bfd414848`  
		Last Modified: Fri, 15 Feb 2019 12:17:32 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec20852e7fb89aa8147289c914d1006c82e139b734ba96b42bcc35e4e1709d7`  
		Last Modified: Fri, 15 Feb 2019 12:17:32 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e60f12241ccd3d3bbe6563d050475f6dadae5b91779a62d260b42fa13087af`  
		Last Modified: Fri, 15 Feb 2019 12:17:32 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6051a1882a647274fcfec8546e954effa78f7a910c268229d2f2684b7c579c90`  
		Last Modified: Fri, 15 Feb 2019 12:17:32 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac990e39c072465201e24ceb051bb62322d295041d71701e1069ba5b7126953`  
		Last Modified: Fri, 15 Feb 2019 12:17:53 GMT  
		Size: 111.0 MB (110975452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
