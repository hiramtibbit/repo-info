## `openjdk:11-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:7941ba49763783d0893a2170a3dc7dd76b50b4d3d22359f0792480215dd508bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `openjdk:11-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:b6619907a796c4394a345ee6128c91b73aafa655b2c6d1d1670e4e39a3b190c7
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5783180783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13f6f0d127354d59bd1fb8c2bbefb33b41d948f4259112b9312774ba1c7f7bd7`
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
# Thu, 13 Sep 2018 09:55:42 GMT
ENV JAVA_VERSION=11+28
# Thu, 13 Sep 2018 09:55:43 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk11/28/GPL/openjdk-11+28_windows-x64_bin.zip
# Thu, 13 Sep 2018 09:55:45 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Thu, 13 Sep 2018 09:58:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 13 Sep 2018 09:58:37 GMT
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
	-	`sha256:8090216d4bb7f433f13ac671bc711b1f4362b16db19d90e0aeb77fa29bfe545a`  
		Last Modified: Thu, 13 Sep 2018 10:26:53 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371770c6c18c5980f3afda165f196bf3ef9344e42fb1383a4e66acf383fde5c7`  
		Last Modified: Thu, 13 Sep 2018 10:26:53 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80242902e593e777c98257304813b9c4e9b6fe09854fe225654026ef634301ab`  
		Last Modified: Thu, 13 Sep 2018 10:26:53 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9e4646b83e2fe42dd66e7b202dd8c28f7bad7371583221636086bbd92a0d98`  
		Last Modified: Thu, 13 Sep 2018 10:28:04 GMT  
		Size: 192.2 MB (192226629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf52260c345eaf710ad54f265eb879a60059e9b08f6b5f8e113a3b06a10f762`  
		Last Modified: Thu, 13 Sep 2018 10:26:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
