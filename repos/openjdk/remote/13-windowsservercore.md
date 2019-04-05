## `openjdk:13-windowsservercore`

```console
$ docker pull openjdk@sha256:3cc5466568b519596cae31a9270ddfa934f3b85fb030efe8f11ab7c970134e78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2848; amd64
	-	windows version 10.0.16299.1029; amd64
	-	windows version 10.0.17134.648; amd64
	-	windows version 10.0.17763.379; amd64

### `openjdk:13-windowsservercore` - windows version 10.0.14393.2848; amd64

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

### `openjdk:13-windowsservercore` - windows version 10.0.16299.1029; amd64

```console
$ docker pull openjdk@sha256:21e78166088176545dd1080fd0621322c8da6ad3e89b40f439bf47471253f878
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3414343744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8296b15e26786a55b9ed62fcee6c1ad5c948129174728dc27e5331aa67d488dc`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Sat, 16 Mar 2019 09:35:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:07:46 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 28 Mar 2019 10:07:48 GMT
ENV JAVA_HOME=C:\openjdk-13
# Thu, 28 Mar 2019 10:08:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 05 Apr 2019 09:19:10 GMT
ENV JAVA_VERSION=13-ea+15
# Fri, 05 Apr 2019 09:19:11 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/15/GPL/openjdk-13-ea+15_windows-x64_bin.zip
# Fri, 05 Apr 2019 09:19:13 GMT
ENV JAVA_SHA256=24d9798529faf348bd3b66ad99eeea986cc6776dfb16b215310efd360e50fa61
# Fri, 05 Apr 2019 09:21:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 05 Apr 2019 09:21:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7f4a716683dc03db3521ed040924c24ea9bd17c7f134c09bf22e33f6af33ade8`  
		Last Modified: Mon, 11 Mar 2019 21:13:17 GMT  
		Size: 936.6 MB (936551125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:81856e9377a060d58cb8798fbc456fc8414158afec682bdd098149edc0a7d1fc`  
		Last Modified: Sat, 16 Mar 2019 10:41:06 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447d66808d19dc7d42a62bfafa6cd128cd924ab86c93d4ba8c29e16c5e0f15e1`  
		Last Modified: Thu, 28 Mar 2019 11:03:45 GMT  
		Size: 4.8 MB (4799433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f217594fb26f582630645d54b5430e01fbcd6036c7b5b6f2099c8655fc3437b`  
		Last Modified: Thu, 28 Mar 2019 11:03:42 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542219958719a387de5e217d15116f6f1645cd9048653e6cbc65b518fa4ae6c5`  
		Last Modified: Thu, 28 Mar 2019 11:03:44 GMT  
		Size: 4.8 MB (4762787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c10de342d87956994976cd3c695b70cfe6ab478a9653bfa97ed51a9f929a41`  
		Last Modified: Fri, 05 Apr 2019 09:33:00 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a0c49220229f53cb4922436552c0bdc135dc53828a2e8977498a31ecb5bf2`  
		Last Modified: Fri, 05 Apr 2019 09:33:00 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52352ea37ad31060879f96cda71af6708cf1844bde11cc1c66d0c2303a15144`  
		Last Modified: Fri, 05 Apr 2019 09:33:00 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c3e160407ac42e2a87e0fe070f7a3e6bc82cd63c2bfab6025c1b14e112d0ac`  
		Last Modified: Fri, 05 Apr 2019 09:34:04 GMT  
		Size: 193.9 MB (193922595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534524777c506dbb769691dc5c4830ab61bbb7ff8e1115f545f86b57787f8db2`  
		Last Modified: Fri, 05 Apr 2019 09:33:00 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-windowsservercore` - windows version 10.0.17134.648; amd64

```console
$ docker pull openjdk@sha256:f8091dd658739cdfb64dc6b92ba474833ca2ca248897ccd397e07b80ff280dda
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2447469115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e01efd62be0320a86a4341185d3d21b3b8574bad67e62b53133c7d2c006ccd6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 08 Mar 2019 23:20:01 GMT
RUN Install update 10.0.17134.648
# Sat, 16 Mar 2019 09:44:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:11:54 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 28 Mar 2019 10:11:56 GMT
ENV JAVA_HOME=C:\openjdk-13
# Thu, 28 Mar 2019 10:12:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 05 Apr 2019 09:21:39 GMT
ENV JAVA_VERSION=13-ea+15
# Fri, 05 Apr 2019 09:21:40 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/15/GPL/openjdk-13-ea+15_windows-x64_bin.zip
# Fri, 05 Apr 2019 09:21:41 GMT
ENV JAVA_SHA256=24d9798529faf348bd3b66ad99eeea986cc6776dfb16b215310efd360e50fa61
# Fri, 05 Apr 2019 09:23:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 05 Apr 2019 09:23:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be86bca8de59067e592a8becc2e83ed2465a6d9bce324043e434aa4a15493b00`  
		Last Modified: Mon, 11 Mar 2019 21:17:02 GMT  
		Size: 593.3 MB (593288046 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:97db8a70a029fc0e25892873d5695bd2b9a1c93e4cd7dcd91fcddf338989a592`  
		Last Modified: Sat, 16 Mar 2019 10:43:05 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebd1bf50e1506d9e28058901cc12b40f8cdec81ba85c3f1d2c0acd1edca3ca1`  
		Last Modified: Thu, 28 Mar 2019 11:05:24 GMT  
		Size: 4.7 MB (4727237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c1d4b4704542cf525ed703379f9d792ab87b14220fb9e4f3596483fa3e99a7`  
		Last Modified: Thu, 28 Mar 2019 11:05:22 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e698cc887047f632e412b17a83acaae1969ba08f7c0c6411d6604a7295d1cc9`  
		Last Modified: Thu, 28 Mar 2019 11:05:22 GMT  
		Size: 296.7 KB (296684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca91e0c5ce7a5e7b5d966db7c9bf0fdea67cb8306ce3b2bbe52866fa95eb7ab8`  
		Last Modified: Fri, 05 Apr 2019 09:34:33 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba70658d06d3818404056f6e2010253ae1b6f262fd89d002c14ab5fa0044b9e4`  
		Last Modified: Fri, 05 Apr 2019 09:34:33 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c478a978a9288b3af239d373668b22986f615f31b942b1003dd32a6d6a6ff667`  
		Last Modified: Fri, 05 Apr 2019 09:34:33 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c47746f884298ea2df3efd944e8b179df6cbbfc78688ab50e4a5d7c382c156`  
		Last Modified: Fri, 05 Apr 2019 09:35:25 GMT  
		Size: 189.5 MB (189461650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64159ba053198220d09be16aff82acc097fe03d12a9caf0918566f49e40fb89`  
		Last Modified: Fri, 05 Apr 2019 09:34:33 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-windowsservercore` - windows version 10.0.17763.379; amd64

```console
$ docker pull openjdk@sha256:5e754981fe05d33535a3e00036690ece9c148cf874e5cabaef28bf1b2442a83d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2349485498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2959ce1290fae7fe010a9c0d06602230038527a8cd201c856a4e3f75090ce791`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 09 Mar 2019 03:10:13 GMT
RUN Install update 1809-amd64
# Sat, 16 Mar 2019 09:52:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:15:19 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 28 Mar 2019 10:15:21 GMT
ENV JAVA_HOME=C:\openjdk-13
# Thu, 28 Mar 2019 10:15:49 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 05 Apr 2019 09:23:52 GMT
ENV JAVA_VERSION=13-ea+15
# Fri, 05 Apr 2019 09:23:53 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/15/GPL/openjdk-13-ea+15_windows-x64_bin.zip
# Fri, 05 Apr 2019 09:23:55 GMT
ENV JAVA_SHA256=24d9798529faf348bd3b66ad99eeea986cc6776dfb16b215310efd360e50fa61
# Fri, 05 Apr 2019 09:25:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 05 Apr 2019 09:25:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d48f500354393ec6614f6435639636db175e3ac6c3d1a3d1857b609789de7a7d`  
		Last Modified: Tue, 12 Mar 2019 22:36:05 GMT  
		Size: 620.8 MB (620755432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e195200ec7c843146b67b39b26ec25466f3b96bce8db32ff3a809a25fdece80`  
		Last Modified: Sat, 16 Mar 2019 10:45:02 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613244f30bb1a7b8ec62a7335f06e3cab5ea68622dead5ce1f837b9c3f829daf`  
		Last Modified: Thu, 28 Mar 2019 11:06:45 GMT  
		Size: 4.3 MB (4284846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b1c747acf45cad258e7509eb6a95224afa6d087de2310fb9974c969bce2910`  
		Last Modified: Thu, 28 Mar 2019 11:06:43 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d896352a7b9155c9918d35efff6bbb85dc04d7e3ce305cc536e6be58258951d7`  
		Last Modified: Thu, 28 Mar 2019 11:06:43 GMT  
		Size: 298.8 KB (298778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532fce7e25ba423db6e77158b89332a4fcad5847cbd8bc7fff899d160b855611`  
		Last Modified: Fri, 05 Apr 2019 09:35:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e350262c80cf106e880465ee8d00da0792333ec42c8d3439e7f3eb962ac348c4`  
		Last Modified: Fri, 05 Apr 2019 09:35:56 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b40e3a645cf096beb3e84ec516107ac51fe8b4909b2c2ac2eeba92b61e31141`  
		Last Modified: Fri, 05 Apr 2019 09:35:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64611f9774db75dd1044082e75791ad96b246df30d707501f955ab2a15d9b9b`  
		Last Modified: Fri, 05 Apr 2019 09:36:41 GMT  
		Size: 189.5 MB (189453878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf50dff1aed3fd2a1165ebfb2280d49e64660904c2dc3b8000b2d584a589adb`  
		Last Modified: Fri, 05 Apr 2019 09:35:56 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
