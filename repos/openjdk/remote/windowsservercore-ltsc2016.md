## `openjdk:windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:f7f584e2a2a7f8763f674d19003260da041fde9365969d5d3da3bbd410c57019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `openjdk:windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull openjdk@sha256:db6db7824f08ea37ef1aa37376ed049dafd657b6213eb22f8a45031a4525df15
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5913880795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bf2ce139ea5efaf10b958a144cf6cc64cc9011fceb16d0ed218ff2cce118e68`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 14:13:57 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 15 May 2019 14:21:33 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 15 May 2019 14:22:33 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 15 May 2019 14:22:35 GMT
ENV JAVA_VERSION=12.0.1
# Wed, 15 May 2019 14:22:37 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12.0.1/69cfe15208a647278a19ef0990eea691/12/GPL/openjdk-12.0.1_windows-x64_bin.zip
# Wed, 15 May 2019 14:22:38 GMT
ENV JAVA_SHA256=fc7d9eee3c09ea6548b00ca25dbf34a348b3942c815405a1428e0bfef268d08d
# Wed, 15 May 2019 14:25:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 15 May 2019 14:25:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe10f1d656599fae3d06b8e9f14fe6c60643d5834a14c80004b7ae922b18171`  
		Last Modified: Wed, 15 May 2019 14:35:28 GMT  
		Size: 5.2 MB (5232414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503f8f3e04f54bdc911e10d615f1a4c322175593df0d2eb467242890f0519bac`  
		Last Modified: Wed, 15 May 2019 14:37:23 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4946b16dfc5ddbcab8b1fa539d9e34369bbaaba04e6e84da22d63ca8599f2a9a`  
		Last Modified: Wed, 15 May 2019 14:37:25 GMT  
		Size: 5.2 MB (5209096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e89d69454b6b1c7830263d4aa595f974c715d676888ae4594850ecd758579b2`  
		Last Modified: Wed, 15 May 2019 14:37:20 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e99c21a6abc23bde765e5d68d2fbd339c38edccee49a26c48e2d35ab210938`  
		Last Modified: Wed, 15 May 2019 14:37:20 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24730621223002f028b7c538806b34602816e13d1c242c15a83beb8ff025030`  
		Last Modified: Wed, 15 May 2019 14:37:21 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de91072d2efaf908a64772fb82de3852e36a439a14b7aee47fae4e5fab293ec`  
		Last Modified: Wed, 15 May 2019 14:38:02 GMT  
		Size: 201.3 MB (201311198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22686894378bd178d75042ae2002bfbf98536d69d4c8287d87770787044ea4bc`  
		Last Modified: Wed, 15 May 2019 14:37:21 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
