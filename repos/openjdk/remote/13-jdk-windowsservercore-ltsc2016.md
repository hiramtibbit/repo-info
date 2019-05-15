## `openjdk:13-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:98475a09efc477fa518f49d1ee6aad38a69e41674744d49b7b472866fe084147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `openjdk:13-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull openjdk@sha256:31da4d6a5f62072ee535c101884b8141efdcfc27b3249c2a50be74df28fb4170
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5912454709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:124a4969fb7bbbc40e9c703cd435c9511c11fbcaf6203b10d46628e2f4f06481`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 14:13:57 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 15 May 2019 14:13:59 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 15 May 2019 14:15:06 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 15 May 2019 14:15:08 GMT
ENV JAVA_VERSION=13-ea+20
# Wed, 15 May 2019 14:15:09 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/20/GPL/openjdk-13-ea+20_windows-x64_bin.zip
# Wed, 15 May 2019 14:15:11 GMT
ENV JAVA_SHA256=532fb6c2bd0e979dad19c495aa9c4378deb5fdef4913ccb9eece8202403f0e01
# Wed, 15 May 2019 14:18:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 15 May 2019 14:18:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe10f1d656599fae3d06b8e9f14fe6c60643d5834a14c80004b7ae922b18171`  
		Last Modified: Wed, 15 May 2019 14:35:28 GMT  
		Size: 5.2 MB (5232414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a30ccc8f4fe4d3960105d6df107a57c4beeca971fce2ed3a8665d3f187536af`  
		Last Modified: Wed, 15 May 2019 14:35:23 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03461a18c66f7f69e6a235a2a70ee319c9d4b764b0c310bde15a2bd7273c3975`  
		Last Modified: Wed, 15 May 2019 14:35:25 GMT  
		Size: 5.2 MB (5209147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87265f927380a420f55c918a9276fd93b70ca7c54a53e080aea586b59bbcfab`  
		Last Modified: Wed, 15 May 2019 14:35:24 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9f50f2397ad744252ac4abf4dade6ca2ec68fac1fb7234bd58cf7c2d77de2f`  
		Last Modified: Wed, 15 May 2019 14:35:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dcd79596b6f15938ab46e7ad43737173df22db67396206a2b9e30142ff6691c`  
		Last Modified: Wed, 15 May 2019 14:35:24 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707451ac9aabc4d76bb270bc58250afdeac09f89f1da423a56e630b9c0399e80`  
		Last Modified: Wed, 15 May 2019 14:35:45 GMT  
		Size: 199.9 MB (199885032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66608caeb6f7bf038a9d1b86cab4a6a47243cba1f4ed53a3c2869dbfcf0ad47e`  
		Last Modified: Wed, 15 May 2019 14:35:21 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
