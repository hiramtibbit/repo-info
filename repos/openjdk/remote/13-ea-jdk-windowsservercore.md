## `openjdk:13-ea-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:ee6f3f86ab64a295be381cbd83728ed103d9807923680b82ed1f3cf3dab869e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2848; amd64
	-	windows version 10.0.16299.1029; amd64
	-	windows version 10.0.17134.648; amd64
	-	windows version 10.0.17763.379; amd64

### `openjdk:13-ea-jdk-windowsservercore` - windows version 10.0.14393.2848; amd64

```console
$ docker pull openjdk@sha256:35d0c0923f2623d3494b5dfec13ccbe683eb31e64d1a0c36e37a4e2586888f09
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5848049868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8983fd5c3bf1e99f228b58b3a402b3b887e31f9cb55d613cb7b1ba2f34a00b2`
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
# Thu, 28 Mar 2019 10:03:25 GMT
ENV JAVA_VERSION=13-ea+13
# Thu, 28 Mar 2019 10:03:27 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/13/GPL/openjdk-13-ea+13_windows-x64_bin.zip
# Thu, 28 Mar 2019 10:03:28 GMT
ENV JAVA_SHA256=a144c7e470d084e5ce22c6cc484db01c62634b99a82e2b54e87b5aad05bfd9c1
# Thu, 28 Mar 2019 10:06:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 28 Mar 2019 10:06:24 GMT
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
	-	`sha256:28c7a44986f0e78a6d8e7737783668acde9972f2f8c0b4f4071ad36ed511ee54`  
		Last Modified: Thu, 28 Mar 2019 11:02:37 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2661c3e9f0d90d91c1a004825c11769ac9b4190701ac2ecd5d174899111f7e`  
		Last Modified: Thu, 28 Mar 2019 11:02:37 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a960b0158907620f0d2028f8594d9b3a43492c82de13970809413fed2d8ada`  
		Last Modified: Thu, 28 Mar 2019 11:02:37 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0043a52e8cc5b5b9a1f4f067cfd4741b579c628dc0c47bfa460a681cd7cf370d`  
		Last Modified: Thu, 28 Mar 2019 11:03:11 GMT  
		Size: 198.5 MB (198527170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b14299a33a6efa735ede06293e255d26628fb49aecac3ea10aac89cbf6840f`  
		Last Modified: Thu, 28 Mar 2019 11:02:37 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-jdk-windowsservercore` - windows version 10.0.16299.1029; amd64

```console
$ docker pull openjdk@sha256:97fea1885e915666cb2595f2640ab3cf0550a9b8da7f37f502b227e41ab89778
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3414040597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b3a6d18c66f7c4fb5c8e84d2bfc6e0d74b9974177ad3b114c51770940bc1eca`
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
# Thu, 28 Mar 2019 10:08:36 GMT
ENV JAVA_VERSION=13-ea+13
# Thu, 28 Mar 2019 10:08:38 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/13/GPL/openjdk-13-ea+13_windows-x64_bin.zip
# Thu, 28 Mar 2019 10:08:40 GMT
ENV JAVA_SHA256=a144c7e470d084e5ce22c6cc484db01c62634b99a82e2b54e87b5aad05bfd9c1
# Thu, 28 Mar 2019 10:10:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 28 Mar 2019 10:10:49 GMT
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
	-	`sha256:9bfc6df26f06a23d05bef72e5db2fcfdd6d1db1db1a9d22d473dc9552537c159`  
		Last Modified: Thu, 28 Mar 2019 11:03:39 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038f7c2af121a77b28689add3cf944f3fa3342d05c623ffde33f31a474ccf28e`  
		Last Modified: Thu, 28 Mar 2019 11:03:39 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f6fb9c0c389b87be24d7f9ec32309239b2e677aa18ce00da3bcee72911fe05`  
		Last Modified: Thu, 28 Mar 2019 11:03:39 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92eaab4ffc4877fba9432e6429d0756dced5a4bdf7f017655410a1a8587412f4`  
		Last Modified: Thu, 28 Mar 2019 11:04:45 GMT  
		Size: 193.6 MB (193619460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2507496218a76a7a4136e16424f53e1ad6ca6da5bfdaab88dbd56b6cd6e974ba`  
		Last Modified: Thu, 28 Mar 2019 11:03:39 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-jdk-windowsservercore` - windows version 10.0.17134.648; amd64

```console
$ docker pull openjdk@sha256:7f6fb2b3c15dcf7bb14ea23a258a7feed75dbb015b023c445f175071c6b63f2e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2447160201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3184065aab38e2d3caa0b8489c60f68c3bafccf03f794dcb2991575874c19d9f`
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
# Thu, 28 Mar 2019 10:12:28 GMT
ENV JAVA_VERSION=13-ea+13
# Thu, 28 Mar 2019 10:12:30 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/13/GPL/openjdk-13-ea+13_windows-x64_bin.zip
# Thu, 28 Mar 2019 10:12:31 GMT
ENV JAVA_SHA256=a144c7e470d084e5ce22c6cc484db01c62634b99a82e2b54e87b5aad05bfd9c1
# Thu, 28 Mar 2019 10:14:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 28 Mar 2019 10:14:19 GMT
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
	-	`sha256:a03c6f40fcff25d36c4e0ef80e022e54476b15e16c1ec714585ca88e254420fb`  
		Last Modified: Thu, 28 Mar 2019 11:05:20 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dba7efa89a46e8930b8ded8a2c55b5c5ad021e517a7c018ed39576e5b74f46c`  
		Last Modified: Thu, 28 Mar 2019 11:05:20 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626118f3c102f811570acd0fe8fafca6031b05e8126c34f787d308c6ac000e9c`  
		Last Modified: Thu, 28 Mar 2019 11:05:20 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f0d0f818e8dc2f72229b3611958cb81c9eea87f6059ef57380bcfea92d2af`  
		Last Modified: Thu, 28 Mar 2019 11:06:12 GMT  
		Size: 189.2 MB (189152747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46161e41b5667b3e7c94a154a84d32ace0edd96d01763a7a6fab5e5c6a00c4c2`  
		Last Modified: Thu, 28 Mar 2019 11:05:20 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-jdk-windowsservercore` - windows version 10.0.17763.379; amd64

```console
$ docker pull openjdk@sha256:7e897b7d234f9ada295a56604666b7be21644cb03e9823b0e10af81cfcb5e3e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2349177925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6285d5dfcc2d87886c098f142e6bc9d4f5c6fbc9fbc8fc4aed15943a082974cb`
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
# Thu, 28 Mar 2019 10:15:50 GMT
ENV JAVA_VERSION=13-ea+13
# Thu, 28 Mar 2019 10:15:52 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/13/GPL/openjdk-13-ea+13_windows-x64_bin.zip
# Thu, 28 Mar 2019 10:15:53 GMT
ENV JAVA_SHA256=a144c7e470d084e5ce22c6cc484db01c62634b99a82e2b54e87b5aad05bfd9c1
# Thu, 28 Mar 2019 10:17:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 28 Mar 2019 10:17:40 GMT
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
	-	`sha256:4994dadd22814b53d980c8041ba7e06c9126d633b69174ce8af3a166a9961b33`  
		Last Modified: Thu, 28 Mar 2019 11:06:40 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3bb5dcc66237870fb8e49c53ad1ddc723e7d077f2d9c55f1be5035cc040147`  
		Last Modified: Thu, 28 Mar 2019 11:06:40 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7668f0f5b9b42eda22c23dfce7c5ad0825635cd1cc2f4ea8b39173bbac66be24`  
		Last Modified: Thu, 28 Mar 2019 11:06:40 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84a188e1458f914bb56df71ad07e27c39fd8151cabe8834cc0cf9496bc7344e`  
		Last Modified: Thu, 28 Mar 2019 11:07:16 GMT  
		Size: 189.1 MB (189146298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3fbad518cafed73e216ba98d546202613b103742ebc52c13d95b0bfcaab10d`  
		Last Modified: Thu, 28 Mar 2019 11:06:40 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
