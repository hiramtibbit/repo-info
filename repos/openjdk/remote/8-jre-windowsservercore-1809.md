## `openjdk:8-jre-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:f897208a4ec56e1aa63b8ecbfa288357b4e109e7155cd2ad4f71b851a257d2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64

### `openjdk:8-jre-windowsservercore-1809` - windows version 10.0.17763.504; amd64

```console
$ docker pull openjdk@sha256:053730baefccdcda043e548d11f6a073f6041cc8228cb1d33ebafb152bc07d14
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2134407325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956b9fd0e5e18a1e9b0fe566c320bf99b22cdfa7452de421b653ccae1ee68e06`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 24 May 2019 23:34:17 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 24 May 2019 23:34:55 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 24 May 2019 23:34:56 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 23:42:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 23:42:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 23:43:41 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d4e587840c15e420fe1e5fdaf8caf8cfc443e767405a1caa51e7c38e956da8`  
		Last Modified: Fri, 24 May 2019 23:56:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5be97e3694157e37f7e42ae3006bfa411f1d49010daed156d92061aa612d65`  
		Last Modified: Fri, 24 May 2019 23:56:27 GMT  
		Size: 4.3 MB (4338267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64742ab7c1769852c5852aa47770969d44476d4ccd5cb9c2ecd198879b0662fb`  
		Last Modified: Fri, 24 May 2019 23:56:26 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4fcb21d08ff0277e61322ee35ca7a3b731561b094c946ce0210924617c051`  
		Last Modified: Fri, 24 May 2019 23:59:55 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79e266b1d043018b71e06e1e479b53abeb2d740863defd3b7f20c5995d4ef84`  
		Last Modified: Fri, 24 May 2019 23:59:55 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce11ccb6909369a68dffd504cf120839bae472602d30629d52f7e7898ebc374`  
		Last Modified: Sat, 25 May 2019 00:00:52 GMT  
		Size: 50.9 MB (50936438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
