## `openjdk:13-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:ac317803894f6beb3e359423e51382b7a97715caee5d713ea41258c780f966cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `openjdk:13-windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull openjdk@sha256:813d3da4d6cad8dd63a916f7c3208c9e10517359bfc650c424db145bce68e178
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2499633612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ce7c8633f04f167f903a303b5b0ec60f90de5e6420c8b1b17557b109ff13b11`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 12:50:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 15:06:28 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 22 May 2019 15:06:30 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 22 May 2019 15:06:55 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 07 Jun 2019 21:31:07 GMT
ENV JAVA_VERSION=13-ea+24
# Fri, 07 Jun 2019 21:31:08 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/24/GPL/openjdk-13-ea+24_windows-x64_bin.zip
# Fri, 07 Jun 2019 21:31:10 GMT
ENV JAVA_SHA256=47e5be966776f0807c40baef31c75076cc6776a5b445110ff44fa712548efa6e
# Fri, 07 Jun 2019 21:32:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 07 Jun 2019 21:32:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:437e42e2c79862963e84efa4879b7522ff44416964747070df92412c08b9d147`  
		Last Modified: Wed, 22 May 2019 13:23:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d16c06c6a7196fcdb374fc857f732b663b6b276b02f7c5551e6a45364157750`  
		Last Modified: Wed, 22 May 2019 16:01:57 GMT  
		Size: 4.8 MB (4769119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3051b5b9d69a5aa6a20082a780650a256b00c97a11e35fe6aab83f87c5299c01`  
		Last Modified: Wed, 22 May 2019 16:01:55 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba47d338939684b6a0ebeb820a050eb26f7f70d8b13c54131c5312e82550b766`  
		Last Modified: Wed, 22 May 2019 16:01:56 GMT  
		Size: 315.7 KB (315694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba19d698defe3e660665be203431d4c499ced6cc0eabd1dda590e4d279af081`  
		Last Modified: Fri, 07 Jun 2019 21:42:44 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d132c9e4dd4c9d07f0b7b72566a8387644d00b6f536ca80f0a731820966042be`  
		Last Modified: Fri, 07 Jun 2019 21:42:44 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7f8487d1da8fa3d519a44c3425097d94a92bd521e41fcf8806c4c758430706`  
		Last Modified: Fri, 07 Jun 2019 21:42:44 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a615a93e2d7a51e8cbfad797ec533c13fad1fda926076da27764a401428fe7`  
		Last Modified: Fri, 07 Jun 2019 21:43:24 GMT  
		Size: 191.1 MB (191084938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefaa4aa549f130c6bb9c5a724b6b36d0044e93fe801e5bad58c6db85868c8ee`  
		Last Modified: Fri, 07 Jun 2019 21:42:44 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
