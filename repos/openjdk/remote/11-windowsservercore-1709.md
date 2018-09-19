## `openjdk:11-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:8c561db8c3335632f1d0d1342312a12cc6fc6579c29dd6955b9690faeafe40c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.665; amd64

### `openjdk:11-windowsservercore-1709` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:b21fed09a9f39ce8cf1103485fe0c3a006382f5589df251d203148074705857b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3324745602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b9d967d18b5cfb03984f497e8e2941882436115a64728f58ee5edbd4f450b3`
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
# Thu, 13 Sep 2018 09:59:42 GMT
ENV JAVA_VERSION=11+28
# Thu, 13 Sep 2018 09:59:43 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk11/28/GPL/openjdk-11+28_windows-x64_bin.zip
# Thu, 13 Sep 2018 09:59:44 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Thu, 13 Sep 2018 10:01:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 13 Sep 2018 10:01:43 GMT
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
	-	`sha256:d4aa50ac65a1bd22a76b07970e7cc581769a0f0ea44e1a817f468036124d943f`  
		Last Modified: Thu, 13 Sep 2018 10:28:26 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2afc9cce892f4e88e61f8210a74eb92d418e98b4ec443e5817860d1c917bb3`  
		Last Modified: Thu, 13 Sep 2018 10:28:26 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ed83adbd2a541d1181c131425edfd1957d9c656aa8cf9a4cb951175bf69b9`  
		Last Modified: Thu, 13 Sep 2018 10:28:26 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67693853c5aa89269f6674247f33ae58f2643baf1737edcd0547b31873f8ac96`  
		Last Modified: Thu, 13 Sep 2018 10:29:08 GMT  
		Size: 187.4 MB (187377762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87c636b1df88593ac5c008e03db39b0a75da0cc325d775107498e252d8ad989`  
		Last Modified: Thu, 13 Sep 2018 10:28:26 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
