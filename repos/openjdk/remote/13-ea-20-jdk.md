## `openjdk:13-ea-20-jdk`

```console
$ docker pull openjdk@sha256:7895c68dc25dc5844d2c2580e2c7e86b287217e06af69ed12b6fd9fe2b6b7ddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64
	-	windows version 10.0.17763.437; amd64

### `openjdk:13-ea-20-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:09279d079203b607f5ceb48cac2ac6f5f515783586a283eec66a87d7a251f58d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245147823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e4bfdf03a926adf7aeec07ee3b6a87ebc46b51b6d286f8267c3383554c2a256`
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
# Fri, 12 Apr 2019 01:03:22 GMT
ENV JAVA_HOME=/usr/java/openjdk-13
# Fri, 12 Apr 2019 01:03:23 GMT
ENV PATH=/usr/java/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 May 2019 00:24:46 GMT
ENV JAVA_VERSION=13-ea+20
# Tue, 14 May 2019 00:24:46 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/20/GPL/openjdk-13-ea+20_linux-x64_bin.tar.gz
# Tue, 14 May 2019 00:24:46 GMT
ENV JAVA_SHA256=545f946d931f38ea32614cc6a5089fb5abe92497f98d52dc9f6375097c70bdba
# Tue, 14 May 2019 00:25:40 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 14 May 2019 00:25:40 GMT
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
	-	`sha256:99f904284597fd5e3305fbe54ea4c9c44259e48a10e4737b6a7bfc5c64961da5`  
		Last Modified: Tue, 14 May 2019 00:38:01 GMT  
		Size: 195.9 MB (195909928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-20-jdk` - windows version 10.0.14393.2969; amd64

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

### `openjdk:13-ea-20-jdk` - windows version 10.0.17134.765; amd64

```console
$ docker pull openjdk@sha256:d14582907bb1b9cd6bb97fca5d0de57d07badc9d977d33dcd6784195b848d0d3
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2497856531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0dddf613327a579d4cd353785a379b5382b437db14f318435e50fabd27ec391`
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
# Wed, 15 May 2019 14:18:57 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 15 May 2019 14:19:22 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 15 May 2019 14:19:23 GMT
ENV JAVA_VERSION=13-ea+20
# Wed, 15 May 2019 14:19:24 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/20/GPL/openjdk-13-ea+20_windows-x64_bin.zip
# Wed, 15 May 2019 14:19:26 GMT
ENV JAVA_SHA256=532fb6c2bd0e979dad19c495aa9c4378deb5fdef4913ccb9eece8202403f0e01
# Wed, 15 May 2019 14:21:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 15 May 2019 14:21:15 GMT
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
	-	`sha256:61ff90fd0c85fbd5187406e2c8638c8d292c8505770695fc92041109266c88e6`  
		Last Modified: Wed, 15 May 2019 14:36:19 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d721bf12c6d20db84143fed1a68dc58442a95efa12ec723d8042193f5550ebf1`  
		Last Modified: Wed, 15 May 2019 14:36:19 GMT  
		Size: 308.2 KB (308163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ad5a329d91141a4eca79cc4f159820bde4730424d0719d5591961ce037a17e`  
		Last Modified: Wed, 15 May 2019 14:36:16 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f050e892a3fcdb3f90ee7ac42d1d34d43df80c9cca7496939e08796b594169a`  
		Last Modified: Wed, 15 May 2019 14:36:16 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f9cf0c6fbb88086cd20ad1437e8b60681c630614b83fc384b7db414772b93`  
		Last Modified: Wed, 15 May 2019 14:36:16 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875a5c9c4e77d85f2f7d098d5afa987003c16fd7bd1a50cd080e68d6a1ddf12a`  
		Last Modified: Wed, 15 May 2019 14:36:43 GMT  
		Size: 190.5 MB (190514428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ad3aa219a1ec1c407c8c8e82cd2ddfae08ae9d033516f0e1c7cababbe7e0b0`  
		Last Modified: Wed, 15 May 2019 14:36:16 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-20-jdk` - windows version 10.0.17763.437; amd64

```console
$ docker pull openjdk@sha256:7736e6d5a5ed6dfbd6c1a096af5d5466249422c41a160409bc38e23cb1e34c3e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2169042267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59686f58c57ca2ba939c62e1571c884ae796de2083776e998bff2b15ee1c8d9c`
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
# Fri, 12 Apr 2019 00:30:15 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 12 Apr 2019 00:30:42 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 14 May 2019 00:54:20 GMT
ENV JAVA_VERSION=13-ea+20
# Tue, 14 May 2019 00:54:21 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/20/GPL/openjdk-13-ea+20_windows-x64_bin.zip
# Tue, 14 May 2019 00:54:23 GMT
ENV JAVA_SHA256=532fb6c2bd0e979dad19c495aa9c4378deb5fdef4913ccb9eece8202403f0e01
# Tue, 14 May 2019 00:56:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 14 May 2019 00:56:16 GMT
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
	-	`sha256:889015159e4a5ef05dbf13569418f6f875217dd10454d8263c366c6756b7aadf`  
		Last Modified: Fri, 12 Apr 2019 01:47:07 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b36cb5f431de4c9a09969e201e39bec58fca78e158a6eee3d12bc499a0154ef`  
		Last Modified: Fri, 12 Apr 2019 01:47:08 GMT  
		Size: 310.6 KB (310565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d1157de592c551b4536e79898629b63bdfa3433e280b39dac19816bf422fdc`  
		Last Modified: Tue, 14 May 2019 01:00:23 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0190e45f0b084c2305c266c211e74f9598068c8bd72c62d2686f8e65473f6ca8`  
		Last Modified: Tue, 14 May 2019 01:00:24 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa5a55d93a414aa32ecdf75d505a40af357a1e284ae8db578adf3abc8b880c2`  
		Last Modified: Tue, 14 May 2019 01:00:24 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bbc08c25e641581b02d1e612091141b25743f700d8282d8a40e1c06c507628`  
		Last Modified: Tue, 14 May 2019 01:01:04 GMT  
		Size: 190.5 MB (190518347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4662d1ec3709b1b441b169971bab1d2159b8c0c99cb0affeb42a53230fe553d1`  
		Last Modified: Tue, 14 May 2019 01:00:23 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
