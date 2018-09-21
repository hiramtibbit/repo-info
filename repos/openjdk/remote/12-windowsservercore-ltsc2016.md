## `openjdk:12-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:5ac1714e9367e81678b99804510e2c7daf25b55a52e5fc9bdb2f1b5341727c8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `openjdk:12-windowsservercore-ltsc2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:336f1f9a876dc26220667e8bcb0f15e8fadab6222e432dc634bf631b299de85c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5782974062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5aadc96a03eefdc2424165545b7cad4c50fc52ba7dd64596f3ad99f1df700f8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:42:25 GMT
ENV JAVA_HOME=C:\jdk-12
# Thu, 13 Sep 2018 09:44:05 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 21 Sep 2018 09:16:41 GMT
ENV JAVA_VERSION=12-ea+11
# Fri, 21 Sep 2018 09:16:42 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/11/GPL/openjdk-12-ea+11_windows-x64_bin.zip
# Fri, 21 Sep 2018 09:16:43 GMT
ENV JAVA_SHA256=1065039397db6f47d45893bf20ecaf301404736b710e0ddd60f49b6480488dfd
# Fri, 21 Sep 2018 09:20:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 21 Sep 2018 09:20:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6e046b8e194c642cfc4d7dcaa12ec2f9359e1f54dbc7088ee9ca188416d5c553`  
		Last Modified: Tue, 11 Sep 2018 16:53:50 GMT  
		Size: 1.5 GB (1515870209 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7aa2ad8eff720622c1b1f25bf31d2c32b588766208c093caef00e8b31961b74e`  
		Last Modified: Thu, 13 Sep 2018 10:24:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d41013d53a6436cb43e00e548dbba344be745186756d51785d7d2112f893dc`  
		Last Modified: Thu, 13 Sep 2018 10:24:12 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf3b5f90ddee927318cc694f2e987e9a4be7bff110d2728d6b461d343523b5f`  
		Last Modified: Thu, 13 Sep 2018 10:24:15 GMT  
		Size: 5.1 MB (5091320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef44af5d38fd447c29efd2e65339b992efc1fc13d3c1c86f55d832639c81857`  
		Last Modified: Fri, 21 Sep 2018 09:34:16 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b34e3bc39bd5da3d50e870bfe3129338d50d75a2b9cb419ceb3c105eb8e1cb2`  
		Last Modified: Fri, 21 Sep 2018 09:34:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7940dc48ef16c9a752fcd35ab87bb05c2ef2acc8cff3780f65552c44e41e9c9b`  
		Last Modified: Fri, 21 Sep 2018 09:34:15 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d36b51a0b8216609db2fed6e1f0d1d1d9c874b2a34204efd7f15af89946631e`  
		Last Modified: Fri, 21 Sep 2018 09:34:38 GMT  
		Size: 192.0 MB (192019430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246b740027b61a28d84178a9c92e22d4e321f2a26e75f9180f5539e953cabc16`  
		Last Modified: Fri, 21 Sep 2018 09:34:15 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
