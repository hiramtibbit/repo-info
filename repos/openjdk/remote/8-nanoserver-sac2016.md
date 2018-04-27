## `openjdk:8-nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:4476d7392f131078e4c428f8fe0f97f1ecaecfd483ffcd7a22d9c9f3706b42bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `openjdk:8-nanoserver-sac2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull openjdk@sha256:1f9909deccf916d9cd2867c5f04c1efb543b3537573f36c5e39ea8344923ae3b
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **516.6 MB (516611311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9763207590eb01d94c4180bef2e52478402a5f9d693872321fa278e3e1d0f7e2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Wed, 11 Apr 2018 09:41:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 26 Apr 2018 17:49:44 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 26 Apr 2018 17:49:45 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 26 Apr 2018 17:50:08 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 27 Apr 2018 09:22:16 GMT
ENV JAVA_VERSION=8u171
# Fri, 27 Apr 2018 09:22:17 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Fri, 27 Apr 2018 09:22:18 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Fri, 27 Apr 2018 09:22:19 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Fri, 27 Apr 2018 09:23:54 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:033b580f09fb20812108124e4c4f15144c9b45cf48e9dbba6bc16956751cd2b6`  
		Last Modified: Wed, 25 Apr 2018 22:28:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825ee403a96d36e15366e1291ea6eadf1f637706830c9a54eb4899c48a2492d5`  
		Last Modified: Thu, 26 Apr 2018 18:09:26 GMT  
		Size: 918.1 KB (918111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db018bcd253afd3c55d1bd53112573b07da5f45dc74686c92f263100bc4dd0c7`  
		Last Modified: Thu, 26 Apr 2018 18:09:24 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2761dcba475111741e2619d4b9e1a258267b2b49719b83d23e3404b0811a07`  
		Last Modified: Thu, 26 Apr 2018 18:09:23 GMT  
		Size: 830.9 KB (830904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e7e4a4946767e7f063385fa9f663e759c04b8f16581d0ddef2d164546d0545`  
		Last Modified: Fri, 27 Apr 2018 09:26:54 GMT  
		Size: 928.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76ee27ef0004ad8a6a3a4a57f4ce2146906b8f6e2ab4962fa786d268eefd3b2`  
		Last Modified: Fri, 27 Apr 2018 09:26:54 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc28a7c17968bbcad8d8937eb5ba830698f549395ad26991b7d80c0c60513b82`  
		Last Modified: Fri, 27 Apr 2018 09:26:54 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f888df9a161486d4f7e1e0b1bb60c68b0bca18c5f19b52d4ef3528f15be7ab`  
		Last Modified: Fri, 27 Apr 2018 09:26:53 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec021dd05f24b46518a297415eca4a91bb7123d63b907e7e2291d4a379ee2447`  
		Last Modified: Fri, 27 Apr 2018 09:27:09 GMT  
		Size: 106.9 MB (106913146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
