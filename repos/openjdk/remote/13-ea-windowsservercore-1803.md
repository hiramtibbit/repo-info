## `openjdk:13-ea-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:151ebdaf712582853198010a0acff788d9d79b974332cc94ca850a01f477797a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `openjdk:13-ea-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull openjdk@sha256:d14582907bb1b9cd6bb97fca5d0de57d07badc9d977d33dcd6784195b848d0d3
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2497856531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0dddf613327a579d4cd353785a379b5382b437db14f318435e50fabd27ec391`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 14:18:55 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 15 May 2019 14:18:57 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 15 May 2019 14:19:22 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 15 May 2019 14:19:23 GMT
ENV JAVA_VERSION=13-ea+20
# Wed, 15 May 2019 14:19:24 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/20/GPL/openjdk-13-ea+20_windows-x64_bin.zip
# Wed, 15 May 2019 14:19:26 GMT
ENV JAVA_SHA256=532fb6c2bd0e979dad19c495aa9c4378deb5fdef4913ccb9eece8202403f0e01
# Wed, 15 May 2019 14:21:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 15 May 2019 14:21:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69de6f7bb1e322201a17e963326e05e5e25c6281d74fea74f5d9e9e440754eb`  
		Last Modified: Wed, 15 May 2019 14:36:21 GMT  
		Size: 4.8 MB (4776608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ff90fd0c85fbd5187406e2c8638c8d292c8505770695fc92041109266c88e6`  
		Last Modified: Wed, 15 May 2019 14:36:19 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d721bf12c6d20db84143fed1a68dc58442a95efa12ec723d8042193f5550ebf1`  
		Last Modified: Wed, 15 May 2019 14:36:19 GMT  
		Size: 308.2 KB (308163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ad5a329d91141a4eca79cc4f159820bde4730424d0719d5591961ce037a17e`  
		Last Modified: Wed, 15 May 2019 14:36:16 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f050e892a3fcdb3f90ee7ac42d1d34d43df80c9cca7496939e08796b594169a`  
		Last Modified: Wed, 15 May 2019 14:36:16 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f9cf0c6fbb88086cd20ad1437e8b60681c630614b83fc384b7db414772b93`  
		Last Modified: Wed, 15 May 2019 14:36:16 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875a5c9c4e77d85f2f7d098d5afa987003c16fd7bd1a50cd080e68d6a1ddf12a`  
		Last Modified: Wed, 15 May 2019 14:36:43 GMT  
		Size: 190.5 MB (190514428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ad3aa219a1ec1c407c8c8e82cd2ddfae08ae9d033516f0e1c7cababbe7e0b0`  
		Last Modified: Wed, 15 May 2019 14:36:16 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
