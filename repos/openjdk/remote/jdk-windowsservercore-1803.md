## `openjdk:jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:1c6353c69fb020c617fde020c890aa7a08ed1a14c0e7200c7bd9d3b0a2e55f45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.590; amd64

### `openjdk:jdk-windowsservercore-1803` - windows version 10.0.17134.590; amd64

```console
$ docker pull openjdk@sha256:6eda30ed523e7ffac33c22c80d0b6b2f22d73d0d751594ce681de5c9a2142e40
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2435676775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf527e766bf3db055804b28f088c2ea372a937ce302a44995ed290054a65a5d1`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 07 Feb 2019 23:00:02 GMT
RUN Install update 10.0.17134.590
# Wed, 13 Feb 2019 11:38:10 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 10:26:11 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 15 Feb 2019 10:55:35 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 15 Feb 2019 10:56:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 15 Feb 2019 10:56:04 GMT
ENV JAVA_VERSION=11.0.2
# Fri, 15 Feb 2019 10:56:05 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_windows-x64_bin.zip
# Fri, 15 Feb 2019 10:56:06 GMT
ENV JAVA_SHA256=cf39490fe042dba1b61d6e9a395095279a69e70086c8c8d5466d9926d80976d8
# Fri, 15 Feb 2019 10:57:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 15 Feb 2019 10:57:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e94f7b83ce20c90f9f1b0323c3f9c3c791163e44e7069e47cd76cf50a3a07ef`  
		Last Modified: Mon, 11 Feb 2019 21:11:29 GMT  
		Size: 588.0 MB (587983329 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0f56eeb2940f5c3391f320574c551c5f84072a3baaee150b165407a99cfba06`  
		Last Modified: Wed, 13 Feb 2019 12:50:23 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddc9f439432d7a5a351ceeb4d0d8378c0ebeb098a9d0409deabb913b43bc5e5`  
		Last Modified: Fri, 15 Feb 2019 11:48:42 GMT  
		Size: 4.7 MB (4712074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e7d28160c685de950c95313e25bc9ebb5529df1e1174093d315cdd08421a63`  
		Last Modified: Fri, 15 Feb 2019 12:14:14 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d196e776f97d33c0bcf827c2090654d5b64c2cc3fac4d07f5a22cfb611131e`  
		Last Modified: Fri, 15 Feb 2019 12:14:14 GMT  
		Size: 306.7 KB (306721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb11cb155800a298544b5a5c5c499a5d3647769bd480c65a52ea2a302c5b2e5`  
		Last Modified: Fri, 15 Feb 2019 12:14:11 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8a5dd07e6bf948df7c916ee8fdfc18afe4752f97b34d9c9268080e277ed927`  
		Last Modified: Fri, 15 Feb 2019 12:14:12 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc9b085f55e5615f945c214e09fa5c102d1c0359c46446487200a047c811455`  
		Last Modified: Fri, 15 Feb 2019 12:14:11 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebe6ce5dd4ff5dc218261e5e0f5c0d620313706a1b449b8024565f419626f19`  
		Last Modified: Fri, 15 Feb 2019 12:14:56 GMT  
		Size: 183.0 MB (182979154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e9ea494017c335de5ee510c4333b218d2aa1ee3def235245a589045b947078`  
		Last Modified: Fri, 15 Feb 2019 12:14:11 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
