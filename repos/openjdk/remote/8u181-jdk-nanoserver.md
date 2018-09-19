## `openjdk:8u181-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:98d0b1be8932c14281f58496c173b110815b31ce86ae1c088cd2e3bdc2c098c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `openjdk:8u181-jdk-nanoserver` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:604885b6ffdd39cff3c9b8fbca3c93fd338c2a96cebfe5f79983b8a233db95c0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **542.0 MB (541991015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b00d80f21b60e3594ca7588092a7417e8db9654e3af8552e85083d4f52f76e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 10:13:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 10:14:40 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 13 Sep 2018 10:14:41 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 13 Sep 2018 10:15:13 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 13 Sep 2018 10:21:59 GMT
ENV JAVA_VERSION=8u181
# Thu, 13 Sep 2018 10:22:00 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.181-1
# Thu, 13 Sep 2018 10:22:01 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.181-1.b13.ojdkbuild.windows.x86_64.zip
# Thu, 13 Sep 2018 10:22:02 GMT
ENV JAVA_OJDKBUILD_SHA256=dd7d2ea7951c06857523e95359e5e94630039a1eae5b5223e4b8c308afc95ebb
# Thu, 13 Sep 2018 10:23:12 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d47ca3c2a708c20309f263de7441f23acb1e8b76c56c75bcc314d2af593e2d17`  
		Last Modified: Thu, 13 Sep 2018 10:33:11 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6eaaad60d734596ea47eea09d40af73c833cb3019c782bc0510964410c6785`  
		Last Modified: Thu, 13 Sep 2018 10:33:10 GMT  
		Size: 951.7 KB (951692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b07773ccb066e2aaaf304916f09aab90129ae4af0460774cbf309a762f0962`  
		Last Modified: Thu, 13 Sep 2018 10:33:09 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6200b08a2f7e952484c8bad696375ce2bdb9d3da13bb4f1fb697aa3eefbf08a`  
		Last Modified: Thu, 13 Sep 2018 10:33:10 GMT  
		Size: 863.6 KB (863623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e0c951547a102a8cd0434eee65073aa4a1adcab191a9a8559a7f2cfc205084`  
		Last Modified: Thu, 13 Sep 2018 10:35:25 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70461caae8dc6dfc29b1f3794a2c77dc3f18adb0368d0386f313c5be6f590ca`  
		Last Modified: Thu, 13 Sep 2018 10:35:24 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ebedc749a7f4c7984fe72b000f704193d844ef776abbd4f19a509421e41f05`  
		Last Modified: Thu, 13 Sep 2018 10:35:24 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caa3589a932c0c1b2ac982a1fa22e81991d4043407daf6fbd59e326e6902340`  
		Last Modified: Thu, 13 Sep 2018 10:35:24 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c4a1309fad2cc2eac165a762b398a0b7f0d4dedea3ca4f2f9e4d5c058920e4`  
		Last Modified: Thu, 13 Sep 2018 10:35:39 GMT  
		Size: 106.9 MB (106945023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
