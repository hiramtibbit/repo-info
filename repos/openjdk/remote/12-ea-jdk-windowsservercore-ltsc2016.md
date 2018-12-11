## `openjdk:12-ea-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:afb54cb98ce7f8fda469d33d975ac4877c3cfeec8ad7a1645397d2d8ae686199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `openjdk:12-ea-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull openjdk@sha256:3c3e99ac19b8c97aae0ef6090945149119c93f75be5e2059a699f414b9976a01
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5839695538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a70a7a4b60e96b2caeff239df153c8e12db940105919a679addfdd68db986e99`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:17:31 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 21 Nov 2018 10:19:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 11 Dec 2018 10:17:30 GMT
ENV JAVA_VERSION=12-ea+23
# Tue, 11 Dec 2018 10:17:31 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/23/GPL/openjdk-12-ea+23_windows-x64_bin.zip
# Tue, 11 Dec 2018 10:17:32 GMT
ENV JAVA_SHA256=2763f6b811d508f30382e8f209f03540d842487bb1a9499cd0a9381bdb1697ff
# Tue, 11 Dec 2018 10:20:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 11 Dec 2018 10:20:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a73dd485a587939590e9229c43eb1d7f486dddef485831ea8b810e1b770bd24`  
		Last Modified: Wed, 21 Nov 2018 10:55:34 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9185aff84009eb869fc2300040d79fe8ef8be56a519bc4f52cc943a234e429`  
		Last Modified: Wed, 21 Nov 2018 10:55:36 GMT  
		Size: 5.2 MB (5204448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d034788a314e8aa246ea0ea2557fcc542eec3ce68e5eb1bf1af06524378f2f14`  
		Last Modified: Tue, 11 Dec 2018 10:27:24 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5011c74d97a386ec79f464c73780c0b5a57c08f15c47b66ffaa4bbda3db1b6ce`  
		Last Modified: Tue, 11 Dec 2018 10:27:25 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11516cb08b1dc845af7fbb10e8f1d81a280b4aa5f282faec453ed7cc269f071c`  
		Last Modified: Tue, 11 Dec 2018 10:27:24 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668618a20c9d5fe30503ccf4bea42e7ce74bc08ee2b6ef834b0f7cae67262d03`  
		Last Modified: Tue, 11 Dec 2018 10:27:49 GMT  
		Size: 200.6 MB (200562896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37eaeac3a438210dd45b0b4985bd4fed516cd741715f269ac43c69126597fda7`  
		Last Modified: Tue, 11 Dec 2018 10:27:24 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
