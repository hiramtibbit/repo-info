## `openjdk:8-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:b7da59ffb024f0a5016b112d533d6a48be9e582cb2443dce1bd8a128dc96ed67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.345; amd64

### `openjdk:8-jdk-windowsservercore-1803` - windows version 10.0.17134.345; amd64

```console
$ docker pull openjdk@sha256:c04448b56f46b38aa376dcd48f032e3cccaf8158b57277aea2977ce00f70385a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2341022825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe15251ff8a25812821377381afcfd3c277ee34096ffa233a9ff595e95f9651`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 01 Oct 2018 21:32:36 GMT
RUN Install update 10.0.17134.345
# Wed, 10 Oct 2018 10:30:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 29 Nov 2018 10:25:35 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 29 Nov 2018 10:26:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 29 Nov 2018 10:26:29 GMT
ENV JAVA_VERSION=8u191
# Thu, 29 Nov 2018 10:26:30 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Thu, 29 Nov 2018 10:26:31 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Thu, 29 Nov 2018 10:26:32 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Thu, 29 Nov 2018 10:28:08 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:eba07b94d5f77aa900bf02c4247fc580222254782681cc3c74a7cf9566e8890a`  
		Last Modified: Mon, 08 Oct 2018 19:44:48 GMT  
		Size: 570.0 MB (570044587 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:27edf24f1e4fe928232c90f140f4c86cd7eed50efd07761c6c0832c7bfe26d30`  
		Last Modified: Wed, 10 Oct 2018 11:04:51 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7005b0ff1742b97eb37c44ed115db658d90d37dc9368ad9a2f6c67aa37632ef9`  
		Last Modified: Thu, 29 Nov 2018 10:32:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97d9cb7979fe97d48589a1070e6a9282ca13fd19f522a7f6acf0e676f3510c2`  
		Last Modified: Thu, 29 Nov 2018 10:32:04 GMT  
		Size: 4.7 MB (4683093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77facc060a0ade4a79bf4ac21627dd6b21fe812031c1020ebeb2524381e0045`  
		Last Modified: Thu, 29 Nov 2018 10:31:59 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be51c62e347df34972564dabc6908f038340567bee9c6b7dfbedbe7354721a0`  
		Last Modified: Thu, 29 Nov 2018 10:32:00 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab703c28e8fb5382a7ea2b477da11c1fe54d8aafb75fb65539f5cac7ef5ef3d`  
		Last Modified: Thu, 29 Nov 2018 10:31:59 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6eb1053258c94adde108e92b419cadcb5be517ca4cc698f9540ea9058f20eb`  
		Last Modified: Thu, 29 Nov 2018 10:31:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cb1013ed99d09aa6bfeab045abe37903b7a5682e1f0c62dc5053c5dfd2c3b0`  
		Last Modified: Thu, 29 Nov 2018 10:32:16 GMT  
		Size: 106.6 MB (106599689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
