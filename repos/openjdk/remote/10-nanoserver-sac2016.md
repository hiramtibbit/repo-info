## `openjdk:10-nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:3872e815a2b77cfcc3e5801afdf58199ae68dca1583f7b1eee0d4b813225b8ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `openjdk:10-nanoserver-sac2016` - windows version 10.0.14393.2312; amd64

```console
$ docker pull openjdk@sha256:9a6924af7aeb3d35812225e504cf50d3159c3ae9e27f8c6945efe2d1416235c7
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.4 MB (695430288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e6fcfaa36b32aa3b82420a0ed9dcc143539b65cab87589ea0a1f2e4d34a4a12`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:03 GMT
RUN Install update 10.0.14393.2312
# Tue, 03 Jul 2018 00:41:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Jul 2018 09:22:46 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Tue, 03 Jul 2018 09:22:47 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Tue, 03 Jul 2018 09:23:13 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 03 Jul 2018 09:23:13 GMT
ENV JAVA_VERSION=10.0.1
# Tue, 03 Jul 2018 09:23:14 GMT
ENV JAVA_OJDKBUILD_VERSION=10.0.1-1
# Tue, 03 Jul 2018 09:23:15 GMT
ENV JAVA_OJDKBUILD_ZIP=java-10-openjdk-10.0.1-1.b10.ojdkbuild.windows.x86_64.zip
# Tue, 03 Jul 2018 09:23:16 GMT
ENV JAVA_OJDKBUILD_SHA256=64664f2e28db55022d90beefd097779c59f843cacf1afeed8a7456ee64c603f1
# Tue, 03 Jul 2018 09:25:10 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Tue, 03 Jul 2018 09:25:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7a598ed389ee13dc16cb56bd512d2eecc9597d79797803ef538a02b1e12351f`  
		Last Modified: Wed, 13 Jun 2018 00:36:03 GMT  
		Size: 165.7 MB (165749131 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3b6d1a1bf3243ae76116ec6df1f57dd3b3ada11aacf7e7bfcde343010a955a70`  
		Last Modified: Tue, 03 Jul 2018 01:24:09 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08932022d0be4bb605b3688fbbde56087c4380f01933c3e1e8112b1c7f1d07b8`  
		Last Modified: Tue, 03 Jul 2018 09:33:05 GMT  
		Size: 934.7 KB (934717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98501cc9141efbdb94218200dc902943eec75c705bfc1263f7d4c6fec0f03604`  
		Last Modified: Tue, 03 Jul 2018 09:33:03 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fea3abb8f36ab73033ec639ee1e6b9856563a568452346dcb1a00b908f4c6a`  
		Last Modified: Tue, 03 Jul 2018 09:33:03 GMT  
		Size: 840.5 KB (840517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3acc5c46ece16c3a15810bfd59566e9cd5c0865c065adec55c54d3d36908bf`  
		Last Modified: Tue, 03 Jul 2018 09:33:02 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f762fb24b74022f865f7d06f8c710186cd058f73a2072997f0dd1a001cc8e8ca`  
		Last Modified: Tue, 03 Jul 2018 09:33:00 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30c4ff3ea840433a23a6f5cadf14066bd02d0fa9d0ec9a1322d00e8b7d79c1a`  
		Last Modified: Tue, 03 Jul 2018 09:33:00 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25565041900ea165204815afa38e09c3f892644a86b3fcdc9d62cb3482a3348b`  
		Last Modified: Tue, 03 Jul 2018 09:33:00 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b458ed02282bd6d24ff7cedf1ea02799186537346ce72d050f6ea0b5e6017c2`  
		Last Modified: Tue, 03 Jul 2018 09:33:27 GMT  
		Size: 275.2 MB (275208283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e83f3ad3792fd304d5fcb6fd8e449b8bffc964ec25d7737068f3c53092adf7c`  
		Last Modified: Tue, 03 Jul 2018 09:32:59 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
