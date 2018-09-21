## `openjdk:11-ea-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:a8db4bd7cc805590cb842580d24c8bfafd5ccbf54e6a6ab383e207183aea4af4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `openjdk:11-ea-windowsservercore-ltsc2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:83b1bd50642f0dfc5d8d2837e660d26426b0690280bff5b21c085e33c75a172e
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5783198236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e42344fe58ac18f7576c3eae63a1e8f04dd1b55b8147c2b72d8313c9b4294ad`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:54:21 GMT
ENV JAVA_HOME=C:\jdk-11
# Thu, 13 Sep 2018 09:55:41 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 21 Sep 2018 09:25:02 GMT
ENV JAVA_VERSION=11-ea+28
# Fri, 21 Sep 2018 09:25:03 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk11/28/GPL/openjdk-11+28_windows-x64_bin.zip
# Fri, 21 Sep 2018 09:25:04 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Fri, 21 Sep 2018 09:28:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 21 Sep 2018 09:28:08 GMT
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
	-	`sha256:6a163c1d21ac3709c50d1ee769bc36e133da0d08b2e8d19758599255ace2edac`  
		Last Modified: Thu, 13 Sep 2018 10:26:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fdad88a0b618155f02b69cd24bcec49279f85b0625ea90430160d151b525ea`  
		Last Modified: Thu, 13 Sep 2018 10:26:57 GMT  
		Size: 5.1 MB (5090861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0471cde74e947d99700490d11b37ae093c18ca6d7ced6068e239206f7705a03a`  
		Last Modified: Fri, 21 Sep 2018 09:36:45 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ba742dc30e92e94b978d2305996f96bc75dccace11e396eb3e6ff9080d5472`  
		Last Modified: Fri, 21 Sep 2018 09:36:45 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7dacfbca1b731ce1b970bca06640ffd38200d9bbe88b18cacc9050c1f755ee`  
		Last Modified: Fri, 21 Sep 2018 09:36:45 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4928674a5c81e9a6fe1fd9a9629cf5e246fa733101ad41657390e5ccacd8e4c2`  
		Last Modified: Fri, 21 Sep 2018 09:37:08 GMT  
		Size: 192.2 MB (192244060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec6b7eca444144994531ce22e983d641b130794accbbf03d44b23e098c8d4ba`  
		Last Modified: Fri, 21 Sep 2018 09:36:46 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
