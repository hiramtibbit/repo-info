## `openjdk:13-ea-21-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:02d6ba063edbb791a5b3602e2b400493626c5c3774d27e0eff44cb39c61eb8d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `openjdk:13-ea-21-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull openjdk@sha256:9fb69e6331fe8e9fa5b22bf84f39fff802ca6fbcbe47c56bd6e6e66c1610c117
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5912859459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d0172c5fd0ff0287bfd1e73c76b976fb879592b5eae74e0454c8bc71006973a`
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
# Wed, 15 May 2019 14:13:59 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 15 May 2019 14:15:06 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 17 May 2019 23:42:58 GMT
ENV JAVA_VERSION=13-ea+21
# Fri, 17 May 2019 23:43:00 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/21/GPL/openjdk-13-ea+21_windows-x64_bin.zip
# Fri, 17 May 2019 23:43:01 GMT
ENV JAVA_SHA256=7ce289b3349a7605e3c673f1926d80cf3eb2256a6e5f707eb7111b7f817948f0
# Fri, 17 May 2019 23:46:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 17 May 2019 23:46:11 GMT
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
	-	`sha256:6a30ccc8f4fe4d3960105d6df107a57c4beeca971fce2ed3a8665d3f187536af`  
		Last Modified: Wed, 15 May 2019 14:35:23 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03461a18c66f7f69e6a235a2a70ee319c9d4b764b0c310bde15a2bd7273c3975`  
		Last Modified: Wed, 15 May 2019 14:35:25 GMT  
		Size: 5.2 MB (5209147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529e18eb586a2a9cfdf56f57940c0086321388c39074597f63aa6d4bd968535c`  
		Last Modified: Fri, 17 May 2019 23:58:28 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eceb7bfbf5adc00ce406a2e89f624f71591185bef9ebd59cc717d5f97a3dc848`  
		Last Modified: Fri, 17 May 2019 23:58:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8303e87773a25847a426eb04e3a35f7c8afba47c4d50a5cf05f613dae364ed7`  
		Last Modified: Fri, 17 May 2019 23:58:28 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025a44a87ef564f59a114ecd41d42a756baaa1ef06d959ddf6145032c7bae6d3`  
		Last Modified: Fri, 17 May 2019 23:58:56 GMT  
		Size: 200.3 MB (200289770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cc7d6ef9fbb203c8a00f264a05a684de3b5776841c2472f3f8cacb5e684c52`  
		Last Modified: Fri, 17 May 2019 23:58:28 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
