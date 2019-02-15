## `openjdk:8u201-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:40dcbb35fe703db37c38947ab09ba3f2a298b03d17035ebc4382930241d7bd6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.590; amd64

### `openjdk:8u201-jdk-windowsservercore-1803` - windows version 10.0.17134.590; amd64

```console
$ docker pull openjdk@sha256:73ba1177a85547d3ea62fb9506db7c028d4adf9432ac5ffc7ceadcc9375afdad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2358944203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d371938e834b3fd1e4c96f2958506334a58e3a78e10e2224d9f833eb3693faf7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 07 Feb 2019 23:00:02 GMT
RUN Install update 10.0.17134.590
# Wed, 13 Feb 2019 11:38:10 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 11:36:34 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 15 Feb 2019 11:37:25 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 15 Feb 2019 11:37:26 GMT
ENV JAVA_VERSION=8u201
# Fri, 15 Feb 2019 11:37:28 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Fri, 15 Feb 2019 11:37:30 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Fri, 15 Feb 2019 11:37:31 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Fri, 15 Feb 2019 11:38:48 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e94f7b83ce20c90f9f1b0323c3f9c3c791163e44e7069e47cd76cf50a3a07ef`  
		Last Modified: Mon, 11 Feb 2019 21:11:29 GMT  
		Size: 588.0 MB (587983329 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0f56eeb2940f5c3391f320574c551c5f84072a3baaee150b165407a99cfba06`  
		Last Modified: Wed, 13 Feb 2019 12:50:23 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de08a459e044c1e7c692ad895eee0bde40f3248f98be14e2362f2081d9da77`  
		Last Modified: Fri, 15 Feb 2019 12:18:20 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3787902c33760805004806491b4d8315ea53c2e2beb8d839c8013caf95ceb35`  
		Last Modified: Fri, 15 Feb 2019 12:18:25 GMT  
		Size: 4.7 MB (4709941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee1bdde861e801e57033f526f5d4ed140b10179ee2bcded11c0f624ad0c19ab`  
		Last Modified: Fri, 15 Feb 2019 12:18:17 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185efe2e264efe02fd95b33f0345b8c38c76c28ba2ca858b6f55f7e2975e795f`  
		Last Modified: Fri, 15 Feb 2019 12:18:17 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105c12424d65039d4ed0ef701d315b4d93549bac3df168b87ae695fe681df178`  
		Last Modified: Fri, 15 Feb 2019 12:18:17 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0cc5cc216cbc0f66a9946d02f57ff1f13cab33abad6ed73b0b97b2a50a3f81`  
		Last Modified: Fri, 15 Feb 2019 12:18:17 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefc1987e954edb15748496ed59883f068eeb984b9575620480f8ebd6b3c50a3`  
		Last Modified: Fri, 15 Feb 2019 12:18:41 GMT  
		Size: 106.6 MB (106555454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
