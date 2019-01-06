## `openjdk:13-ea-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:66c5684ffc12564e358a904fc0b5569dd0e9e451e15af7fe31d32d97c33a7e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `openjdk:13-ea-windowsservercore-1803` - windows version 10.0.17134.469; amd64

```console
$ docker pull openjdk@sha256:7258421b15527f26e95aacc0a8b325611827016f72f74575ecaab02662d3240d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2440533354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3c9b883cae9564eafa2c1fdd890d732e7728f9653693a64fe79f7ab4bceb5e5`
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
# Fri, 04 Jan 2019 10:24:04 GMT
ENV JAVA_VERSION=13-ea+1
# Fri, 04 Jan 2019 10:24:05 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/1/GPL/openjdk-13-ea+1_windows-x64_bin.zip
# Fri, 04 Jan 2019 10:24:06 GMT
ENV JAVA_SHA256=54f0908fb096f0587a1e66d447ed2ec181a00cbd8d92ebd3a30bd978e70a4146
# Fri, 04 Jan 2019 10:26:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 04 Jan 2019 10:26:15 GMT
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
	-	`sha256:c0189d56a8e888f6af12ba896eb2d7b3a2f5bacd2a49879ca519b400c18990da`  
		Last Modified: Fri, 04 Jan 2019 10:34:51 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98c6cbe42b242728dd2586a0f0b3d09244466fe2ec44c036e1e700e0c3c3cdc`  
		Last Modified: Fri, 04 Jan 2019 10:34:51 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03416ca57517953da6ae8a548825347915fecb5e3763dfdfce82de7b75c0d0ef`  
		Last Modified: Fri, 04 Jan 2019 10:34:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e1b07b33038eccd3ebb254a35af2824c989dd9a864e194a4c6f8e13f9b10a0`  
		Last Modified: Fri, 04 Jan 2019 10:35:18 GMT  
		Size: 191.9 MB (191906838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e218cc6f1b6d5902d0d203a7de9914a5cb4299d3523527b1679d5249386cd7db`  
		Last Modified: Fri, 04 Jan 2019 10:34:51 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
