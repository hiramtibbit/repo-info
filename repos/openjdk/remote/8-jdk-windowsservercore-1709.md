## `openjdk:8-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:126300be09c4071f178e241522d2c0f8ad4153420352728156314382e198b57b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.611; amd64

### `openjdk:8-jdk-windowsservercore-1709` - windows version 10.0.16299.611; amd64

```console
$ docker pull openjdk@sha256:0988ed655c70af782cef3a62c29ac64fe24e84cef060a1c551bc39159189b7c0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3227719413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9c83d4f9e60010af78a75c5b11acbca70d413a1c418cfaefc486644279e458a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Aug 2018 09:39:56 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 15 Aug 2018 09:41:06 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 15 Aug 2018 09:49:44 GMT
ENV JAVA_VERSION=8u181
# Wed, 15 Aug 2018 09:49:45 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.181-1
# Wed, 15 Aug 2018 09:49:46 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.181-1.b13.ojdkbuild.windows.x86_64.zip
# Wed, 15 Aug 2018 09:49:47 GMT
ENV JAVA_OJDKBUILD_SHA256=dd7d2ea7951c06857523e95359e5e94630039a1eae5b5223e4b8c308afc95ebb
# Wed, 15 Aug 2018 09:51:24 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908447fc8e25f96ed0a90a9d476916c2c34a8da3ebb54a19197ed2be1d53ce5f`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08363414b2e660f12b58c5c11f679496aee1707e53d131d807b31376e14d80a`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 4.7 MB (4745056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659bd9d341f406f2f78d16bbd3b74d10cac48155dda6ab858419f106125b2079`  
		Last Modified: Wed, 15 Aug 2018 09:57:22 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a3a5797f65d06f3c8649cad49afef66e75a74f1ba41387001219278c73638e`  
		Last Modified: Wed, 15 Aug 2018 09:57:22 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b197f60fede119ad336812171f7fca39816b72ad8df1d94795dfd36ad282670`  
		Last Modified: Wed, 15 Aug 2018 09:57:22 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20a182ee736fd866820b041ac5ab2daa5378192c38619ad5212ef46b1912f54`  
		Last Modified: Wed, 15 Aug 2018 09:57:23 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b2e4c76b6c3abff067e0ea6ef394ec163a8366f6482493434e23a51f0f3bbf`  
		Last Modified: Wed, 15 Aug 2018 09:57:36 GMT  
		Size: 110.8 MB (110831472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
