## `openjdk:8-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:02c05cb3ab6a51b35aacadc3b820ab8f10adde6bc8371a432a0116a02c964c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `openjdk:8-windowsservercore-ltsc2016` - windows version 10.0.14393.2363; amd64

```console
$ docker pull openjdk@sha256:bda4d6013395c33187aca037d9d6f832a6c964926343cdd071e4b57f97ae053d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5605477419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23878f293a1407e7dd445126b7e429f8061bed733037d45aa51d21f02375a6ca`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:33 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 09:36:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Jul 2018 09:36:35 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 11 Jul 2018 09:37:59 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 11 Jul 2018 09:48:25 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 09:48:26 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Wed, 11 Jul 2018 09:48:27 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Wed, 11 Jul 2018 09:48:28 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Wed, 11 Jul 2018 09:50:16 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fb1ebf2c42b6ac63b874d36a405b413fdf6c314131c3605d77e3cee6f485881f`  
		Last Modified: Tue, 10 Jul 2018 21:16:33 GMT  
		Size: 1.4 GB (1419298293 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b678e902d6e9a27ab4d61bef7b26997ea26fdec2575d1317c9eab3b31c61fd9b`  
		Last Modified: Wed, 11 Jul 2018 09:53:57 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df0b7da96ba2f6f9998af410e0e83095c74f65e14e44e196fa7ca34b34b20e7`  
		Last Modified: Wed, 11 Jul 2018 09:53:56 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43557e5ace1974f8b220d16ea7c7a0b225327d94c023252ebc95b6847a042201`  
		Last Modified: Wed, 11 Jul 2018 09:53:58 GMT  
		Size: 5.0 MB (5041524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844ad1958b4a74ae6b4b12ff26c2c56d07198a45c34a3d4840b070e02e9300bc`  
		Last Modified: Wed, 11 Jul 2018 09:57:02 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db96a60d5b0cf7cc3346eb454f84722591d29024a906e18213c0387fd0ffe5d`  
		Last Modified: Wed, 11 Jul 2018 09:57:01 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ecef88440fadaac326436740b613e1fc134867b30bf36155db28e1f62a7a98`  
		Last Modified: Wed, 11 Jul 2018 09:57:02 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b46a2bd312027c47482bd37d5a5e7cd687410f68826bad20f953c62579ddf6f`  
		Last Modified: Wed, 11 Jul 2018 09:57:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e527315332d59ea10697785569087902ae88091d0cca09c4f0e7f1ace426127f`  
		Last Modified: Wed, 11 Jul 2018 09:57:17 GMT  
		Size: 111.1 MB (111144509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
