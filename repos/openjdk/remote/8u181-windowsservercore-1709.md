## `openjdk:8u181-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:d2ed55d14109ec172c0471ac62a073df3b7c3a2d2a048cb65bf16151c8bf3577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.665; amd64

### `openjdk:8u181-windowsservercore-1709` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:1cb359fa4f929948a380b5205eddc842a0d0856722329feef47f8b4e2d01306a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3248174279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b966427a20948355d3f73338373f8ba068df90676db0039b7a85e3993d10fa`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Thu, 13 Sep 2018 09:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 10:10:10 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 13 Sep 2018 10:11:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 13 Sep 2018 10:20:02 GMT
ENV JAVA_VERSION=8u181
# Thu, 13 Sep 2018 10:20:03 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.181-1
# Thu, 13 Sep 2018 10:20:04 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.181-1.b13.ojdkbuild.windows.x86_64.zip
# Thu, 13 Sep 2018 10:20:05 GMT
ENV JAVA_OJDKBUILD_SHA256=dd7d2ea7951c06857523e95359e5e94630039a1eae5b5223e4b8c308afc95ebb
# Thu, 13 Sep 2018 10:21:46 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
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
	-	`sha256:716b7d7e1fa2cbf55834f29dd2eadc85f6a08a51eaa2137bcd6806f2645fadfb`  
		Last Modified: Thu, 13 Sep 2018 10:32:02 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb5a831547af71b3536ccf5d89bd0736b6ef5c966d772960b83dbb6c4d78e56`  
		Last Modified: Thu, 13 Sep 2018 10:32:03 GMT  
		Size: 4.7 MB (4723075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cf16d8f583e3b94326d4a507ac9fd6a38b076986b48fe4df194907598506af`  
		Last Modified: Thu, 13 Sep 2018 10:34:49 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0536dc28296c927db38e5242d3a3ff04ce9be7eed49489c791aad457deff8f`  
		Last Modified: Thu, 13 Sep 2018 10:34:48 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f3a9b17a4985fd10e486d42119ce4a31b67c42504573c1107f353dbffe93fe`  
		Last Modified: Thu, 13 Sep 2018 10:34:48 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f3304d298a212759f93479c881c66f2b803396dae9a0a521328300f49d2d14`  
		Last Modified: Thu, 13 Sep 2018 10:34:49 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7553bd189bf20256ab251fbc4fa35a549b48929b5a87c0df999d4e1b3e15aa3b`  
		Last Modified: Thu, 13 Sep 2018 10:35:04 GMT  
		Size: 110.8 MB (110807951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
