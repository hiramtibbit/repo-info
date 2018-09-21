## `openjdk:11-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:0c7bd00d13a8c9268d08c4dac8dcdc4db0bfb8f47f06772e376ef494da67b6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.665; amd64

### `openjdk:11-windowsservercore-1709` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:8eab6569b15de37c61b4f2e22611e86a781d5d38f08898ea15745bad9916e022
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3324773188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffef13cc548dcda83a0a9769ba077b852ab545129b25fc652b7e9d5e652a09bf`
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
# Fri, 21 Sep 2018 09:28:15 GMT
ENV JAVA_VERSION=11-ea+28
# Fri, 21 Sep 2018 09:28:16 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk11/28/GPL/openjdk-11+28_windows-x64_bin.zip
# Fri, 21 Sep 2018 09:28:17 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Fri, 21 Sep 2018 09:30:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 21 Sep 2018 09:30:20 GMT
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
	-	`sha256:5a3afecfa4922a999cdfd5ede74f7ac7be6375857d9603d7ea0fa8b9dd088c5a`  
		Last Modified: Fri, 21 Sep 2018 09:37:38 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a3a74b05c795a15e71fa5f23cc333f124cbe5458b7eaa5262045332ef2a8c5`  
		Last Modified: Fri, 21 Sep 2018 09:37:38 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed4b5ba4e5ed6eae155a8ce8c8de285b66ee3513f22fcd9de15bef33b67ce12b`  
		Last Modified: Fri, 21 Sep 2018 09:37:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d38ce068c14100a7091f37dab4c3845e42cc67499cdb3e09ff9f2ded956094`  
		Last Modified: Fri, 21 Sep 2018 09:37:59 GMT  
		Size: 187.4 MB (187405360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7485be7533b98f6ce1ba3845b227fb2b0faac3bf69864f45883481735abf91b9`  
		Last Modified: Fri, 21 Sep 2018 09:37:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
