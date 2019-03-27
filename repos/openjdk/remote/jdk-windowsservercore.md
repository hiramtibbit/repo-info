## `openjdk:jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:72ac72c64cd3613cf3e473f60b0caa6c4d7b2366174ea28126bab4225124f4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64
	-	windows version 10.0.16299.967; amd64
	-	windows version 10.0.17134.590; amd64
	-	windows version 10.0.17763.316; amd64

### `openjdk:jdk-windowsservercore` - windows version 10.0.14393.2791; amd64

```console
$ docker pull openjdk@sha256:c2a1486cd249dc1a2a552934a96d3e268b6911448b99ef9d5949fac1b4ccdfca
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5847238847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4ee73c810df9ff86a67cde960b5e08409a09e35f3377872a7ce392e773e3b33`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Wed, 13 Feb 2019 10:35:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 10:17:29 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 15 Feb 2019 10:34:07 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 15 Feb 2019 10:35:13 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 15 Feb 2019 10:35:15 GMT
ENV JAVA_VERSION=12
# Tue, 26 Feb 2019 10:27:36 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/33/GPL/openjdk-12_windows-x64_bin.zip
# Tue, 26 Feb 2019 10:27:38 GMT
ENV JAVA_SHA256=35a8d018f420fb05fe7c2aa9933122896ca50bd23dbd373e90d8e2f3897c4e92
# Tue, 26 Feb 2019 10:30:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 26 Feb 2019 10:30:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b479a92ce115faf181c1196d762b00f05ec9aa83dc2fec2b7ca094c8d6e1bfff`  
		Last Modified: Mon, 11 Feb 2019 20:08:57 GMT  
		Size: 1.6 GB (1570061102 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d6be0e7f96b74f68be8ae9cde286b6108d09d939d8cb130d00bfb8519a6b7fbc`  
		Last Modified: Wed, 13 Feb 2019 11:04:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bc4c4dc3afb15f282193b4c750313cd5aadd44b9d7067cc9f2780c0efbf2eb`  
		Last Modified: Fri, 15 Feb 2019 11:43:15 GMT  
		Size: 5.2 MB (5211770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c917bb6ba7267cf5a6675b09316df1de9fab4faa971ac9c36e49241d726c5c`  
		Last Modified: Fri, 15 Feb 2019 11:55:02 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd1a697bc5ebf4a43c8a760c7e54e027a6e853934d4f7db3822f409e477d8a59`  
		Last Modified: Fri, 15 Feb 2019 11:55:03 GMT  
		Size: 5.2 MB (5182059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4366aed89dbff4a596a80c9b4558782e95400e97d3471655714c5019fcc1dcc`  
		Last Modified: Fri, 15 Feb 2019 11:54:59 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837081376b2dd14cd22581636c759d74083a10936b539bb49e10dfec656fa4b7`  
		Last Modified: Tue, 26 Feb 2019 10:58:47 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aaf00929f5b12804fb806eeabef1362abe49c0131cad6e37058577f93be2369`  
		Last Modified: Tue, 26 Feb 2019 10:58:47 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe09bf65f0502bd62c4d741b74cb0b69e9b7957fcebefab6b9acba4abfa480d3`  
		Last Modified: Tue, 26 Feb 2019 10:59:44 GMT  
		Size: 196.8 MB (196790766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523367198fd0946ed5c5a0007501e0dd3b34814ac20d66a5b9bea394dfc9a83e`  
		Last Modified: Tue, 26 Feb 2019 10:58:47 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-windowsservercore` - windows version 10.0.16299.967; amd64

```console
$ docker pull openjdk@sha256:0ff44001f91ff69c8da75b4a5c3b5780ac5c5a43c645ab7c8f86ff7c0e329dfc
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3354085984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d49c330b6ef74023f8e642e8a8848e5ce2fe4510f6d61a6d2b51a7b5d826b2`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Fri, 08 Feb 2019 07:16:29 GMT
RUN Install update 10.0.16299.967
# Wed, 13 Feb 2019 10:40:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 10:22:13 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 15 Feb 2019 10:38:21 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 15 Feb 2019 10:39:12 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 15 Feb 2019 10:39:14 GMT
ENV JAVA_VERSION=12
# Tue, 26 Feb 2019 10:30:18 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/33/GPL/openjdk-12_windows-x64_bin.zip
# Tue, 26 Feb 2019 10:30:19 GMT
ENV JAVA_SHA256=35a8d018f420fb05fe7c2aa9933122896ca50bd23dbd373e90d8e2f3897c4e92
# Tue, 26 Feb 2019 10:32:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 26 Feb 2019 10:32:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:effca3ebc3a86f19a139eb7047c6e97d2fe4c941737e8d9698820d0491ccf530`  
		Last Modified: Mon, 11 Feb 2019 21:05:02 GMT  
		Size: 873.9 MB (873894336 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:731ba2742afc105cbc6ca69724a36a1b3dd4199873953d6581f5339a67939b09`  
		Last Modified: Wed, 13 Feb 2019 11:05:29 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b01bf46e9b6222b308e3d8f95fa622a74a155108b2c471a53186d884871bd8`  
		Last Modified: Fri, 15 Feb 2019 11:47:28 GMT  
		Size: 4.8 MB (4779227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2084e88fccc165c10ebe06526c2379ae1fe98579815392258ab8095d6411bbca`  
		Last Modified: Fri, 15 Feb 2019 11:56:05 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57b2f68a2083ca620544c80b167b18932239cf23ab4414ec1b7f506bf0f0198`  
		Last Modified: Fri, 15 Feb 2019 11:56:06 GMT  
		Size: 4.7 MB (4738991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9b629ba66a4ded043f087848b0c97b3033e8947ed15cbfee7d4f5e1c3c8178`  
		Last Modified: Fri, 15 Feb 2019 11:56:02 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f78514417e473044e080c44a3edf922bd412503f7157b0f2a3b78a6664c02c2`  
		Last Modified: Tue, 26 Feb 2019 10:59:59 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4467f20145fc98630c4bc77fbb889cb2cef6949136ab683fc552cc1925bc961b`  
		Last Modified: Tue, 26 Feb 2019 10:59:59 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d3d81136dbb0e851b55f1bb4d27e04c33db3630032148afd3e6f6094102fec`  
		Last Modified: Tue, 26 Feb 2019 11:00:46 GMT  
		Size: 196.4 MB (196365633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf0cfa4263c325c73b23594235269745ae6fa55131b7208d6a3f06e818952a2`  
		Last Modified: Tue, 26 Feb 2019 10:59:59 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-windowsservercore` - windows version 10.0.17134.590; amd64

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

### `openjdk:jdk-windowsservercore` - windows version 10.0.17763.316; amd64

```console
$ docker pull openjdk@sha256:cadc9d64fdc30860bc8bc5312f9a9ec3f008fc3f31bd4bc9df3f3c04f586f02f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2101838702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfea015b6309194fc11e4787da6c0393a1fb434b92e98747338d7c130811f814`
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
# Tue, 26 Feb 2019 10:34:57 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/33/GPL/openjdk-12_windows-x64_bin.zip
# Tue, 26 Feb 2019 10:34:58 GMT
ENV JAVA_SHA256=35a8d018f420fb05fe7c2aa9933122896ca50bd23dbd373e90d8e2f3897c4e92
# Tue, 26 Feb 2019 10:36:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 26 Feb 2019 10:36:43 GMT
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
	-	`sha256:4a6a7ebbf0ac029a5213edf5d5c90baab51cd54ba471510d83eef8616b1df2c6`  
		Last Modified: Tue, 26 Feb 2019 11:01:51 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b92b1e6ffddbb9c16af96b7e8f69cc0a347dc287b9a77bc3cad97ea3200d06`  
		Last Modified: Tue, 26 Feb 2019 11:01:50 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1d303ce3b0d5e9d7fbb9a331fdbed6235e1821429894770e5300f8fbae4538`  
		Last Modified: Tue, 26 Feb 2019 11:02:15 GMT  
		Size: 191.9 MB (191942237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887d09edb606e7e7a0541719ed4f70a61f14494f2b4eb02479db8a3b023066cc`  
		Last Modified: Tue, 26 Feb 2019 11:01:51 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
