## `openjdk:8u161-nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:f1d27bac421c0f36c59ac6de42cffca0b262caa6ed465fe141c0fc72f7806446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `openjdk:8u161-nanoserver-sac2016` - windows version 10.0.14393.2068; amd64

```console
$ docker pull openjdk@sha256:383a28f39ed2faa3a24e1e5b4b9ab4cf472f809d227903368e4ab1bed6a32d7d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **513.2 MB (513161292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55253476b4e6fa29aaba9fb1502191fbbbf9e623975fc1b964957eb9d634eee5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:43:23 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 10:11:06 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 14 Feb 2018 10:12:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 14 Feb 2018 10:17:43 GMT
ENV JAVA_VERSION=8u161
# Wed, 14 Feb 2018 10:17:44 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.161-1
# Wed, 14 Feb 2018 10:17:44 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.161-1.b14.ojdkbuild.windows.x86_64.zip
# Wed, 14 Feb 2018 10:17:45 GMT
ENV JAVA_OJDKBUILD_SHA256=7fcd9909173ed19f4ae6c0bba8b32b1e6bece2d49eb9d87271828be8121fc31b
# Wed, 14 Feb 2018 10:18:48 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cb1aafb7147372cc64faa070b94a893b8cd2e3de3a0e8001dc225c627d991c58`  
		Last Modified: Tue, 13 Feb 2018 19:43:23 GMT  
		Size: 152.8 MB (152802641 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0989bc431af6e98554c888dbe8a07881dbcb304436056a928c065a30bab3228`  
		Last Modified: Wed, 14 Feb 2018 04:47:49 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576db01e9fd3a9c5429ca84f86f3d1854fdfa11e8e00880a8b727bd08e55b26b`  
		Last Modified: Wed, 14 Feb 2018 10:20:54 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9191b5a9cca0aa3eb49a1823d2083ee810aa9cc731b98a53b3f3446e27d870f2`  
		Last Modified: Wed, 14 Feb 2018 10:20:54 GMT  
		Size: 851.0 KB (851026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5839863596435c228ed4ca37516fada0810ba190f93ca85685ba62744174dd3`  
		Last Modified: Wed, 14 Feb 2018 10:22:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4ed828b5828b1e16b232503a14441dfa1c2d9b754363a051c7085cce464bfd`  
		Last Modified: Wed, 14 Feb 2018 10:22:54 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3196aaf122e2ddcde662fdaeef7d0781699f5638d82317bc07bccac7fd6fd7ac`  
		Last Modified: Wed, 14 Feb 2018 10:22:54 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2b7dbc9cd007a08c9a6435b58c3f0444e0b72a63140f96ed56309112c65ea8`  
		Last Modified: Wed, 14 Feb 2018 10:22:54 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abe9b102a04fbb3320e8813aa818586832314fa81efd59ea4b1f2f57939aef8`  
		Last Modified: Wed, 14 Feb 2018 10:23:09 GMT  
		Size: 106.8 MB (106810958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
