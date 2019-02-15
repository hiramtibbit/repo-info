## `openjdk:12-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:628d830569726adbc1987008aa74014044ad0b496c22fe8f84604c17741c124e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.967; amd64

### `openjdk:12-jdk-windowsservercore-1709` - windows version 10.0.16299.967; amd64

```console
$ docker pull openjdk@sha256:d27368b1f4ca78358de4d6a817f58186414b3fdc3cb7d9b7a284038399ca9008
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3354096235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93245e9cd597bf6f67872cdc49bfb32fd3028befb29567b285ac4c68fe7eabf1`
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
# Fri, 15 Feb 2019 10:39:15 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/32/GPL/openjdk-12_windows-x64_bin.zip
# Fri, 15 Feb 2019 10:39:17 GMT
ENV JAVA_SHA256=d6a550477754289e5bc0a635974b40bf5bc0515db441381414303ae954d8d6b8
# Fri, 15 Feb 2019 10:41:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 15 Feb 2019 10:41:25 GMT
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
	-	`sha256:62aad60a5fda43d38f04c011e383419cb1477dfb85021739a31f2588e407ca2a`  
		Last Modified: Fri, 15 Feb 2019 11:56:02 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f0963600fdcb925f4706bfa5d0a8c9c36d4f06fbdbe462fa952aa43f6c1140`  
		Last Modified: Fri, 15 Feb 2019 11:56:02 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a124dada8b99cb98b74f03d7a7fa694497bd54ab8d109da61f7bf676b4d4bd`  
		Last Modified: Fri, 15 Feb 2019 11:59:34 GMT  
		Size: 196.4 MB (196375875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289c929be2f1b8f00c25336aad51d941fd022aded5f216baf7ca729856d3b3f6`  
		Last Modified: Fri, 15 Feb 2019 11:56:02 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
