## `openjdk:11-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:877ba61ac374519aa079c44cdbbebb998a7244bcf7e4751b6e179258e219a2c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `openjdk:11-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull openjdk@sha256:453704d63447bec342f2024f91cb3194d682bd3a65bda3c0ffcea66b17ec46ec
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5900314100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f67a39cb6408f34ee27979274d5da6acd1a6d08352cd695e2c7c6a7c17684b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 12:40:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 24 May 2019 23:30:18 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 24 May 2019 23:31:22 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 24 May 2019 23:31:24 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 24 May 2019 23:31:26 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Fri, 24 May 2019 23:31:28 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Fri, 24 May 2019 23:34:01 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 24 May 2019 23:34:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:238abb146382d28000f03a82c40be99cbfac99a1480f9d23f8a6420cafc6b083`  
		Last Modified: Wed, 22 May 2019 13:21:05 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cba9116d20ef93bae1c07c0f15e52222b8badc6e38a5f1eba4373111495b00`  
		Last Modified: Fri, 24 May 2019 23:54:42 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998204f8383afe84f0ac60bb990dd85eafe41db1106aeb386fca3d6e3e19196b`  
		Last Modified: Fri, 24 May 2019 23:54:44 GMT  
		Size: 5.2 MB (5216776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8aa04df00dc5310579fb87f36f71a34fd222c5d31f7205ea053aa72ab1747ed`  
		Last Modified: Fri, 24 May 2019 23:54:40 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c268bc1479b0177c7355ec600008b2e2dd218f550a99f112f8d786ab9c36d9`  
		Last Modified: Fri, 24 May 2019 23:54:40 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2f5fe66a7147194886cc20f16997762d38435600dce2ec7beb3c5e49db20da`  
		Last Modified: Fri, 24 May 2019 23:54:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63df3013fbf52df626cf53de77330dca6b557dce9b8c939c9294012c3daacea`  
		Last Modified: Fri, 24 May 2019 23:55:53 GMT  
		Size: 195.3 MB (195302094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9bf903bdb3753c119a87e41cb98b6411afa56a5d2b8862e76049d9c94056d9`  
		Last Modified: Fri, 24 May 2019 23:54:40 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
