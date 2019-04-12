## `openjdk:8u201-jdk-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:7f64bb9162307b8f4860742f9540c2561d94a08cf7740ab38e2b25e0eb4e4c9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.437; amd64

### `openjdk:8u201-jdk-windowsservercore-1809` - windows version 10.0.17763.437; amd64

```console
$ docker pull openjdk@sha256:50cc97b09d3c9facee4491de1a31afd48c4e6c35e7d76cddbf2aa38d34339be9
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2084755069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03398bf4d375d5538320e674cc2a54f92439c233810dc5d707c54c93a820c80e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 01:09:15 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 12 Apr 2019 01:40:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 12 Apr 2019 01:40:08 GMT
ENV JAVA_VERSION=8u201
# Fri, 12 Apr 2019 01:40:10 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Fri, 12 Apr 2019 01:40:11 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Fri, 12 Apr 2019 01:40:13 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Fri, 12 Apr 2019 01:41:32 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5b2dd28acb9f0bc26b10ba7e668caeae093e3cdb6deaa9214993be0c2044a1`  
		Last Modified: Fri, 12 Apr 2019 01:59:32 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199f619aea7e26cdeea9a70a82964cfee407b41ba9f77e721dbe6a8b2ae9c0ef`  
		Last Modified: Fri, 12 Apr 2019 01:59:33 GMT  
		Size: 4.3 MB (4340593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3719fb8609063610754d183ff0c79007ac1cb47b0bda28de2a7bdb794d78bbf`  
		Last Modified: Fri, 12 Apr 2019 01:59:29 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017aa12bf15033a12bc1e3e2ae3eb34c6fe4d68961f1ff84ab8e10daad778478`  
		Last Modified: Fri, 12 Apr 2019 01:59:29 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661110c35ef0075bba0a642d1d33dddc27761add856e0519e78cd7b5a2496402`  
		Last Modified: Fri, 12 Apr 2019 01:59:29 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0ec0f35eeb915401cb4b149bd305d9905b4d5e28260a202ef813fea2357a9b`  
		Last Modified: Fri, 12 Apr 2019 01:59:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9785efdde72f4fe7c7ee166f1e6174ed9cc63b8a97a4f7621494f55a4c7389ca`  
		Last Modified: Fri, 12 Apr 2019 01:59:50 GMT  
		Size: 106.5 MB (106543984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
