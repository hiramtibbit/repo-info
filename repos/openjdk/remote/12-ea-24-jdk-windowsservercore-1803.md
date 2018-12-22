## `openjdk:12-ea-24-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:8c4a06e8ca21bb2fb8b7492d517ec675c8ffa9d5c6d85d538d85aef5ff54490d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `openjdk:12-ea-24-jdk-windowsservercore-1803` - windows version 10.0.17134.469; amd64

```console
$ docker pull openjdk@sha256:74d29698e17dfd49a4b7866881e2ee8877cfebdc3f09dced24bbad0f07dbd476
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2440189753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57d031ced5a6cb348ccc4a3de3d852606475cf2f8e41994c0e4b4f6f60a553a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Fri, 14 Dec 2018 11:04:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 22 Dec 2018 10:24:37 GMT
ENV JAVA_HOME=C:\openjdk-12
# Sat, 22 Dec 2018 10:25:39 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 22 Dec 2018 10:25:40 GMT
ENV JAVA_VERSION=12-ea+24
# Sat, 22 Dec 2018 10:25:42 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/24/GPL/openjdk-12-ea+24_windows-x64_bin.zip
# Sat, 22 Dec 2018 10:25:43 GMT
ENV JAVA_SHA256=4ecd476eca44cfc061769ee0ded86fe35e5ab11caedc930112badab4ce9bfcc2
# Sat, 22 Dec 2018 10:27:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 22 Dec 2018 10:27:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a716b198c71b782955b21f1eed303f89f487eaef823ebccdeb452b764512b3b`  
		Last Modified: Tue, 11 Dec 2018 22:06:40 GMT  
		Size: 583.9 MB (583898765 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8b4b6fc57867bd595f143a036b6646613e7abc74c4e3c65f07d1c770f023d14c`  
		Last Modified: Fri, 14 Dec 2018 11:47:50 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e5bc76e212615743b6226802531cc2b1fe2fcd845246ab5bd9c5fbebd55f44`  
		Last Modified: Sat, 22 Dec 2018 10:50:29 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20acd05e3fff8cf88f109329f574f87ac16ee5f5430101c3fe1aa4dfada4a26`  
		Last Modified: Sat, 22 Dec 2018 10:50:31 GMT  
		Size: 4.7 MB (4706413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b54ac15e78beef70a1debd56f09c0bba8df47690c5ccab1c97d55282e44c23d`  
		Last Modified: Sat, 22 Dec 2018 10:50:26 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe1f6f80ca51da867a047abfd8f7458db0e331679d1a6886d55b3c52142ed0b`  
		Last Modified: Sat, 22 Dec 2018 10:50:26 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095470009ae8d6810f584be5b52128e762d420bf94c9bdca151d2e46e5541f63`  
		Last Modified: Sat, 22 Dec 2018 10:50:26 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868dd8468f0e54105767836da3746098a0c59c3a226ff085869641ad5886a1fa`  
		Last Modified: Sat, 22 Dec 2018 10:50:50 GMT  
		Size: 191.9 MB (191889109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768d8fc8e6537d0616b322fcb2b1b7178d48bd62ae951e5445c5766980755a5f`  
		Last Modified: Sat, 22 Dec 2018 10:50:26 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
