## `openjdk:8-nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:b1b625ac933843a1cb741e70a44bfd9ccb386c98c9368753ff5048f8c514b7c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `openjdk:8-nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull openjdk@sha256:5c66d4cde308f26146c4205c0d3138d715cca33b4d312269a15a777a1c29315f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **529.2 MB (529192720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e6734f5f6936e430557db8e65ae92fd0e8091ea2c5d5b871f40534d62d130cf`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:43:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Aug 2018 09:44:34 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 15 Aug 2018 09:44:35 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 15 Aug 2018 09:45:04 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 15 Aug 2018 09:51:40 GMT
ENV JAVA_VERSION=8u181
# Wed, 15 Aug 2018 09:51:41 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.181-1
# Wed, 15 Aug 2018 09:51:42 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.181-1.b13.ojdkbuild.windows.x86_64.zip
# Wed, 15 Aug 2018 09:51:43 GMT
ENV JAVA_OJDKBUILD_SHA256=dd7d2ea7951c06857523e95359e5e94630039a1eae5b5223e4b8c308afc95ebb
# Wed, 15 Aug 2018 09:52:51 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82e4f9af58cb76c5ad8ef2e3e09f4256ab17e1c38cc0ed0d04cb7b509b76fe56`  
		Last Modified: Wed, 15 Aug 2018 09:55:53 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dea611af6cbed847182a2e78f094fc31e1d884599dd19562db6332e5862ddf`  
		Last Modified: Wed, 15 Aug 2018 09:55:51 GMT  
		Size: 935.3 KB (935309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90a99d2131987835ea1e63e665a75f4b7d1b432152edb1d2ed07b1fc4267bfd`  
		Last Modified: Wed, 15 Aug 2018 09:55:50 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4a458463d6d590d08c17052586a8c56aacae7216e9c5db8bfca3eb4b69051a`  
		Last Modified: Wed, 15 Aug 2018 09:55:52 GMT  
		Size: 847.9 KB (847865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9616052f178e7e01cbbf131ebe22508f18a8453352307cf74f22524d01017f`  
		Last Modified: Wed, 15 Aug 2018 09:57:53 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4099d5264472657abb6beaddbbc3eaacefee9ec0fefa773ca4da75ad045ba116`  
		Last Modified: Wed, 15 Aug 2018 09:57:53 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db8195ec18d849c16c2a2a6fc1792467584aedc9f4cd09ad671982a9f518098`  
		Last Modified: Wed, 15 Aug 2018 09:57:53 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2a683aa357ae9dc7abec8d12a2cf71fdd5f6f409dfc1345a437793d35d0539`  
		Last Modified: Wed, 15 Aug 2018 09:57:53 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c7c4f22ed33f26d0a0adeb3cf218af5ef3c2059b563483801f1d696538c42c`  
		Last Modified: Wed, 15 Aug 2018 09:58:07 GMT  
		Size: 106.9 MB (106928852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
