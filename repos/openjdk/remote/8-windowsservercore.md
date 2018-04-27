## `openjdk:8-windowsservercore`

```console
$ docker pull openjdk@sha256:eea5f55fae76d041d0a0ab1930538755e863e281eb44eccd2f76e0637545a2ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `openjdk:8-windowsservercore` - windows version 10.0.14393.2189; amd64

```console
$ docker pull openjdk@sha256:890e9a54f4ec5fde9db9fb9097643d7e02079b1ecd62aa08025ae19ab69b1aed
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5510326996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adde12587cd23faa44104004a7a33dfaf229e20af535ee0df166305a013f1ac2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 27 Apr 2018 09:14:08 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 27 Apr 2018 09:14:58 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 27 Apr 2018 09:17:24 GMT
ENV JAVA_VERSION=8u171
# Fri, 27 Apr 2018 09:17:25 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Fri, 27 Apr 2018 09:17:26 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Fri, 27 Apr 2018 09:17:27 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Fri, 27 Apr 2018 09:19:04 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a349199f312de7e0cdcdbed72712f35bb57413c1f80aa570c9dc86ab6da7b0c`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ed6288f0312dd500fe0636926facfbf7c611c45f48567d857aa624ca29cea3`  
		Last Modified: Fri, 27 Apr 2018 09:24:44 GMT  
		Size: 5.0 MB (5002252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7521458bf24107298472bc0925d2c84898540c548087d9816c629ccef694be2b`  
		Last Modified: Fri, 27 Apr 2018 09:25:27 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf5796811b1d7e09428cd03e624420f0574ac8a7bedb21c27d8c9e8a62a8b0b`  
		Last Modified: Fri, 27 Apr 2018 09:25:27 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69cbb3454e86d0743796bb7349edcdbb8fbc330a6ac609f0fe7d5de7f365bae`  
		Last Modified: Fri, 27 Apr 2018 09:25:27 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b26b4a5c4a997615c9bd92a2ac79a2c2d6e13e32aa75dfe5dc63bca6ba4c3e`  
		Last Modified: Fri, 27 Apr 2018 09:25:27 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf774a484330c039a98c8f19fc8c806abdbe6dd21664905fba817c60d629be12`  
		Last Modified: Fri, 27 Apr 2018 09:25:44 GMT  
		Size: 111.1 MB (111104180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-windowsservercore` - windows version 10.0.16299.371; amd64

```console
$ docker pull openjdk@sha256:29730733423d1a5860464c8b54e99839d9f1f3bf78daafb7ec3a38e2296ae8bf
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3151321009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ebfe02f42a80e6eb1bf16537ab317d7ee6533ab0fcf9ac054e5ea9be553f2d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Apr 2018 09:40:28 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 26 Apr 2018 17:46:19 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 27 Apr 2018 09:19:19 GMT
ENV JAVA_VERSION=8u171
# Fri, 27 Apr 2018 09:19:20 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Fri, 27 Apr 2018 09:19:21 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Fri, 27 Apr 2018 09:19:22 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Fri, 27 Apr 2018 09:22:10 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31131dc3dce05a183b79d2f8f0875b2dfa07459308d06c8001e04e2671993f15`  
		Last Modified: Thu, 26 Apr 2018 18:08:14 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae06e6181c2ed81d08c244d8160ce1a8cd70ac216cfcca49a16518f6eaf545b`  
		Last Modified: Thu, 26 Apr 2018 18:08:15 GMT  
		Size: 4.7 MB (4689312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2864502b9517fac3ccba1570e362d380cf30f272bdad45840e78024ba06fe915`  
		Last Modified: Fri, 27 Apr 2018 09:26:11 GMT  
		Size: 1.1 KB (1136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14b4113351564fd7f4e98c54cb16f23685090517b7a7ec17981ee2750f74c63`  
		Last Modified: Fri, 27 Apr 2018 09:26:13 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ccca9380e39765ea8fb6f36fe1e67dfdf08c4b4e0e5dc358d5933aa154329d`  
		Last Modified: Fri, 27 Apr 2018 09:26:12 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e5aab12875b4b7252de7d03a161b428bb6c47b6431a7af8d461e286df7cfbd`  
		Last Modified: Fri, 27 Apr 2018 09:26:11 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b744fe9e6a0f886e600c6ac790beff0139adfd6d7aa382b3b1054cc24a94680e`  
		Last Modified: Fri, 27 Apr 2018 09:26:26 GMT  
		Size: 110.8 MB (110774356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
