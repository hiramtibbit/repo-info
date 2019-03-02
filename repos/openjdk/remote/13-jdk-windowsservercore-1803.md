## `openjdk:13-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:1579e01c840d2f18cb73fb3d82319d37cfdbaabce2f8afbe34c0d7c98169700c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.590; amd64

### `openjdk:13-jdk-windowsservercore-1803` - windows version 10.0.17134.590; amd64

```console
$ docker pull openjdk@sha256:00d1d8944cbd3553f88a36d7cf2fd5e4817a5d2bd49d3a5c641ff30e777aeb6c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2441831046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7364da03e43005d491e2c514997b47b05284cd4e8502b5308a4a1e1355d0daa2`
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
# Fri, 15 Feb 2019 10:26:12 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 15 Feb 2019 10:26:41 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 02 Mar 2019 10:21:28 GMT
ENV JAVA_VERSION=13-ea+10
# Sat, 02 Mar 2019 10:21:29 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/10/GPL/openjdk-13-ea+10_windows-x64_bin.zip
# Sat, 02 Mar 2019 10:21:30 GMT
ENV JAVA_SHA256=499278b5a3d4dfd840cc42bfdf9d0b25cb50f71e16364b23c4cec9778447a93b
# Sat, 02 Mar 2019 10:23:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 02 Mar 2019 10:23:21 GMT
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
	-	`sha256:76bd978e08071c5915c37e2461470f1112ce743e4a7fe930fb4d82293d4c522f`  
		Last Modified: Fri, 15 Feb 2019 11:48:40 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8011ada461c966658532dc070295a625824d7a9c8a54a506e19e3fa8b458e814`  
		Last Modified: Fri, 15 Feb 2019 11:48:41 GMT  
		Size: 306.3 KB (306319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa922d36cbbe90ea0d50b655e50e4b7d384f33e8ed0df222d4145d3dc8e2d0a8`  
		Last Modified: Sat, 02 Mar 2019 10:33:55 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e54e7bc5735ccb6193afc9885abc9c939307db0195b7da35355fc6abb40396`  
		Last Modified: Sat, 02 Mar 2019 10:33:55 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c0ddb379717b99aec3e17db4da7eee19752474cfbc9d96d3fda51283e23895`  
		Last Modified: Sat, 02 Mar 2019 10:33:56 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fe3bb821d08b430732c439f2abc4dd320c5e54baa53da3e9018b982987722a`  
		Last Modified: Sat, 02 Mar 2019 10:34:19 GMT  
		Size: 189.1 MB (189133822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb41b21391f070c4394e7ed72518bfd4dff6fed5d7f88761a62dfa11a8498a6`  
		Last Modified: Sat, 02 Mar 2019 10:33:56 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
