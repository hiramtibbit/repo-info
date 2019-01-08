## `openjdk:13-ea-2-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:6060d263453a30aa687beb6de802057abb29a26c258144b515ebe6e1e9a7b609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `openjdk:13-ea-2-jdk-windowsservercore-1803` - windows version 10.0.17134.469; amd64

```console
$ docker pull openjdk@sha256:337fbe66d15c6d65d670e6f56579e68981b4cc531f02d71aa2e2eab932454608
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2440553041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5a1685df020a215a24efc4b20c27e77218dea5726ea9c49cf7c84b6f817369`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Tue, 25 Dec 2018 18:18:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 01 Jan 2019 10:33:29 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 04 Jan 2019 10:23:19 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 04 Jan 2019 10:24:02 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 08 Jan 2019 10:21:33 GMT
ENV JAVA_VERSION=13-ea+2
# Tue, 08 Jan 2019 10:21:35 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/2/GPL/openjdk-13-ea+2_windows-x64_bin.zip
# Tue, 08 Jan 2019 10:21:36 GMT
ENV JAVA_SHA256=e8cc0cde3fba2dff18b1cade5638e2e7cbfa8a5042bf3ce788e3122c5d0aa75d
# Tue, 08 Jan 2019 10:23:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 08 Jan 2019 10:23:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a716b198c71b782955b21f1eed303f89f487eaef823ebccdeb452b764512b3b`  
		Last Modified: Tue, 11 Dec 2018 22:06:40 GMT  
		Size: 583.9 MB (583898765 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:219a311071ee4293d1c43ed6fbbc267544771d491843ca5ff9c1a235c116c96d`  
		Last Modified: Tue, 25 Dec 2018 18:50:55 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90a1ba876e7fd9f70f172731b8d353d23e8423dbcf6d411b98819dcba167a56`  
		Last Modified: Tue, 01 Jan 2019 10:57:12 GMT  
		Size: 4.7 MB (4708107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58ecdfc5a4928edd2c500148dae83e1b96dce7d3bc1eef7807d8235007ac886`  
		Last Modified: Fri, 04 Jan 2019 10:34:53 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d401e2b0d388b28ca8c651e34fc1da154ebd6402b07e5f0b081a71c8ff19f22`  
		Last Modified: Fri, 04 Jan 2019 10:34:53 GMT  
		Size: 324.1 KB (324137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1202d4f28a004a92df3983d2e2cf90b111ed9e821a93eb25401714a7b2fefa`  
		Last Modified: Tue, 08 Jan 2019 10:42:40 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f5ee71315c0f5dce82c586de25aa47d7318e9455c3b10a9d18f7a0d978c720`  
		Last Modified: Tue, 08 Jan 2019 10:42:40 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d01774dc5c92000ee2fc61cc038705135837ded146a1ad66fd04cf082a420f`  
		Last Modified: Tue, 08 Jan 2019 10:42:40 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12feeae8fbcb46153b8a8ae4dc7916265313baa297cda2e7ecf9ca928f7d8f9a`  
		Last Modified: Tue, 08 Jan 2019 10:43:49 GMT  
		Size: 191.9 MB (191926537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222b10a1bb4fbf875f98502610992b5219b72d41c06bf3d1c68ca6137bf20934`  
		Last Modified: Tue, 08 Jan 2019 10:42:40 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
