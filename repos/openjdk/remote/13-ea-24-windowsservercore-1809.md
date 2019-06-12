## `openjdk:13-ea-24-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:1cae0537b8fd1d1ad723f6221876b046e30542f56281a80062af5fa4040db4f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `openjdk:13-ea-24-windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull openjdk@sha256:1dd16aff2b67128cb7ea899820c1f7ae678fd01d954552c7893cae40ad8a71f7
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2581763866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1622817b298d28fbc302e835be517931f1d5f6eb1a62229af0ee7ddb188ff164`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:54:28 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 12 Jun 2019 14:54:30 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 12 Jun 2019 14:54:57 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 12 Jun 2019 14:54:58 GMT
ENV JAVA_VERSION=13-ea+24
# Wed, 12 Jun 2019 14:54:59 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/24/GPL/openjdk-13-ea+24_windows-x64_bin.zip
# Wed, 12 Jun 2019 14:55:00 GMT
ENV JAVA_SHA256=47e5be966776f0807c40baef31c75076cc6776a5b445110ff44fa712548efa6e
# Wed, 12 Jun 2019 14:57:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 12 Jun 2019 14:57:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e339a1fa7b227ec57d0a73f73fee29a16b2e44d083d386cf1ad461efd9b1909`  
		Last Modified: Wed, 12 Jun 2019 15:38:39 GMT  
		Size: 4.4 MB (4358377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7052b1634c27a86cc77e771b89b602df6664cd990e978ea2561d07479e0b4b30`  
		Last Modified: Wed, 12 Jun 2019 15:38:38 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f2af46f3218dcee651631d06d9f6eb5ce8a651e8e3b2532b5fc698fc08c1fb`  
		Last Modified: Wed, 12 Jun 2019 15:38:38 GMT  
		Size: 291.3 KB (291272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efd14d9a8aae3dc00131bddf48a70d52c1554e7573992ad9a48785b597c896f`  
		Last Modified: Wed, 12 Jun 2019 15:38:35 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13253ebafeab7f541b9ce9c52ab5ad9f37e695528d19a4d737d4fa995a02f9d`  
		Last Modified: Wed, 12 Jun 2019 15:38:35 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:accff62197cec83ce3c0f82a36e824d8013f0d57b994d8dafd8422b5ac9343d4`  
		Last Modified: Wed, 12 Jun 2019 15:38:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a109a29dd5ba86a6583578cf2f252ea64023d8e6d0fb19b25fa3e8fa7c72cd4c`  
		Last Modified: Wed, 12 Jun 2019 15:39:32 GMT  
		Size: 191.0 MB (191040741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a62c8eeac76dd620d5a789eba847fc862d37931b9b4a64d333d9f7eb0e77996`  
		Last Modified: Wed, 12 Jun 2019 15:38:35 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
