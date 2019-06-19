## `openjdk:13-ea-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:648e927904cb098f5751627e83678828ed12c1109aa2acc304bb4c4b77370b12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `openjdk:13-ea-jdk-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull openjdk@sha256:1c3654859b61d6a8380b687efe42904977c76bfe9b7e1b3cf209f8bc632c92c0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2504630354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4992c41fd784dcb122a243abc494fce704b38ea5862d39da6790e5802727d0ce`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:57:59 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 12 Jun 2019 14:58:01 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 12 Jun 2019 14:58:25 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 18 Jun 2019 22:19:36 GMT
ENV JAVA_VERSION=13-ea+25
# Tue, 18 Jun 2019 22:19:37 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/25/GPL/openjdk-13-ea+25_windows-x64_bin.zip
# Tue, 18 Jun 2019 22:19:38 GMT
ENV JAVA_SHA256=dc4e5958e2d73bebe372f7a417f7af701a5814fcf049c38fc9ea597a52046741
# Tue, 18 Jun 2019 22:21:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 18 Jun 2019 22:21:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707084aa2615c9263a52ea81134d08566c61e95d8212d96fd034fe90f190f597`  
		Last Modified: Wed, 12 Jun 2019 15:40:11 GMT  
		Size: 4.8 MB (4769858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911289ed8acfb7694dcba7163e4c42246513d4650c16f8d1468881304b90418`  
		Last Modified: Wed, 12 Jun 2019 15:40:09 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c3308d8ab1afa7bb825e487421b336bf2244ed3d933695e4385c2a988f8662`  
		Last Modified: Wed, 12 Jun 2019 15:40:11 GMT  
		Size: 295.5 KB (295534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd0b57ea16021f84e3090feebd9a3ac8834cde8a0b9558bbaee246568c3e3a6`  
		Last Modified: Tue, 18 Jun 2019 22:30:50 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4979bf7df5d1c8cfe05690ff6f7bc546ea8c903db9dfc0523cead5207c6c7b84`  
		Last Modified: Tue, 18 Jun 2019 22:30:50 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295200e8331ca49fbf453b70ff34c465a69dd7deda44a830aa084d2c64482504`  
		Last Modified: Tue, 18 Jun 2019 22:30:50 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281dd1d1d61e2414ed76b7e08bb9720ea334d609b6aa9504e81e5c65183a4410`  
		Last Modified: Tue, 18 Jun 2019 22:33:11 GMT  
		Size: 191.4 MB (191351324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2168fa1582eb11b1ab6823d351e4ed14300a46e1966537fd9e39da30de5f12`  
		Last Modified: Tue, 18 Jun 2019 22:30:50 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
