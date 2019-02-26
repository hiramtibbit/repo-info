## `openjdk:12-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:5c3557fb1306d542531cb581255dec458a622a0994539f2cf1b25617deb55839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.590; amd64

### `openjdk:12-windowsservercore-1803` - windows version 10.0.17134.590; amd64

```console
$ docker pull openjdk@sha256:3efaca92f6f71523f124840fa96b2aaadfef518eed9080cc300c4b23532ec04f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2444631606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7157ee2f9c4bf4e5ab35e857f012eb40dc1898ead88b9f30989eff18f8b6abd3`
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
# Fri, 15 Feb 2019 10:41:33 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 15 Feb 2019 10:42:02 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 15 Feb 2019 10:42:03 GMT
ENV JAVA_VERSION=12
# Tue, 26 Feb 2019 10:32:46 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/33/GPL/openjdk-12_windows-x64_bin.zip
# Tue, 26 Feb 2019 10:32:47 GMT
ENV JAVA_SHA256=35a8d018f420fb05fe7c2aa9933122896ca50bd23dbd373e90d8e2f3897c4e92
# Tue, 26 Feb 2019 10:34:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 26 Feb 2019 10:34:38 GMT
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
	-	`sha256:b06f5b34aef565b5cceb473fab86b071bd75fcdeb2d1c0ef4cb74d9216ae9aee`  
		Last Modified: Fri, 15 Feb 2019 11:59:49 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcac7ce73d0be65ed42d8350083261f80d217b06c43c6a94fddf3b2ded82cc0`  
		Last Modified: Fri, 15 Feb 2019 11:59:50 GMT  
		Size: 306.9 KB (306884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f98fbc7f81728bed64b1e038fcaceaaf1e5cf58d53b9b2adc9f1f0409b886`  
		Last Modified: Fri, 15 Feb 2019 11:59:47 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b35b9a64f511ed93b14473d5182fcb69a0a3b9ad40d0ea6cca486625af2f27`  
		Last Modified: Tue, 26 Feb 2019 11:01:00 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7fc139afa03a4e40bbc6b4ca41931eefdc0f9d55f07414217aa24b5962c8d4`  
		Last Modified: Tue, 26 Feb 2019 11:01:00 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bf7f1a788934479ecb7dcf593590b6652d8fab5705b3694304da64cbd4fbde`  
		Last Modified: Tue, 26 Feb 2019 11:01:33 GMT  
		Size: 191.9 MB (191933822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adc23b6e4d80bc3c1c27b9d78ae437860f7a94d6a7bcea816bdde4bf52e862d`  
		Last Modified: Tue, 26 Feb 2019 11:01:00 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
