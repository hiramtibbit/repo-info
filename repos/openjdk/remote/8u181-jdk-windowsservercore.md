## `openjdk:8u181-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:14b9f6ab9fab1caa2bef9087197e89ba3f5c6b3cd1124e97619690f251fc7a2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64
	-	windows version 10.0.16299.665; amd64

### `openjdk:8u181-jdk-windowsservercore` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:2beb96070671194da960f5840c54455528ac139606a226f7f1a96a87b1003142
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5702147574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0411847cf49190c0427f90cfcae62bbb505d5cc1c63d2cbfb220c4029426a244`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 10:05:28 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 13 Sep 2018 10:06:46 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 13 Sep 2018 10:17:35 GMT
ENV JAVA_VERSION=8u181
# Thu, 13 Sep 2018 10:17:37 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.181-1
# Thu, 13 Sep 2018 10:17:38 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.181-1.b13.ojdkbuild.windows.x86_64.zip
# Thu, 13 Sep 2018 10:17:39 GMT
ENV JAVA_OJDKBUILD_SHA256=dd7d2ea7951c06857523e95359e5e94630039a1eae5b5223e4b8c308afc95ebb
# Thu, 13 Sep 2018 10:19:43 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6e046b8e194c642cfc4d7dcaa12ec2f9359e1f54dbc7088ee9ca188416d5c553`  
		Last Modified: Tue, 11 Sep 2018 16:53:50 GMT  
		Size: 1.5 GB (1515870209 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7aa2ad8eff720622c1b1f25bf31d2c32b588766208c093caef00e8b31961b74e`  
		Last Modified: Thu, 13 Sep 2018 10:24:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad803864b3f2e6b22efac392c250f26071f5ed6ebd31386a4bb4c6b5241aadc1`  
		Last Modified: Thu, 13 Sep 2018 10:30:29 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1944c7328c303f11e9985c4948b76fc58bf940fac22f50de2fad705410ca1cab`  
		Last Modified: Thu, 13 Sep 2018 10:30:33 GMT  
		Size: 5.1 MB (5091906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e57503a285f6f91adfbd6f515ac8cb0c2a288de96830af1a412b522021042a`  
		Last Modified: Thu, 13 Sep 2018 10:34:14 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14208c6eb676ecb9fa20c03ef696fa6bced9e08561e1644b99e7f80a89215d99`  
		Last Modified: Thu, 13 Sep 2018 10:34:14 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7029738142f63525ba5dea50a00c68638761061b3872503e07fcf468b41f90b`  
		Last Modified: Thu, 13 Sep 2018 10:34:14 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db317e9adcc5fe0fcbe8262db82a2e44e815fa2b4b76d5dfa63978a15c6d97ba`  
		Last Modified: Thu, 13 Sep 2018 10:34:14 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563360372b2bc23cd1a5bdfb21ad9dc80505763e5081b575e10410c7e4207850`  
		Last Modified: Thu, 13 Sep 2018 10:34:30 GMT  
		Size: 111.2 MB (111192368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u181-jdk-windowsservercore` - windows version 10.0.16299.665; amd64

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
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
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
