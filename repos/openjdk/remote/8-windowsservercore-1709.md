## `openjdk:8-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:13032f641845cd1ff3f04b89119e902dace4528eb2c09f7edd8103bc5bd24ad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `openjdk:8-windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull openjdk@sha256:a2153281f10aef73daedc056d1df84c0c4e8e15236c546777db2236a0093d716
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3262861434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53d3fc037cd0fab2afe4eed1d44621397191bc348a5ca273730b05cf07775f35`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 11:21:45 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 11 Jan 2019 11:22:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 11 Jan 2019 11:22:36 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 11:22:38 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Fri, 11 Jan 2019 11:22:39 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Fri, 11 Jan 2019 11:22:41 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Fri, 11 Jan 2019 11:24:24 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc4fe126b6e2ff963f858269d65dbb18dfd023a7e9e24bb4940f53cf18f1dcd`  
		Last Modified: Fri, 11 Jan 2019 11:47:07 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1158185279e0622473aa47e89c03aba05bc340332a6c68a1a02f0e60dd319c1d`  
		Last Modified: Fri, 11 Jan 2019 11:47:12 GMT  
		Size: 4.8 MB (4783809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7550a323c91a18fa871537a710103a820e9183a110b12129b3acc470009ba9b`  
		Last Modified: Fri, 11 Jan 2019 11:47:04 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cda433c020a36833d3ea5e6204a2fdc9e1d3dbf48f3b1c3e5c50b537f17e96`  
		Last Modified: Fri, 11 Jan 2019 11:47:04 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4ace5b0461dc82b2879a2920aecd87451486939b72d52f80a48d7b5a57e80c`  
		Last Modified: Fri, 11 Jan 2019 11:47:05 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6778913f7bc4b333bdc2adcf596afd71c6c608a35923ab2e3d603fe7c3c1da8`  
		Last Modified: Fri, 11 Jan 2019 11:47:04 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a126e90a8ae8fe25e127a10d6835766fd34b7cd11900dcd628f92ce5200a6`  
		Last Modified: Fri, 11 Jan 2019 11:49:04 GMT  
		Size: 111.0 MB (111014558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
