## `openjdk:13-ea-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:6ee584b8e7fa3b3701a2c646aa8cd637e59e93782b02d3b1e0631214fadc69b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `openjdk:13-ea-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull openjdk@sha256:07717c4e948de277ca7db075b347a142fe3df3aaa60990d62e617236bd5def71
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5906096348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386b10cb536f1b4615779bbaa2313aacb76197511c9d2324a04c63651fe0a569`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 12:40:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 15:01:09 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 22 May 2019 15:01:11 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 22 May 2019 15:02:15 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 01 Jun 2019 01:19:46 GMT
ENV JAVA_VERSION=13-ea+23
# Sat, 01 Jun 2019 01:19:47 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/23/GPL/openjdk-13-ea+23_windows-x64_bin.zip
# Sat, 01 Jun 2019 01:19:48 GMT
ENV JAVA_SHA256=35ca5f45948fbd5e98126a01605d96f070a338592642a0a4d5cec974a0177531
# Sat, 01 Jun 2019 01:22:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 01 Jun 2019 01:22:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:238abb146382d28000f03a82c40be99cbfac99a1480f9d23f8a6420cafc6b083`  
		Last Modified: Wed, 22 May 2019 13:21:05 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da2d9acb15b1491a16d4e5f0a8fd1529c62b2f21b6f42cff507fd300be47976`  
		Last Modified: Wed, 22 May 2019 16:00:49 GMT  
		Size: 5.2 MB (5216709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea951528d33f80f4e33a9f7a19f1dac91e073328ed296d057bc566ff3c55cb`  
		Last Modified: Wed, 22 May 2019 16:00:46 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa274753582b784d44730714118e69b557fdd4ac6425dd225397a4a854ba419e`  
		Last Modified: Wed, 22 May 2019 16:00:52 GMT  
		Size: 5.2 MB (5192749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324be48015ff2f01258929b357c14417d29b49ed29b6e79ae184490a8bd35871`  
		Last Modified: Sat, 01 Jun 2019 01:29:13 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b5875b3a9b092b12dfca91f2b8c8a0dffdd803e70cb39625a5f6e53de5d850`  
		Last Modified: Sat, 01 Jun 2019 01:29:13 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46860781ecdcf2c96aa6a8ffd8e6b8cb1a8b349a0abd8887edbc8ead6a33d71`  
		Last Modified: Sat, 01 Jun 2019 01:29:13 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64156262315f2761960c6712bd65b5069f113e378673edd1da381f472e68406`  
		Last Modified: Sat, 01 Jun 2019 01:30:14 GMT  
		Size: 195.9 MB (195891685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7250926911221bea81eae5a2c34f656c010e9d8e6a0e0dafc74509e9df7e331`  
		Last Modified: Sat, 01 Jun 2019 01:29:13 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
