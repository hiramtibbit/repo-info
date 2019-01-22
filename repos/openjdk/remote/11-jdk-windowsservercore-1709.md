## `openjdk:11-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:65c7ad5b91c91971db61bc09386c4ec805bc30130d3756c2a8f78dc025e0afec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `openjdk:11-jdk-windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull openjdk@sha256:ab2c35d8daf979de18df8b2d3b668fa9669ecb5ae77667a7c1d2ee0e0c94ae55
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3343990057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710486d8d356095ba74c0f7fc0a5c48a7a580c50528ce48d1b700301d084104b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 10:46:05 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 11 Jan 2019 11:12:35 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 11 Jan 2019 11:13:19 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 18 Jan 2019 10:25:07 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 22 Jan 2019 11:13:03 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_windows-x64_bin.zip
# Tue, 22 Jan 2019 11:13:04 GMT
ENV JAVA_SHA256=cf39490fe042dba1b61d6e9a395095279a69e70086c8c8d5466d9926d80976d8
# Tue, 22 Jan 2019 11:15:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 22 Jan 2019 11:15:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70977a4f324a334bb094145e798f76dfe10b6cbbab23a590c3e085e6250fec6`  
		Last Modified: Fri, 11 Jan 2019 11:30:45 GMT  
		Size: 4.8 MB (4785398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd0f9bcef41531c08fe5328f291bb9c9b2b645472a174439a3298deb067c69c`  
		Last Modified: Fri, 11 Jan 2019 11:43:12 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b364e2acc05a0115f425467a19c5c3e3809c092a35372ab7eb0910111247946`  
		Last Modified: Fri, 11 Jan 2019 11:43:14 GMT  
		Size: 4.7 MB (4740163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b59f7fc59e1d07c23f626b66dc5bd90541691d0704caf78e9a11c8d51e0dd93`  
		Last Modified: Fri, 18 Jan 2019 10:46:30 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28b69148bd99325b85a9086722403163c930354f1d8ba979e6a4e74d6e36a2a`  
		Last Modified: Tue, 22 Jan 2019 11:42:36 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9bbda5186fe1513ce00595b07743945dc1e9ea41394b39f3d92e5af705a831`  
		Last Modified: Tue, 22 Jan 2019 11:42:36 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de37932f24722c33136f5e23c1147d719b34715df9b1077e203f9986aeccfcf`  
		Last Modified: Tue, 22 Jan 2019 11:43:30 GMT  
		Size: 187.4 MB (187401411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdee44ed5eea0e58e6ca40d39dfbc6fb39ac934f22439631a03263fdbc9a7f34`  
		Last Modified: Tue, 22 Jan 2019 11:42:36 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
