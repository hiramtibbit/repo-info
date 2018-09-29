## `openjdk:11-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:792278183b44f95fe28a4e26f0319f8ea7ca7b40b60ce55f9dc180a892a9bc32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.665; amd64

### `openjdk:11-windowsservercore-1709` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:253aba15a3eb19bc69dc577721f511c90b1143328b000bcd66dea9d8d5209fa8
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3324768060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb2974af6b85c9c2f6ca3bef94f8907712accb5ed1a7f186cd44a1f470eb02b7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Thu, 13 Sep 2018 09:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:58:48 GMT
ENV JAVA_HOME=C:\jdk-11
# Thu, 13 Sep 2018 09:59:41 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 29 Sep 2018 09:26:40 GMT
ENV JAVA_VERSION=11
# Sat, 29 Sep 2018 09:26:41 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/28/GPL/openjdk-11+28_windows-x64_bin.zip
# Sat, 29 Sep 2018 09:26:42 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Sat, 29 Sep 2018 09:29:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 29 Sep 2018 09:29:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a5b83e25f92aef992a2827d664111b4726ada7d0b13d7af21882734cab96d8d0`  
		Last Modified: Tue, 11 Sep 2018 17:07:56 GMT  
		Size: 858.3 MB (858335510 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa61e3e01eeaa5482e77157970441ee8c2414720462e140b668a5b58902a78f5`  
		Last Modified: Thu, 13 Sep 2018 10:25:08 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d2740223569795bbfaa59e0ca67ae4a3f992218e293e85d470cec3bd72626e`  
		Last Modified: Thu, 13 Sep 2018 10:28:29 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517408eb2850768810590f3e4b6cc37a56eda4a10339ae1f36cb1cfcf027f961`  
		Last Modified: Thu, 13 Sep 2018 10:28:31 GMT  
		Size: 4.7 MB (4724586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b94eac591460e3a2ca4a9b752fae9280046b6cc451efa663cd5fada3d58970`  
		Last Modified: Sat, 29 Sep 2018 09:35:13 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c2a4632c0c91d721f4ef646420cb383eaf65f9f2a4da728cd35aebcb64a1fc`  
		Last Modified: Sat, 29 Sep 2018 09:35:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef5319bd5371594fd5ab90fe0b604ffd32737bd910481c79dbf4a0bee8bd5f2`  
		Last Modified: Sat, 29 Sep 2018 09:35:14 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10215a9a08791737177d87fdedbf2747d5497652ff9bb428a60363ca4edbdf40`  
		Last Modified: Sat, 29 Sep 2018 09:35:35 GMT  
		Size: 187.4 MB (187400204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ead3b6213ebe151813be6744b8530740ff9986c6698dcd484bd17e0093851e`  
		Last Modified: Sat, 29 Sep 2018 09:35:13 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
