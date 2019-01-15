## `openjdk:13-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:17d0e415045376b226f5f823a257d22f0c3624cc28c73683818e28d385077219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `openjdk:13-jdk-windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull openjdk@sha256:508ae853f5ffc2c035d3fb3990cc9c58af9feb67cc4eab0c9a2bf15677a07efb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3353028796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e13e7350b472d5b7c49f8ba2bb1c1f11534fb978dfa01902df22c8f35fd83e85`
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
# Fri, 11 Jan 2019 10:46:07 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 11 Jan 2019 10:46:51 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 11 Jan 2019 10:46:53 GMT
ENV JAVA_VERSION=13-ea+3
# Fri, 11 Jan 2019 10:46:55 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/3/GPL/openjdk-13-ea+3_windows-x64_bin.zip
# Fri, 11 Jan 2019 10:46:56 GMT
ENV JAVA_SHA256=cf64871276ebf8beca4200f22718484eebab808942b0857147c76944fd65f846
# Fri, 11 Jan 2019 10:49:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 11 Jan 2019 10:49:16 GMT
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
	-	`sha256:97fec9d5d2640a2bcfd454512303b570bc47dc96512aae21c248dad3ec86040d`  
		Last Modified: Fri, 11 Jan 2019 11:30:38 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d8d1674f3f8a515c49654e92f34b599712592edb21fb913dabe43e0720acef`  
		Last Modified: Fri, 11 Jan 2019 11:30:41 GMT  
		Size: 4.7 MB (4740427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2156c767df4ff5fce68e8084bf6da541a7ba9b942b7a3ae1657c822444be3c49`  
		Last Modified: Fri, 11 Jan 2019 11:30:36 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f86a9f19c3b1f1b0fdbe6b53e9dc5b4c14118c3cdf54df80ddb20fa5d4d5796`  
		Last Modified: Fri, 11 Jan 2019 11:30:36 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17533d2bd2cc60cffaacd70a4f7710daaf15f6f2f24358a5844508603ffec22`  
		Last Modified: Fri, 11 Jan 2019 11:30:36 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369b186390086fbdb87331a2759f5edcd0ee5ed5065b318149489f242ac3e17a`  
		Last Modified: Fri, 11 Jan 2019 11:31:13 GMT  
		Size: 196.4 MB (196439914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9157909d667eb572607448486aa1c96bb15e2583ef4232d86ec44ddfdd5b97c5`  
		Last Modified: Fri, 11 Jan 2019 11:30:36 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
