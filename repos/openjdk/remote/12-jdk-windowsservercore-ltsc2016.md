## `openjdk:12-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:b45eeb446452d4c04a24ea365e6e042731b60a6639719e22a39745eca5111658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `openjdk:12-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull openjdk@sha256:56c07d591160e997580ffb86b71877666267cce0f74bee28741db4a465095644
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5917513038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61a4e1d7cea7fcde7b4ea0022104d5c5c33ec71f33435ef56834d4cb385500e`
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
# Wed, 12 Jun 2019 15:10:34 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 12 Jun 2019 15:11:37 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 12 Jun 2019 15:11:39 GMT
ENV JAVA_VERSION=12.0.1
# Wed, 12 Jun 2019 15:11:41 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12.0.1/69cfe15208a647278a19ef0990eea691/12/GPL/openjdk-12.0.1_windows-x64_bin.zip
# Wed, 12 Jun 2019 15:11:43 GMT
ENV JAVA_SHA256=fc7d9eee3c09ea6548b00ca25dbf34a348b3942c815405a1428e0bfef268d08d
# Wed, 12 Jun 2019 15:14:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 12 Jun 2019 15:14:08 GMT
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
	-	`sha256:eecc6f450ed914ec61af0ab90025ad637ee9ca1980bbc7380fc67e5d9b751d12`  
		Last Modified: Wed, 12 Jun 2019 15:46:18 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa57a4dd1167d537cf6cd4f3fecb2bc1b09434279363996ce79cdbb3d9a276b`  
		Last Modified: Wed, 12 Jun 2019 15:46:20 GMT  
		Size: 5.3 MB (5291716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67af130a83b8838a64764bbdc4f025e33e3dd88a708a0652212baa5a620f74ff`  
		Last Modified: Wed, 12 Jun 2019 15:46:15 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4bf94474c06325afa2ed79876c77fdbafa740cdddfd8ca4d04f31b32c582b`  
		Last Modified: Wed, 12 Jun 2019 15:46:15 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dc619e42ba53195e1f6eb2026d76f5b5abe37e36379f42692dcad8e7295a2b`  
		Last Modified: Wed, 12 Jun 2019 15:46:15 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2d31bb5a5a932888659d2ca51c42428e1ca3a538157ee47a4fb6fdb85b152c`  
		Last Modified: Wed, 12 Jun 2019 15:46:52 GMT  
		Size: 196.9 MB (196922604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e51f1ba0c492d432e98a436dd2e05f2a290dd66fbbf0d4b76ef437aef992f09`  
		Last Modified: Wed, 12 Jun 2019 15:46:15 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
