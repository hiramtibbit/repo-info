## `openjdk:13-ea-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:72e44d3b00d925724a624d04ff7595b1f3ed2d6739a1af89bdcf0a133092c303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2848; amd64

### `openjdk:13-ea-windowsservercore-ltsc2016` - windows version 10.0.14393.2848; amd64

```console
$ docker pull openjdk@sha256:a018fd0ffec5a9ce5b20448536a0f73fb19c4ba666d67e41293762c48ba3b7fc
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5848344724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff6efea290f6e382e42249cdfa591360bb9507abbad96449639e99c84471179`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Mar 2019 20:57:18 GMT
RUN Install update 10.0.14393.2848
# Sat, 16 Mar 2019 09:25:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:02:17 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 28 Mar 2019 10:02:19 GMT
ENV JAVA_HOME=C:\openjdk-13
# Thu, 28 Mar 2019 10:03:23 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 05 Apr 2019 09:15:59 GMT
ENV JAVA_VERSION=13-ea+15
# Fri, 05 Apr 2019 09:16:00 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/15/GPL/openjdk-13-ea+15_windows-x64_bin.zip
# Fri, 05 Apr 2019 09:16:01 GMT
ENV JAVA_SHA256=24d9798529faf348bd3b66ad99eeea986cc6776dfb16b215310efd360e50fa61
# Fri, 05 Apr 2019 09:18:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 05 Apr 2019 09:18:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e0718b11f51220dd85c47a1d225be81c5ba343fbb45f9b43fe3d762c0a20300a`  
		Last Modified: Mon, 11 Mar 2019 20:57:18 GMT  
		Size: 1.6 GB (1569132556 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3c84f6ec9cf25e40329a2ab2c9fa1da3095d19cb67d4eacabcec0838b7e89729`  
		Last Modified: Sat, 16 Mar 2019 10:38:59 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b476c13be693e6b037949375acc61d13882e125755eefcbf8025e9710f612b6`  
		Last Modified: Thu, 28 Mar 2019 11:02:42 GMT  
		Size: 5.2 MB (5212794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7f7d37103ca754eef7922773013c044f068b350ac741048c7e8ce177e85ceb`  
		Last Modified: Thu, 28 Mar 2019 11:02:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53648c20484e8edd5dab97b1010fc95f11ce0d0008a34e6bf81bcd423e4d2843`  
		Last Modified: Thu, 28 Mar 2019 11:02:42 GMT  
		Size: 5.2 MB (5184177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49238b99c85665efa3939fb8773edbfc63d79546af0d4380b029a9cfdfca7ad`  
		Last Modified: Fri, 05 Apr 2019 09:31:32 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a004586e989b980dc4c639833da90f3acd56c86bb0c1921a2902da33894aa34f`  
		Last Modified: Fri, 05 Apr 2019 09:31:32 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba9a365e4fdfe7bb9aec40644a2d66d72b2f4032da031d90c6aef3c9ad6bb42`  
		Last Modified: Fri, 05 Apr 2019 09:31:32 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b85e42721e8ab72929e45f7b0cdeec8a72026aaf02989903d9e1ea81546f12b`  
		Last Modified: Fri, 05 Apr 2019 09:32:31 GMT  
		Size: 198.8 MB (198822051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc16a8b816018deff9840b0042a7b48048dd0d28a2994b9931035ddd6825af2`  
		Last Modified: Fri, 05 Apr 2019 09:31:33 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
