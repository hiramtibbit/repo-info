## `openjdk:8-jdk-nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:9b6819466311bd16bd2a90a77f8f12f7ee911eef0aaa4518a4b6519b2114fe36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2248; amd64

### `openjdk:8-jdk-nanoserver-sac2016` - windows version 10.0.14393.2248; amd64

```console
$ docker pull openjdk@sha256:7d555d5a9f74c67f788b115497c7a559fe7f967684fddc25a4ed0fd88f231da5
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.2 MB (526242336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4b04f6ae0ec8e61e073048c96029db3d8d89248e9b5e6f9cc5de7b8fe061d14`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:11:43 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:55:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 10 May 2018 09:56:21 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 10 May 2018 09:56:22 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 10 May 2018 09:56:44 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 10 May 2018 10:15:57 GMT
ENV JAVA_VERSION=8u171
# Thu, 10 May 2018 10:15:58 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Thu, 10 May 2018 10:15:59 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Thu, 10 May 2018 10:16:00 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Thu, 10 May 2018 10:17:10 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58518d66816013a4ae1ec4ef454beff05e957b515f6c364b45fe76b8a527e022`  
		Last Modified: Mon, 07 May 2018 18:11:43 GMT  
		Size: 164.9 MB (164879119 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5103fe12c5d5b7e7e3ac7c4ccd5eb2bb702cda6e059223bed89c8286737936de`  
		Last Modified: Thu, 10 May 2018 10:19:37 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250d5a4932e67d69cd5c1b42383010827baf5e6b0557acd9c647a5b0d9dd9c15`  
		Last Modified: Thu, 10 May 2018 10:19:37 GMT  
		Size: 920.3 KB (920347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f39f3ab0ea78fece3ac891e614456acffdfb12922ad4d9c772037a0e4ddcc28`  
		Last Modified: Thu, 10 May 2018 10:19:36 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30797e4f650cc90c40482b74bd189fdd8d6ebea9c4f40de9fa5c7813797cb17a`  
		Last Modified: Thu, 10 May 2018 10:19:35 GMT  
		Size: 833.0 KB (833047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d9b4ef7c65cd777e73685b8b3e971c74cec78f667deb22cf5bd7068de4bdf2`  
		Last Modified: Thu, 10 May 2018 10:21:38 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da311b551160aeac133defd65b88addf0c05d6cd2af1415cfdc8ffc45d8a1059`  
		Last Modified: Thu, 10 May 2018 10:21:38 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df548e273f2b0273afef40745bf5e062bd0396684b9df18793e1b7b1f5fb7a87`  
		Last Modified: Thu, 10 May 2018 10:21:38 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb130ef606006982f9ad0332735b83ee71c4a61ca5ffb58b82953666e53d4d4`  
		Last Modified: Thu, 10 May 2018 10:21:38 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3459e9b8d5d2db9b1284e189c4a7de2f1303c7fe6ee67ccbcbd18682075fef6e`  
		Last Modified: Thu, 10 May 2018 10:21:53 GMT  
		Size: 106.9 MB (106913164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
