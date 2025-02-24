## `openjdk:11-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:b90c55137b85faebe8f117c7e83814788e4e807b1ca3da14d58c1bc4c74b316b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `openjdk:11-jdk-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull openjdk@sha256:0122f80cd4cefb74bb98906cf9c0dd4cc35a61c3094cb54f5f1f6fa5eb264ae5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2503392389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7dea99c5d7bc6388320d2dffce4ed1a12a4b848e3f0b03770219a35b150aa4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 15:17:05 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 12 Jun 2019 15:17:49 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 12 Jun 2019 15:17:50 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 12 Jun 2019 15:17:52 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 12 Jun 2019 15:17:53 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 12 Jun 2019 15:19:42 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 12 Jun 2019 15:19:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f421b9f54118994d657e95c9c67dfcb9d0360bb86f46bf0b2905c0d38e64593`  
		Last Modified: Wed, 12 Jun 2019 15:49:02 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8498d673ee2263dd49bc3a875bd3cc9f8e995c5ea1a72ae60064bd8e12e112`  
		Last Modified: Wed, 12 Jun 2019 15:49:04 GMT  
		Size: 4.8 MB (4766841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb4128ac64ff54b477b3b59c9d10731c0e678d5412d6eeb610983f29a756527`  
		Last Modified: Wed, 12 Jun 2019 15:49:00 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb12f14518746f3494e3c6076ca8f63155edff53b8ae910cf5747e21cd9578e6`  
		Last Modified: Wed, 12 Jun 2019 15:49:00 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aafdaf3b4164b2ad5beeee8155daee2278f57d8dc7200fe6feac3eea5f91612`  
		Last Modified: Wed, 12 Jun 2019 15:49:00 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7038378a4897895a4da913e88ed96ad3a3bcbccca3b0e078451051adab357c5`  
		Last Modified: Wed, 12 Jun 2019 15:49:36 GMT  
		Size: 190.4 MB (190411805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13687f9bdc77466e2705432172991518c842a0689f1f7d80011a4ad1f8323653`  
		Last Modified: Wed, 12 Jun 2019 15:49:00 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
