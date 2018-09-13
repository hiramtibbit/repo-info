## `openjdk:10-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:d1b938ae13cfa046c5f3b3dc7a7df0570bf80abbdc836c2fcc0b901cb38fae3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.665; amd64

### `openjdk:10-jdk-windowsservercore-1709` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:4295da7ad3fce16562b6b4edfe02917d28d9a168969c56b2d405e7fdc94fabab
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3416390744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73dfe9deff8f70e9cf85f498b4d943aa34af6fcd323558e2212a6bdda16d557`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Thu, 13 Sep 2018 09:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 10:10:10 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 13 Sep 2018 10:11:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 13 Sep 2018 10:11:04 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 13 Sep 2018 10:11:05 GMT
ENV JAVA_OJDKBUILD_VERSION=10.0.2-1
# Thu, 13 Sep 2018 10:11:06 GMT
ENV JAVA_OJDKBUILD_ZIP=java-10-openjdk-10.0.2-1.b13.ojdkbuild.windows.x86_64.zip
# Thu, 13 Sep 2018 10:11:07 GMT
ENV JAVA_OJDKBUILD_SHA256=39801db76f04b9f1491b0d0a64258535f14e319a3cd08d3e161b18a6af7a842d
# Thu, 13 Sep 2018 10:13:40 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Thu, 13 Sep 2018 10:13:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
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
	-	`sha256:716b7d7e1fa2cbf55834f29dd2eadc85f6a08a51eaa2137bcd6806f2645fadfb`  
		Last Modified: Thu, 13 Sep 2018 10:32:02 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb5a831547af71b3536ccf5d89bd0736b6ef5c966d772960b83dbb6c4d78e56`  
		Last Modified: Thu, 13 Sep 2018 10:32:03 GMT  
		Size: 4.7 MB (4723075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398acddaac245abf0dd7f3dd5ad1aa525f3cfc60da0821a45b858653498efccf`  
		Last Modified: Thu, 13 Sep 2018 10:32:01 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d977d7f7a327d69d4d935e370494afc0b189f8d94f100f43cc4ecf0c8ad8c3`  
		Last Modified: Thu, 13 Sep 2018 10:31:59 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e6a7b9d47b6a4e3fc3b2e49bc529e5ac739d7b3da5031ba7dce74233985b34`  
		Last Modified: Thu, 13 Sep 2018 10:31:59 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcefe4bcabb76811759c665d6b6d7bbb0f549afe8ea0c14f811d7f0f83456876`  
		Last Modified: Thu, 13 Sep 2018 10:31:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f9d656ffb289035ae0473e7793936997334b6c07e1fbb3cd2af5b067b85786`  
		Last Modified: Thu, 13 Sep 2018 10:32:30 GMT  
		Size: 279.0 MB (279023226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f011aef4dcc9607c11babb96972049c57fa2e8073fd22b7fb9aa8e0303d999cf`  
		Last Modified: Thu, 13 Sep 2018 10:31:59 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
