## `openjdk:8u212-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:b6b27d412d00436f984d856ddb245decd6996536dddecf3244979c1a0fa32403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `openjdk:8u212-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull openjdk@sha256:9b4639cb06ec716bd7137786dbf63e8c4c9942d3d57aea4092304d5f01fcf9af
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5821516065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0c4f0f7eae78b16644a8f54736f1f7c7ad52c12e95f25d5f2ac71cb958d20c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 14:28:21 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 15 May 2019 14:29:21 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 15 May 2019 14:29:23 GMT
ENV JAVA_VERSION=8u212
# Wed, 15 May 2019 14:29:25 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Wed, 15 May 2019 14:29:26 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Wed, 15 May 2019 14:29:28 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Wed, 15 May 2019 14:31:26 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b89cf34797442846d6d46877849e5c7c1a7233cd2ad0a6d256089cc2ce2e03`  
		Last Modified: Wed, 15 May 2019 14:40:07 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f3aecf98d667a76343dbcd44b319b0e3efaa1383f0f93f74d16dab33d33823`  
		Last Modified: Wed, 15 May 2019 14:40:08 GMT  
		Size: 5.2 MB (5229373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de52f022bd4be9c772c7c745e2637a36f7a5ed56d4d97f366673be32d6e63945`  
		Last Modified: Wed, 15 May 2019 14:40:04 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666a0f1e82aabfd11d789f07745cb06ab0b713d99820cf18e75b1b57dabc362a`  
		Last Modified: Wed, 15 May 2019 14:40:04 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5383db392fba4853339e705d3a77fd25406649d0c763ca504c3a439146adffaf`  
		Last Modified: Wed, 15 May 2019 14:40:04 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e2a0e25d090ef8c65237a29b98c4d1bf262d7b6901875cb78814fecfd42291`  
		Last Modified: Wed, 15 May 2019 14:40:04 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8de047234272bb5d01b88e3bda998c76e1b5caa292f79eac0fef6411d4d6a5`  
		Last Modified: Wed, 15 May 2019 14:40:30 GMT  
		Size: 114.2 MB (114158568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
