## `openjdk:windowsservercore`

```console
$ docker pull openjdk@sha256:4b1453299f2910c450e840c2a8082e212b25bec09e5523f0757fad86ab01ec70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64
	-	windows version 10.0.16299.492; amd64

### `openjdk:windowsservercore` - windows version 10.0.14393.2312; amd64

```console
$ docker pull openjdk@sha256:d4d36f4e28aec385eb410539647c367c9c91652a6d3c8d98cf7e7ab003bfed22
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5600402637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89dde35641c3f1431a9f744c8587322d55741e2988e6ddc9f9f34f34cf7a6c5a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:30 GMT
RUN Install update 10.0.14393.2312
# Tue, 03 Jul 2018 00:23:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Jul 2018 09:14:30 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Tue, 03 Jul 2018 09:15:45 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 03 Jul 2018 09:25:21 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 09:25:22 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Tue, 03 Jul 2018 09:25:23 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Tue, 03 Jul 2018 09:25:24 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Tue, 03 Jul 2018 09:27:10 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8e9da9bbe3af2118a0b5eef7a3d649367557d0d3992ed0213c79857b23b4140e`  
		Last Modified: Wed, 13 Jun 2018 00:36:30 GMT  
		Size: 1.4 GB (1414319443 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:650685bf03844147638a02f1b62114e24cf12bf85feb92b6e2273d551a54c647`  
		Last Modified: Tue, 03 Jul 2018 01:20:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda82f18777611522f4232851abef0115c7a9eb7c71e50b2b18f3f10b3cf8d2a`  
		Last Modified: Tue, 03 Jul 2018 09:30:42 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd46a9c20f9beb348b8c2715c727790738f004665575b88d726bd9d71ee122f`  
		Last Modified: Tue, 03 Jul 2018 09:30:42 GMT  
		Size: 5.0 MB (5014114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae142547670f6c04c76db251ebea20488b627d0da26104d12ee760023f7eda6`  
		Last Modified: Tue, 03 Jul 2018 09:34:00 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358b2d4e7944deef35763a22fd7c22aac60c8907b5afebfd743bd7151384565f`  
		Last Modified: Tue, 03 Jul 2018 09:34:00 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b04d487a90f098b9c6126fdd81a500b20786184bbb06560f3894229c447f76`  
		Last Modified: Tue, 03 Jul 2018 09:34:00 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612818a1f3e6e838b3a2bfaacada7685c8417517c00a4951a144737513da1ea0`  
		Last Modified: Tue, 03 Jul 2018 09:34:01 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a635ad26dd62eb1c389bccd5cd2ceaa679f064b042cf920b40bf614f51907d8`  
		Last Modified: Tue, 03 Jul 2018 09:34:16 GMT  
		Size: 111.1 MB (111075981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:windowsservercore` - windows version 10.0.16299.492; amd64

```console
$ docker pull openjdk@sha256:928f3caf629c6151f39827015062c50fab6dd6a251b4d306efb1580353d3654c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3213409477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:961a6e9e5656420f046597edafb38567bbbaa2f20d55b5fba31b2cc8d63b223b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 11 Jun 2018 20:38:48 GMT
RUN Install update 10.0.16299.492
# Tue, 03 Jul 2018 00:32:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Jul 2018 09:18:43 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Tue, 03 Jul 2018 09:19:30 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 03 Jul 2018 09:27:17 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 09:27:17 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Tue, 03 Jul 2018 09:27:18 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Tue, 03 Jul 2018 09:27:19 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Tue, 03 Jul 2018 09:28:47 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3b9c63e313c8b374d5767c602fd6f2b947a3f1df9a8f8c5fcecb2fa6b1cfa968`  
		Last Modified: Wed, 13 Jun 2018 01:11:53 GMT  
		Size: 823.6 MB (823576248 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3989f186f0fc841be4fd06c5f4d58afe814bf92ffa0940def6b8d21ea38c223f`  
		Last Modified: Tue, 03 Jul 2018 01:22:20 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3497208bdf029c586457a2ca6691e10db79caf487c9d2cf6ac23a637d9133f29`  
		Last Modified: Tue, 03 Jul 2018 09:31:58 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59a8d8553bbafb7c0835f9cee765d77bc45c41bab5f3fd7d6397052f5d7a009`  
		Last Modified: Tue, 03 Jul 2018 09:31:59 GMT  
		Size: 4.7 MB (4723927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8dfbd1f49e8734fa47b40d5a9997a10dadb3dd2bd4de07a4e0fbc82c88be6b`  
		Last Modified: Tue, 03 Jul 2018 09:34:39 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ad3d87055881a0ec0c54aa96b4a2fadf0bfae5cb8a004afdb4335c3b6d0626`  
		Last Modified: Tue, 03 Jul 2018 09:34:39 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547ee16a49b4fb1d369dd432a05069aa94b3b1e2d4fafa1fc60f2fe3f4803a79`  
		Last Modified: Tue, 03 Jul 2018 09:34:39 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6590dca7afdd6ee4e65920020083578099fbfc14736177c29d440c8eddf31462`  
		Last Modified: Tue, 03 Jul 2018 09:34:40 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f4aeb4a6079bcbd5d869ffcb72cf11d68f7a382a75fed8cdf9fd5824497e99`  
		Last Modified: Tue, 03 Jul 2018 09:34:58 GMT  
		Size: 110.8 MB (110801561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
