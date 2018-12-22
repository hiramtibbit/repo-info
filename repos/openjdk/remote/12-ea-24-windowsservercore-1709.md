## `openjdk:12-ea-24-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:d8d8048510512618c0b8ac0f4e8d55c3987ef8a27a00deeaac574afe9124a5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `openjdk:12-ea-24-windowsservercore-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull openjdk@sha256:9d4e8df598dde46910e288985823cd9a1e1d92441fd93da6ec3af953178f4178
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3353267766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f110e4e559f5d2333e5d9e6ae3df71cfce294996ad338b51cb88c37346c2493a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Fri, 14 Dec 2018 10:54:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 22 Dec 2018 10:20:54 GMT
ENV JAVA_HOME=C:\openjdk-12
# Sat, 22 Dec 2018 10:22:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 22 Dec 2018 10:22:04 GMT
ENV JAVA_VERSION=12-ea+24
# Sat, 22 Dec 2018 10:22:05 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/24/GPL/openjdk-12-ea+24_windows-x64_bin.zip
# Sat, 22 Dec 2018 10:22:06 GMT
ENV JAVA_SHA256=4ecd476eca44cfc061769ee0ded86fe35e5ab11caedc930112badab4ce9bfcc2
# Sat, 22 Dec 2018 10:24:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 22 Dec 2018 10:24:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3f98cda35707ef2fc387c3a54b43843c3b83a0aca5dff2755b109b6395a01f1c`  
		Last Modified: Fri, 14 Dec 2018 11:45:45 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866463f1e89a87b32297c7b1d572f70f88dc7ed60e4540d42bea0d3fa7a7a096`  
		Last Modified: Sat, 22 Dec 2018 10:49:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495d1a9bf70be27ca85ed94d2fa87ea17abbfc587ffbecef51bd48c6088fb197`  
		Last Modified: Sat, 22 Dec 2018 10:49:36 GMT  
		Size: 4.8 MB (4789704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6f654fd767131624dac250432c120017f50c6af6de388674b86a9f9fdfc567`  
		Last Modified: Sat, 22 Dec 2018 10:49:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4348df3db4e2a9ef03b4a15ff1e0131af403fe23ec4aae491430426c3c8d4f6`  
		Last Modified: Sat, 22 Dec 2018 10:49:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76b3d69a28e2cbd86eb8bc79217eeab6e9ff47254c2e704496dd4866fd29ce8`  
		Last Modified: Sat, 22 Dec 2018 10:49:32 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c95f9860a59b031fed8771a5dbe95557a24b1481449c1c2171db64f7ba3dfb4`  
		Last Modified: Sat, 22 Dec 2018 10:49:57 GMT  
		Size: 196.3 MB (196333262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75814e0f951326c6c5ddaa08c2efb539c9eb4e4b26219ad67725945df21dd2ed`  
		Last Modified: Sat, 22 Dec 2018 10:49:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
