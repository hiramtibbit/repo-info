## `openjdk:8-nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:171f62a1fcd0fcee79f7f97b80b4c4573173e7b622aa49fcd8fcc301563d2088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `openjdk:8-nanoserver-sac2016` - windows version 10.0.14393.2312; amd64

```console
$ docker pull openjdk@sha256:80a2300a77c5b1f874e8cf124d29b0957618501214ebf22399164ca01f05a38c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **527.1 MB (527141818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f3a1ea439b8ec0972292da611ed4ef0a37bf2ab062f26956d1e8bd674a1399`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:03 GMT
RUN Install update 10.0.14393.2312
# Tue, 03 Jul 2018 00:41:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Jul 2018 09:22:46 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Tue, 03 Jul 2018 09:22:47 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Tue, 03 Jul 2018 09:23:13 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 03 Jul 2018 09:28:57 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 09:28:59 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Tue, 03 Jul 2018 09:28:59 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Tue, 03 Jul 2018 09:29:00 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Tue, 03 Jul 2018 09:30:03 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7a598ed389ee13dc16cb56bd512d2eecc9597d79797803ef538a02b1e12351f`  
		Last Modified: Wed, 13 Jun 2018 00:36:03 GMT  
		Size: 165.7 MB (165749131 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3b6d1a1bf3243ae76116ec6df1f57dd3b3ada11aacf7e7bfcde343010a955a70`  
		Last Modified: Tue, 03 Jul 2018 01:24:09 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08932022d0be4bb605b3688fbbde56087c4380f01933c3e1e8112b1c7f1d07b8`  
		Last Modified: Tue, 03 Jul 2018 09:33:05 GMT  
		Size: 934.7 KB (934717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98501cc9141efbdb94218200dc902943eec75c705bfc1263f7d4c6fec0f03604`  
		Last Modified: Tue, 03 Jul 2018 09:33:03 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fea3abb8f36ab73033ec639ee1e6b9856563a568452346dcb1a00b908f4c6a`  
		Last Modified: Tue, 03 Jul 2018 09:33:03 GMT  
		Size: 840.5 KB (840517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa4e2b52feeda9e76f02b923e199b4bd5a16aae60030c8e14ee8ec5b2034ec7`  
		Last Modified: Tue, 03 Jul 2018 09:35:28 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a579e7ef56dd34bc5d5cec61726bf9bb09aa05cf10f7cf243470c2da1a0c1553`  
		Last Modified: Tue, 03 Jul 2018 09:35:28 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1279ea8839836790fd95b46fcd5f224a14f673aed20a31354ddb976ec3b008a`  
		Last Modified: Tue, 03 Jul 2018 09:35:29 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1161687ed6eda06e63866979ebad05ae87680c4e95cf5c10022410d821cfa6`  
		Last Modified: Tue, 03 Jul 2018 09:35:28 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebc537e4b2a617783bc33a3901b5c4e0b82beb446703156f738fb0130e25982`  
		Last Modified: Tue, 03 Jul 2018 09:35:45 GMT  
		Size: 106.9 MB (106920782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
