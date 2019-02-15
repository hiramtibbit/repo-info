## `openjdk:12-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:d23bce399d36143aa8fe5df62d962776fb0072517614cce75da98017c04954db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.316; amd64

### `openjdk:12-windowsservercore-1809` - windows version 10.0.17763.316; amd64

```console
$ docker pull openjdk@sha256:6e7aa7d48f0d172ad3de73ddf5e30f85f20daac6d49f0022648dd1ff2e01f520
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2101843215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c7bfb66782d272bc92d6ab1e2322d445acfdc5196db3fa502314b17bf1f90d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Fri, 08 Feb 2019 00:24:24 GMT
RUN Install update 1809-amd64
# Wed, 13 Feb 2019 11:45:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 10:29:28 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 15 Feb 2019 10:44:00 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 15 Feb 2019 10:44:24 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 15 Feb 2019 10:44:26 GMT
ENV JAVA_VERSION=12
# Fri, 15 Feb 2019 10:44:27 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/32/GPL/openjdk-12_windows-x64_bin.zip
# Fri, 15 Feb 2019 10:44:28 GMT
ENV JAVA_SHA256=d6a550477754289e5bc0a635974b40bf5bc0515db441381414303ae954d8d6b8
# Fri, 15 Feb 2019 10:46:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 15 Feb 2019 10:46:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9e2f2b17be7207dce6730ad64c630dc10b5b3f61a74545c7c1628d605e381297`  
		Last Modified: Tue, 12 Feb 2019 20:42:21 GMT  
		Size: 370.7 MB (370687536 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cd3ade6fc2a72f217b4055dbb0d08b2a25d881d592aeba426cc097b18d9795f7`  
		Last Modified: Wed, 13 Feb 2019 12:52:13 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef813a1585330dd985f09a5e87000a28ea47ed9abf3086e4b532f6b78ef978b2`  
		Last Modified: Fri, 15 Feb 2019 11:52:51 GMT  
		Size: 4.2 MB (4206856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60df5555469e6db3135afa8e4e314505aaeb2482c5cd3dbbd630bb633c513898`  
		Last Modified: Fri, 15 Feb 2019 12:00:53 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8879739ff2804d5d1b3e1caa86caae67b704b4f3540ebf8b9c9aa3d2f10312`  
		Last Modified: Fri, 15 Feb 2019 12:00:53 GMT  
		Size: 309.5 KB (309518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169775f73e88a829274d9fef434e32ef6b0c9c27ead611d6f960be763092db16`  
		Last Modified: Fri, 15 Feb 2019 12:00:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841d65ceb9a65abd194388b4a72d6624105f2a51a095bb814ae499cdbc7a3e7c`  
		Last Modified: Fri, 15 Feb 2019 12:00:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5803d8e9aee540079e4d0f2c9df6a4a7167159bde2a4a2f9918209e6b812c8bc`  
		Last Modified: Fri, 15 Feb 2019 12:00:50 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321800b2dc29e71ef05d2c16f23269a69e94058c8bc605d4ec7183d203150627`  
		Last Modified: Fri, 15 Feb 2019 12:04:27 GMT  
		Size: 191.9 MB (191946755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09231025d9879b6639940661d463774bdfa71268cadb0da46f87c0ab01611b70`  
		Last Modified: Fri, 15 Feb 2019 12:00:51 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
