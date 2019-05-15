## `openjdk:12-jdk`

```console
$ docker pull openjdk@sha256:1b8b7c7f36409ac92f1413adbbf74619d71cd9c73434237d344bdcd07c34b394
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64
	-	windows version 10.0.17763.437; amd64

### `openjdk:12-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:8bc2a3dcde32a0aa474ad651a677dcb524320b59a2854197b00fde28af2f0630
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247363306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831a029b6add43a7e2f88608a75bf1c924656d9622609fb96898b1f323002ad7`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Fri, 12 Apr 2019 00:39:30 GMT
ADD file:fc4b1a8a391c3bd11cdd229574a87e8d1133402deff8ef758f932756d5a82ca3 in / 
# Fri, 12 Apr 2019 00:39:30 GMT
CMD ["/bin/bash"]
# Fri, 12 Apr 2019 01:03:22 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Fri, 12 Apr 2019 01:04:10 GMT
ENV JAVA_HOME=/usr/java/openjdk-12
# Fri, 12 Apr 2019 01:04:10 GMT
ENV PATH=/usr/java/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Apr 2019 23:27:03 GMT
ENV JAVA_VERSION=12.0.1
# Wed, 17 Apr 2019 23:27:04 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12.0.1/69cfe15208a647278a19ef0990eea691/12/GPL/openjdk-12.0.1_linux-x64_bin.tar.gz
# Wed, 17 Apr 2019 23:27:04 GMT
ENV JAVA_SHA256=151eb4ec00f82e5e951126f572dc9116104c884d97f91be14ec11e85fc2dd626
# Wed, 17 Apr 2019 23:27:46 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 17 Apr 2019 23:27:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:35defbf6c365d4b156baefbecee36d050397bcc4fca7906aada0bbd00e34c76a`  
		Last Modified: Fri, 12 Apr 2019 00:41:39 GMT  
		Size: 42.6 MB (42610008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5362bf1d5ff8c939878cd11387a1f195da87c88b7c73c89b3d933917644c8fe1`  
		Last Modified: Fri, 12 Apr 2019 01:07:10 GMT  
		Size: 6.6 MB (6627887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074486834918caa8103608642317d88034753599dde93cac96f533ec2d4d801b`  
		Last Modified: Wed, 17 Apr 2019 23:30:45 GMT  
		Size: 198.1 MB (198125411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-jdk` - windows version 10.0.14393.2969; amd64

```console
$ docker pull openjdk@sha256:db6db7824f08ea37ef1aa37376ed049dafd657b6213eb22f8a45031a4525df15
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5913880795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bf2ce139ea5efaf10b958a144cf6cc64cc9011fceb16d0ed218ff2cce118e68`
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
# Wed, 15 May 2019 14:21:33 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 15 May 2019 14:22:33 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 15 May 2019 14:22:35 GMT
ENV JAVA_VERSION=12.0.1
# Wed, 15 May 2019 14:22:37 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12.0.1/69cfe15208a647278a19ef0990eea691/12/GPL/openjdk-12.0.1_windows-x64_bin.zip
# Wed, 15 May 2019 14:22:38 GMT
ENV JAVA_SHA256=fc7d9eee3c09ea6548b00ca25dbf34a348b3942c815405a1428e0bfef268d08d
# Wed, 15 May 2019 14:25:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 15 May 2019 14:25:26 GMT
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
	-	`sha256:503f8f3e04f54bdc911e10d615f1a4c322175593df0d2eb467242890f0519bac`  
		Last Modified: Wed, 15 May 2019 14:37:23 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4946b16dfc5ddbcab8b1fa539d9e34369bbaaba04e6e84da22d63ca8599f2a9a`  
		Last Modified: Wed, 15 May 2019 14:37:25 GMT  
		Size: 5.2 MB (5209096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e89d69454b6b1c7830263d4aa595f974c715d676888ae4594850ecd758579b2`  
		Last Modified: Wed, 15 May 2019 14:37:20 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e99c21a6abc23bde765e5d68d2fbd339c38edccee49a26c48e2d35ab210938`  
		Last Modified: Wed, 15 May 2019 14:37:20 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24730621223002f028b7c538806b34602816e13d1c242c15a83beb8ff025030`  
		Last Modified: Wed, 15 May 2019 14:37:21 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de91072d2efaf908a64772fb82de3852e36a439a14b7aee47fae4e5fab293ec`  
		Last Modified: Wed, 15 May 2019 14:38:02 GMT  
		Size: 201.3 MB (201311198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22686894378bd178d75042ae2002bfbf98536d69d4c8287d87770787044ea4bc`  
		Last Modified: Wed, 15 May 2019 14:37:21 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-jdk` - windows version 10.0.17134.765; amd64

```console
$ docker pull openjdk@sha256:aefdcf45ffb7a80a3b18cd3451a245db2c5bad7aade6a7c92c8a9004cd12d41f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2499288083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cab7b69e60abaefe80680b22130b2da3c45c5c55d849eb63f58078e538177161`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 14:18:55 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 15 May 2019 14:25:46 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 15 May 2019 14:26:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 15 May 2019 14:26:12 GMT
ENV JAVA_VERSION=12.0.1
# Wed, 15 May 2019 14:26:13 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12.0.1/69cfe15208a647278a19ef0990eea691/12/GPL/openjdk-12.0.1_windows-x64_bin.zip
# Wed, 15 May 2019 14:26:15 GMT
ENV JAVA_SHA256=fc7d9eee3c09ea6548b00ca25dbf34a348b3942c815405a1428e0bfef268d08d
# Wed, 15 May 2019 14:27:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 15 May 2019 14:27:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69de6f7bb1e322201a17e963326e05e5e25c6281d74fea74f5d9e9e440754eb`  
		Last Modified: Wed, 15 May 2019 14:36:21 GMT  
		Size: 4.8 MB (4776608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eadb830924e2da909e2b58c9aedca9d47a9fd50e02c7095dbeabf1004195a2`  
		Last Modified: Wed, 15 May 2019 14:38:46 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4126ac8bb7c6517ccf09d75bdc601128d528224d971150ad7fe8d0038dd5c1`  
		Last Modified: Wed, 15 May 2019 14:38:46 GMT  
		Size: 308.4 KB (308408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6bbebe0fedec3816b2a6f715f0148b37fba190173fa713bc808c06276a4e3f`  
		Last Modified: Wed, 15 May 2019 14:38:43 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ed4660848cbbe19350c80b25c1a42ed5f44e98bdbd73dabe3e4633bc666ef8`  
		Last Modified: Wed, 15 May 2019 14:38:43 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9019b1a8aca2e66aefac34d36282adb6e001fc8fc500aa0adaffc2bbca2257`  
		Last Modified: Wed, 15 May 2019 14:38:43 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62209e83afea150650d3535dbe868a476941a89c24e01e36034e1cd46aee48f8`  
		Last Modified: Wed, 15 May 2019 14:39:19 GMT  
		Size: 191.9 MB (191945718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f09e8deced0eb7fad1ead8f87bc499dbd56f3dcfd5491bc61abb2fbb098f0c`  
		Last Modified: Wed, 15 May 2019 14:38:43 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-jdk` - windows version 10.0.17763.437; amd64

```console
$ docker pull openjdk@sha256:a3a3c87867aad23f719fb04eaeec5dbecbd314dd141e7ce5757a348aac28d67f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2170483646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fd56e2a695c33c62102ca7b15bfb3aeadaa22ca08e58ed055be8208d69aaf4a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 00:30:13 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 12 Apr 2019 00:45:20 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 12 Apr 2019 00:45:54 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Thu, 18 Apr 2019 09:21:51 GMT
ENV JAVA_VERSION=12.0.1
# Thu, 18 Apr 2019 09:21:53 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12.0.1/69cfe15208a647278a19ef0990eea691/12/GPL/openjdk-12.0.1_windows-x64_bin.zip
# Thu, 18 Apr 2019 09:21:54 GMT
ENV JAVA_SHA256=fc7d9eee3c09ea6548b00ca25dbf34a348b3942c815405a1428e0bfef268d08d
# Thu, 18 Apr 2019 09:23:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 18 Apr 2019 09:23:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea5fbc8be2fb7f7f4f65ce36251366332e71e320255cac4f7e7b406e70aa7c6`  
		Last Modified: Fri, 12 Apr 2019 01:47:09 GMT  
		Size: 4.3 MB (4342848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d909e1b6d6bf78ff2607d804e812b40dd58eb592e74088bc3f2801529742ee9`  
		Last Modified: Fri, 12 Apr 2019 01:51:58 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4b4044a59dba342d747053a6cc82389f21e0aaf82fd32384319f670d5c51a4`  
		Last Modified: Fri, 12 Apr 2019 01:51:58 GMT  
		Size: 310.7 KB (310700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81428326a20dbb13247161e4b635b407009adfd6309a73927f4eaa58fd04edb0`  
		Last Modified: Thu, 18 Apr 2019 09:28:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7ea89e2c940fcea958a4a70ede454f94e518aaf9892df62ba77239411f91c3`  
		Last Modified: Thu, 18 Apr 2019 09:28:57 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a00a10e9a6448c745c6ab62bc66116c384b8f073c8423a7039c5b52088e975`  
		Last Modified: Thu, 18 Apr 2019 09:28:57 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf33298896233e27ab0b9751366ccd96ea27616ec8513b7bffc392ce980bb88`  
		Last Modified: Thu, 18 Apr 2019 09:29:20 GMT  
		Size: 192.0 MB (191959595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7907298708337ac8c324451638f916702ac27ec162c5f842bda557c176dab6ba`  
		Last Modified: Thu, 18 Apr 2019 09:28:57 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
