## `openjdk:8-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:cafb52743ec20586f35105e9e178ac2888fa7495810bee5e2594fd16d020f32e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.431; amd64

### `openjdk:8-windowsservercore-1709` - windows version 10.0.16299.431; amd64

```console
$ docker pull openjdk@sha256:a59339cd0569881b5e37bc9a12595ef86c4f733c4fa061e41f0901c1784cc65e
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3195682314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:658e7457c0e053212aa224e1ad9be2d4bf7477d016ec477b80fe4b32c70170c7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 10 May 2018 09:50:50 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 10 May 2018 09:52:58 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 10 May 2018 10:14:01 GMT
ENV JAVA_VERSION=8u171
# Thu, 10 May 2018 10:14:02 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Thu, 10 May 2018 10:14:03 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Thu, 10 May 2018 10:14:04 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Thu, 10 May 2018 10:15:39 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62e9c01be03a1120c348f0e7575a185718d993157e18f1cd567a0616ca9ec36`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf5e6b78e3b7022fd36bb2dc984270564614676f7378361f700fab4b9f2b78c`  
		Last Modified: Thu, 10 May 2018 10:18:50 GMT  
		Size: 4.7 MB (4670151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6753673135da33fe47832383966e7dc1511bb3f17bcf011f4aa328c3581280`  
		Last Modified: Thu, 10 May 2018 10:20:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58806e5f4f885e21d5b18054ee88458ba8b35fb9111f63a7db5b8ba0a461b771`  
		Last Modified: Thu, 10 May 2018 10:20:58 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6043f5130ecdf981722fe8ef8d1ea2e23d2b918fe9b1d43d88b846811678f1b`  
		Last Modified: Thu, 10 May 2018 10:20:58 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab43279548c1a5e7bfcc0f0115c61e3e0e9e23585289844014e9601c213b607`  
		Last Modified: Thu, 10 May 2018 10:20:58 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e08500bf66643665ef161fc9fa97e3f98180479fefe3518c31880aa297f632`  
		Last Modified: Thu, 10 May 2018 10:21:15 GMT  
		Size: 110.8 MB (110760238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
