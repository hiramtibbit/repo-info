## `openjdk:12-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:7c58053cd79c597d47e42945f87f6143b1afb6c743565774e0b3d1a2f075dc4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.590; amd64

### `openjdk:12-windowsservercore-1803` - windows version 10.0.17134.590; amd64

```console
$ docker pull openjdk@sha256:a8478aab0276950e4ed3e82278e776a54832d4fcd5ed21d750e41b8377418a44
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2444652023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec45d4b9190a6a59a6d1ea2f31066e906dddd6f549fff6f9c1d273fbec7adc85`
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
# Fri, 15 Feb 2019 10:42:05 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/32/GPL/openjdk-12_windows-x64_bin.zip
# Fri, 15 Feb 2019 10:42:06 GMT
ENV JAVA_SHA256=d6a550477754289e5bc0a635974b40bf5bc0515db441381414303ae954d8d6b8
# Fri, 15 Feb 2019 10:43:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 15 Feb 2019 10:43:52 GMT
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
	-	`sha256:450f6240ff1bdce876302516fd8e660ec4103fa869aa8bce00437f2189ce30e0`  
		Last Modified: Fri, 15 Feb 2019 11:59:47 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add3b492fa069990e20a722cc021b3855853e9e7df9444c2b39c9aefef2accd0`  
		Last Modified: Fri, 15 Feb 2019 11:59:47 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7402a50fccda983d5a3983734f7b09571d4a6db9b43d923e915c57567e2d338`  
		Last Modified: Fri, 15 Feb 2019 12:00:37 GMT  
		Size: 192.0 MB (191954258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea016385b8433744a6ddb67850e9ee5f8fcbcd85bd8490f5c78a13d5ee233f8`  
		Last Modified: Fri, 15 Feb 2019 11:59:47 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
