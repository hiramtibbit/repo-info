## `openjdk:8u201-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:3f39f49158df8824b94b1d5ace5d158cdad25b40a3187fa0fc7a57812e1ab5fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2848; amd64

### `openjdk:8u201-windowsservercore-ltsc2016` - windows version 10.0.14393.2848; amd64

```console
$ docker pull openjdk@sha256:cdeb2e1e45e3919ac54dfc1dc1dd08135401da942374c370f1b6c4c9fdd68e77
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5755753875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:984a71d95dc6272bbb8936b207056e1d1a7b526bdbf0f252539d2cf0225260ad`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Mar 2019 20:57:18 GMT
RUN Install update 10.0.14393.2848
# Sat, 16 Mar 2019 09:25:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:49:27 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 28 Mar 2019 10:50:29 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 28 Mar 2019 10:50:31 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 10:50:33 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Thu, 28 Mar 2019 10:50:34 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Thu, 28 Mar 2019 10:50:35 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Thu, 28 Mar 2019 10:52:42 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e0718b11f51220dd85c47a1d225be81c5ba343fbb45f9b43fe3d762c0a20300a`  
		Last Modified: Mon, 11 Mar 2019 20:57:18 GMT  
		Size: 1.6 GB (1569132556 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3c84f6ec9cf25e40329a2ab2c9fa1da3095d19cb67d4eacabcec0838b7e89729`  
		Last Modified: Sat, 16 Mar 2019 10:38:59 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313b9c5eebb20f3003786ac2fc894401c9f51cbde13a3dbcd41f05151d05882e`  
		Last Modified: Thu, 28 Mar 2019 11:22:25 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4356af0e336469cc8255fa1a7758543668859133eb3962174ddf05d849bbd356`  
		Last Modified: Thu, 28 Mar 2019 11:22:27 GMT  
		Size: 5.2 MB (5205359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaa2a71bb2c5a4e32568d313ae669e799bbec9e9c04b4ab63064d484572f461`  
		Last Modified: Thu, 28 Mar 2019 11:22:23 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a916b5f9369d7d01b4bfc75c670a31afd00013404c61b21c99e1aa61c616c144`  
		Last Modified: Thu, 28 Mar 2019 11:22:22 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c31672dca2abe5976ce007aca38a7f8ff4fd94129f4e833588eca814ecb8af`  
		Last Modified: Thu, 28 Mar 2019 11:22:22 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97946c499e04b9c3ded433b2c10f0636f5ea041448276536d16d2758d18d86c`  
		Last Modified: Thu, 28 Mar 2019 11:22:22 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4741110407a3b8b42c131413dcaffd33c26aa0a8bc3a9e1f9cd4d1f63e20f2`  
		Last Modified: Thu, 28 Mar 2019 11:22:53 GMT  
		Size: 111.4 MB (111422815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
