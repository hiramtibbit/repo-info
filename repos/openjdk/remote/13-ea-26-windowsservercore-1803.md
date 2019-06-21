## `openjdk:13-ea-26-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:e0b7b29baa7220a08672d9196a348bb75285a5cd19ab57d2e2917c22600027a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `openjdk:13-ea-26-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull openjdk@sha256:aa31dc6873698f399faafc67cd4c9d926e2032ae88e3cb9f80b919d1ed4388e5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2504644845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b56e9afcd90cb52042b05eb1dfda985f24a187c2d5ae3896c5dffd7d4373354`
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
# Fri, 21 Jun 2019 20:20:34 GMT
ENV JAVA_VERSION=13-ea+26
# Fri, 21 Jun 2019 20:20:35 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/26/GPL/openjdk-13-ea+26_windows-x64_bin.zip
# Fri, 21 Jun 2019 20:20:36 GMT
ENV JAVA_SHA256=945b2957d2600d6bf220442a1c5a4c9acc9f77d4fc26a2039fdfc84affa33668
# Fri, 21 Jun 2019 20:22:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 21 Jun 2019 20:22:23 GMT
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
	-	`sha256:4a4e3d006e0a82108453e9d4cb9fefeef968a0d655dfcf2ced71fd11e0272e4d`  
		Last Modified: Fri, 21 Jun 2019 20:30:41 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66c43efa8941ca3a0144c53474a4ead69d080c5208fefb23792e43248a7ff56`  
		Last Modified: Fri, 21 Jun 2019 20:30:41 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8291ac6066e28b5bf6d3f4e8428959e9484f2ac6ddc4116e1a7ed953f2c10a`  
		Last Modified: Fri, 21 Jun 2019 20:30:41 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fc8acc1eaebd3e2e9fd47274ce6a8a731c137855911f5e24e98d2aaa30be18`  
		Last Modified: Fri, 21 Jun 2019 20:31:24 GMT  
		Size: 191.4 MB (191365783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11724b4e295efe39a71c2d98dd454c269643e6ffdb153633d3089c3badb45851`  
		Last Modified: Fri, 21 Jun 2019 20:30:41 GMT  
		Size: 1.1 KB (1142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
