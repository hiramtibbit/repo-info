## `openjdk:12-ea-13-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:02ad950f8a8c4ec2273d9320bd7efc8c7dad3972082690d89b1b180571f2f3fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.665; amd64

### `openjdk:12-ea-13-jdk-windowsservercore-1709` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:91e643018b116728ee0320524d00b96203c44abbacff4f1709f0dc5e5c91043f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3326699664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b2c47e2fc81633eaea463efd9f1f4b7960079c6d07d4a4112c44152a5480499`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Thu, 13 Sep 2018 09:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 10:30:41 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 03 Oct 2018 10:31:38 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 03 Oct 2018 10:31:39 GMT
ENV JAVA_VERSION=12-ea+13
# Wed, 03 Oct 2018 10:31:40 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/13/GPL/openjdk-12-ea+13_windows-x64_bin.zip
# Wed, 03 Oct 2018 10:31:41 GMT
ENV JAVA_SHA256=a74c96ad4913583a1c7b241fe8e4b5069f12b18c293e2a5926673e71b6a08925
# Wed, 03 Oct 2018 10:33:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 03 Oct 2018 10:33:42 GMT
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
	-	`sha256:ae90fde8b680ca3d4b1758bddb83b5fe82603ef03dd52a2a2dd2d36c21484362`  
		Last Modified: Wed, 03 Oct 2018 11:07:00 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316584245e2e3ac9eef5fa802a273a49faaca6a35ed381972ca5d75b197aad5c`  
		Last Modified: Wed, 03 Oct 2018 11:07:03 GMT  
		Size: 4.7 MB (4743153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0efd9b73ff24826ae665c8ce8708887bddd846020104011d59f3edf4512745d`  
		Last Modified: Wed, 03 Oct 2018 11:06:58 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18b12596a6986f1abe1d84cfbf1b5f7a1c0cbab80a9ff7862db33f8a9594548`  
		Last Modified: Wed, 03 Oct 2018 11:06:58 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f732808e68c138b277381173b5cd28b3b89b70a336c560366ceb5bf9a9f19612`  
		Last Modified: Wed, 03 Oct 2018 11:06:58 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c095c92826e77804af88fe1e552e4e5bf5d1658aaeab790abf61321c45d1ade4`  
		Last Modified: Wed, 03 Oct 2018 11:07:30 GMT  
		Size: 189.3 MB (189313246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cda020613aa21e74b0c6ee9b0566e1276ce85f58daac8e405f103d02559e1d`  
		Last Modified: Wed, 03 Oct 2018 11:06:58 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
