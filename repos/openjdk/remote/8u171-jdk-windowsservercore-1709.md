## `openjdk:8u171-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:464b867b7ea981eb54faf9bc2605fc5817de18df7bf6537a5c701bd85e480592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.492; amd64

### `openjdk:8u171-jdk-windowsservercore-1709` - windows version 10.0.16299.492; amd64

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
