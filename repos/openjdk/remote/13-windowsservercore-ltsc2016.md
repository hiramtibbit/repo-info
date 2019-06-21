## `openjdk:13-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:54ef1ef93da1fa04c0e3ac05adf17940dfdc598d43380b51f57a90ae7591ec63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `openjdk:13-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull openjdk@sha256:7df5ae51c000e1fabe03d0f2ce4c3ca5138e0bacf43fb3c16ce24ed0f71fb3d5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5916925764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca950b56347cebed176e517acf974eff858da762e3a85e591474f9cb2680c46`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 15:01:22 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 12 Jun 2019 15:01:24 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 12 Jun 2019 15:02:34 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 21 Jun 2019 20:22:33 GMT
ENV JAVA_VERSION=13-ea+26
# Fri, 21 Jun 2019 20:22:35 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/26/GPL/openjdk-13-ea+26_windows-x64_bin.zip
# Fri, 21 Jun 2019 20:22:36 GMT
ENV JAVA_SHA256=945b2957d2600d6bf220442a1c5a4c9acc9f77d4fc26a2039fdfc84affa33668
# Fri, 21 Jun 2019 20:25:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 21 Jun 2019 20:25:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23b3f15b33027f6e444de8765a73b28e736dd8f107ee158aa5111ad5dd54c25`  
		Last Modified: Wed, 12 Jun 2019 15:41:23 GMT  
		Size: 5.3 MB (5316785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c3c68e3f5f743997693af802b3eae436578297afc4a45ef38b6ccc7e30d19e`  
		Last Modified: Wed, 12 Jun 2019 15:41:19 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e770d0a5948d4c4f6691d706f2dd67601bd3443bfb0dcc1a345feffddaaae25`  
		Last Modified: Wed, 12 Jun 2019 15:41:22 GMT  
		Size: 5.3 MB (5290995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ef6e9f8a0f78f00731f267cd6f6a7afbe2e7f3eea9a831927be51d41b9ec00`  
		Last Modified: Fri, 21 Jun 2019 20:31:59 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571ad07a40b241b1188a84d700bd723e57cd0f71135c951c03c821eee81d618d`  
		Last Modified: Fri, 21 Jun 2019 20:31:59 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6686b0c5bfc667b1916bc524c6c5f44fb810b625221115347d6162a33588c466`  
		Last Modified: Fri, 21 Jun 2019 20:31:59 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898c235669b1ff375e063fa0422681a1e0680647bba10c9d84e6ee8564a39c75`  
		Last Modified: Fri, 21 Jun 2019 20:32:28 GMT  
		Size: 196.3 MB (196336165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a7203667f88184131f9163e6014f8147228daa8072ee12fd4ae55241f3ee`  
		Last Modified: Fri, 21 Jun 2019 20:31:59 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
