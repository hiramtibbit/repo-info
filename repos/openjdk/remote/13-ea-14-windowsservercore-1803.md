## `openjdk:13-ea-14-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:eb848b9c4af0cce514164de141396a6287c76dbfcaaefb06cd791afb691bfa80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.648; amd64

### `openjdk:13-ea-14-windowsservercore-1803` - windows version 10.0.17134.648; amd64

```console
$ docker pull openjdk@sha256:7158e3fd38009b020920a29311d9fb8dd83c82070b31dbbf967033da6bfbe05e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2447434774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f02b873494519066a9f46a96d75c7feb11044977ba7941904123c6d296b0184`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 08 Mar 2019 23:20:01 GMT
RUN Install update 10.0.17134.648
# Sat, 16 Mar 2019 09:44:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:11:54 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 28 Mar 2019 10:11:56 GMT
ENV JAVA_HOME=C:\openjdk-13
# Thu, 28 Mar 2019 10:12:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 30 Mar 2019 10:18:16 GMT
ENV JAVA_VERSION=13-ea+14
# Sat, 30 Mar 2019 10:18:18 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/14/GPL/openjdk-13-ea+14_windows-x64_bin.zip
# Sat, 30 Mar 2019 10:18:19 GMT
ENV JAVA_SHA256=709c0cd64f9c49e40817e328fb56e8153d56f206db52fcd00e438880f09da8a5
# Sat, 30 Mar 2019 10:20:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 30 Mar 2019 10:20:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be86bca8de59067e592a8becc2e83ed2465a6d9bce324043e434aa4a15493b00`  
		Last Modified: Mon, 11 Mar 2019 21:17:02 GMT  
		Size: 593.3 MB (593288046 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:97db8a70a029fc0e25892873d5695bd2b9a1c93e4cd7dcd91fcddf338989a592`  
		Last Modified: Sat, 16 Mar 2019 10:43:05 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebd1bf50e1506d9e28058901cc12b40f8cdec81ba85c3f1d2c0acd1edca3ca1`  
		Last Modified: Thu, 28 Mar 2019 11:05:24 GMT  
		Size: 4.7 MB (4727237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c1d4b4704542cf525ed703379f9d792ab87b14220fb9e4f3596483fa3e99a7`  
		Last Modified: Thu, 28 Mar 2019 11:05:22 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e698cc887047f632e412b17a83acaae1969ba08f7c0c6411d6604a7295d1cc9`  
		Last Modified: Thu, 28 Mar 2019 11:05:22 GMT  
		Size: 296.7 KB (296684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f63089b83c5bca3d15eae0287de3a55769938efa75620b62b95b30015a7222`  
		Last Modified: Sat, 30 Mar 2019 10:31:07 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c91839f9e2061965ff843e1a26c0b1ed9fdf594b8d0842c9fd3c05111cc3ad`  
		Last Modified: Sat, 30 Mar 2019 10:31:07 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec84a4492092dfc6854394f1a2031c3fdf6691e327cf1f1f51979c0b7e8ab6a`  
		Last Modified: Sat, 30 Mar 2019 10:31:07 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4624ad7cb4f3f62ad0b844f65d9a72cc9deeb1654dba9d5dca149f711ee4ada7`  
		Last Modified: Sat, 30 Mar 2019 10:32:28 GMT  
		Size: 189.4 MB (189427325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f99f0cbc5eba646b1a2f7ec5f37ed223c744fe4654602d9179f3876906471ec`  
		Last Modified: Sat, 30 Mar 2019 10:31:07 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
