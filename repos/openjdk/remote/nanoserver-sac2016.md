## `openjdk:nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:55a0efb5be1cef72c9552ef06fb5438516aac0fe3acb4f1ef21e3593a3e59369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `openjdk:nanoserver-sac2016` - windows version 10.0.14393.2312; amd64

```console
$ docker pull openjdk@sha256:28b0d4432c7a8888021a10d5c7ba37e961db059c1ca21613fe5cd1e4f3859f26
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **527.1 MB (527129233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b8b4048c7d6dde032a0d659b81a54438ae272db720f21de8255f3d080eeeed8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:03 GMT
RUN Install update 10.0.14393.2312
# Sat, 16 Jun 2018 10:30:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 16 Jun 2018 10:31:16 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Sat, 16 Jun 2018 10:31:17 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Sat, 16 Jun 2018 10:31:41 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 16 Jun 2018 10:40:27 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 10:40:28 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Sat, 16 Jun 2018 10:40:29 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Sat, 16 Jun 2018 10:40:30 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Sat, 16 Jun 2018 10:41:41 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7a598ed389ee13dc16cb56bd512d2eecc9597d79797803ef538a02b1e12351f`  
		Last Modified: Wed, 13 Jun 2018 00:36:03 GMT  
		Size: 165.7 MB (165749131 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f9707ab6c8a293f32ee933ea8e63868cecf65ddbe69c01c95a66098b88534057`  
		Last Modified: Sat, 16 Jun 2018 10:44:57 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dda44b611117ad405d96b91c4bb9c3291d74823c86a6407391bf2b12a6fb4de`  
		Last Modified: Sat, 16 Jun 2018 10:44:55 GMT  
		Size: 924.2 KB (924166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331b973c2f151d2a568e4524833c0bf77da316b5ee0df00f18337754b2d80cac`  
		Last Modified: Sat, 16 Jun 2018 10:44:54 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da637282c84bce240cead3d44894ed3b448d305ddd6fcd03d196746d673dd0b`  
		Last Modified: Sat, 16 Jun 2018 10:44:54 GMT  
		Size: 840.3 KB (840283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2f1d56f68509eabcd7c4441816208bf286b67f570f96f98857a88b18ab1888`  
		Last Modified: Sat, 16 Jun 2018 10:47:42 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c0b9e79387d611434092cb708ce48ab91c5c3dfd5858f3d15161463900c727`  
		Last Modified: Sat, 16 Jun 2018 10:47:42 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d7281744ba39a92d51dbb1aa4af8916dc85fb1f612b8c0fe1af10c31dc05ef`  
		Last Modified: Sat, 16 Jun 2018 10:47:42 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b483cc59fa69dacc2f4e4132bd615c5f9ab5ea03323fa9fcc30a62a25b432cba`  
		Last Modified: Sat, 16 Jun 2018 10:47:42 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513641034fb9d9f5f81c9da5d1dcdcc3239be891dd42c5091c2e4903d83cde44`  
		Last Modified: Sat, 16 Jun 2018 10:47:56 GMT  
		Size: 106.9 MB (106919001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
