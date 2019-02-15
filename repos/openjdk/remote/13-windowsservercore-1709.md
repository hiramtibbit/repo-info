## `openjdk:13-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:eae6af2293db4cc82c8a4d881523ab5b53b935be3a8b01542864089badc98fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.967; amd64

### `openjdk:13-windowsservercore-1709` - windows version 10.0.16299.967; amd64

```console
$ docker pull openjdk@sha256:7126f1c7019bf6aa5c7bed2ccf80a5f754fdef5c468aa93c9294f7b509dc2243
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3354272955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3090359d426fa4345e331c1e74ad93797aa310076506f82f4af3fdf0ade0140`
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
# Fri, 15 Feb 2019 10:22:15 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 15 Feb 2019 10:23:02 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 15 Feb 2019 10:23:03 GMT
ENV JAVA_VERSION=13-ea+8
# Fri, 15 Feb 2019 10:23:05 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/8/GPL/openjdk-13-ea+8_windows-x64_bin.zip
# Fri, 15 Feb 2019 10:23:07 GMT
ENV JAVA_SHA256=f94f40058105735fbb640f8324177cbbec92ec427dcf1572e4485b0a6bbf83cb
# Fri, 15 Feb 2019 10:25:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 15 Feb 2019 10:25:19 GMT
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
	-	`sha256:b00007ac1fa29904718962638478e092f0d2a8f7bfd13b46eabec4fb2bca0e26`  
		Last Modified: Fri, 15 Feb 2019 11:47:25 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b9c969f65c1a2e946e214fc650671fba1ecd7655980ad5acfc1fc62b4a475e`  
		Last Modified: Fri, 15 Feb 2019 11:47:30 GMT  
		Size: 4.7 MB (4738269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c7dd8370df865798b1eff39848053e701e2de92d83fe5c631a85b476f94c0c`  
		Last Modified: Fri, 15 Feb 2019 11:47:22 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59625748076893971ccad21c0a45f0642b056f74de03fc1baf3a540c26a816a6`  
		Last Modified: Fri, 15 Feb 2019 11:47:22 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7baa6bbae1c2ad61b1dfc18f5aeaa1bed9508f5705fad00545122dfd308688`  
		Last Modified: Fri, 15 Feb 2019 11:47:23 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea7ebd53f2aa54de6a642f685f9fedc53d36b788285094dc35485ae41dbdfac`  
		Last Modified: Fri, 15 Feb 2019 11:48:11 GMT  
		Size: 196.6 MB (196553343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06cd51a7d43970c467be761816e82ba82c2edcefc5ef329799ba2ca6b9d167d`  
		Last Modified: Fri, 15 Feb 2019 11:47:22 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
