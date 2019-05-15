## `openjdk:jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:4f3a7b567d7e032e475118e2ad8797641f54424394909eb4d3da4c834afa08ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `openjdk:jdk-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull openjdk@sha256:aefdcf45ffb7a80a3b18cd3451a245db2c5bad7aade6a7c92c8a9004cd12d41f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2499288083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cab7b69e60abaefe80680b22130b2da3c45c5c55d849eb63f58078e538177161`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 14:18:55 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 15 May 2019 14:25:46 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 15 May 2019 14:26:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 15 May 2019 14:26:12 GMT
ENV JAVA_VERSION=12.0.1
# Wed, 15 May 2019 14:26:13 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12.0.1/69cfe15208a647278a19ef0990eea691/12/GPL/openjdk-12.0.1_windows-x64_bin.zip
# Wed, 15 May 2019 14:26:15 GMT
ENV JAVA_SHA256=fc7d9eee3c09ea6548b00ca25dbf34a348b3942c815405a1428e0bfef268d08d
# Wed, 15 May 2019 14:27:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 15 May 2019 14:27:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69de6f7bb1e322201a17e963326e05e5e25c6281d74fea74f5d9e9e440754eb`  
		Last Modified: Wed, 15 May 2019 14:36:21 GMT  
		Size: 4.8 MB (4776608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eadb830924e2da909e2b58c9aedca9d47a9fd50e02c7095dbeabf1004195a2`  
		Last Modified: Wed, 15 May 2019 14:38:46 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4126ac8bb7c6517ccf09d75bdc601128d528224d971150ad7fe8d0038dd5c1`  
		Last Modified: Wed, 15 May 2019 14:38:46 GMT  
		Size: 308.4 KB (308408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6bbebe0fedec3816b2a6f715f0148b37fba190173fa713bc808c06276a4e3f`  
		Last Modified: Wed, 15 May 2019 14:38:43 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ed4660848cbbe19350c80b25c1a42ed5f44e98bdbd73dabe3e4633bc666ef8`  
		Last Modified: Wed, 15 May 2019 14:38:43 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9019b1a8aca2e66aefac34d36282adb6e001fc8fc500aa0adaffc2bbca2257`  
		Last Modified: Wed, 15 May 2019 14:38:43 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62209e83afea150650d3535dbe868a476941a89c24e01e36034e1cd46aee48f8`  
		Last Modified: Wed, 15 May 2019 14:39:19 GMT  
		Size: 191.9 MB (191945718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f09e8deced0eb7fad1ead8f87bc499dbd56f3dcfd5491bc61abb2fbb098f0c`  
		Last Modified: Wed, 15 May 2019 14:38:43 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
