## `openjdk:12-ea-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:8faf0d15a431b924bd7cf555ecca1407c1e3adcedda972cfdd8cf34b658924c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `openjdk:12-ea-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:e21c923009f6b4182da39b33a74ae050d56039819e3f9b3e6aaf0e6d47640e01
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785057889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff85975adb2c621cc4ef05f814e6acf205ff56ec77807ceeaf357e2f1af9061b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 10:26:40 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 03 Oct 2018 10:28:01 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 06 Oct 2018 09:16:47 GMT
ENV JAVA_VERSION=12-ea+14
# Sat, 06 Oct 2018 09:16:48 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/14/GPL/openjdk-12-ea+14_windows-x64_bin.zip
# Sat, 06 Oct 2018 09:16:49 GMT
ENV JAVA_SHA256=43ac13c36e6d868c55e4e5bfefa2e9ae1fa7fb4006fde49ac8b2a3e1b9ca8279
# Sat, 06 Oct 2018 09:19:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 06 Oct 2018 09:19:51 GMT
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
	-	`sha256:38a9f12690baac04c48f542b4cb10d68ff90ea0766ee37b055bc12b097055bed`  
		Last Modified: Wed, 03 Oct 2018 11:06:07 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f2b53a1b840087a88430ad81d952335c52d847423a89cca793575d8c3d788b`  
		Last Modified: Wed, 03 Oct 2018 11:06:10 GMT  
		Size: 5.1 MB (5100445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ce8883c058849dfdf2f70260071d11a1fe001498d03ed551522add384f3f9e`  
		Last Modified: Sat, 06 Oct 2018 09:25:45 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4864a2f5f1059ce8f2e762e22bfed9eec1cfda6eac3f4ebdbc4750e99e6a5b79`  
		Last Modified: Sat, 06 Oct 2018 09:25:45 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ee7c15906fad0baef463dbb0375c6be90f90739415748b57760a589d720770`  
		Last Modified: Sat, 06 Oct 2018 09:25:45 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523cca92d334fc6503395a4bf6254790f1af68c93251a3d2d9df0ef420b1182`  
		Last Modified: Sat, 06 Oct 2018 09:26:08 GMT  
		Size: 194.1 MB (194094133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6468509823c0e7376bab8fe47a3036a0a89b41687f5b3368f8b5e52327be41a8`  
		Last Modified: Sat, 06 Oct 2018 09:25:44 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
