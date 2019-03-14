## `openjdk:13-ea-jdk`

```console
$ docker pull openjdk@sha256:a2aadf9c81d839de8125db1f75a09f21b0d8b17a6baae04f97cd389a8a6f1107
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.2791; amd64
	-	windows version 10.0.16299.967; amd64
	-	windows version 10.0.17134.590; amd64
	-	windows version 10.0.17763.316; amd64

### `openjdk:13-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:8ba649fd19796408094a9e9a50bec2a7cb79cb964bcb0196cc09e225b654c45c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244392591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3351f725113ba30aa7f9912218ad46fa827eabc148355bcb1254fb26932dea9b`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Thu, 14 Mar 2019 23:20:32 GMT
ADD file:4d11753c2bf556fa74926f65de05676f76006cc2394377279f3748170b19ff59 in / 
# Thu, 14 Mar 2019 23:20:33 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 23:37:11 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Thu, 14 Mar 2019 23:37:11 GMT
ENV JAVA_HOME=/usr/java/openjdk-13
# Thu, 14 Mar 2019 23:37:11 GMT
ENV PATH=/usr/java/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Mar 2019 23:37:11 GMT
ENV JAVA_VERSION=13-ea+11
# Thu, 14 Mar 2019 23:37:11 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/11/GPL/openjdk-13-ea+11_linux-x64_bin.tar.gz
# Thu, 14 Mar 2019 23:37:11 GMT
ENV JAVA_SHA256=037e818139570fd76ecb2084d01be82bd9ffec9dafe3f7fc0707244c488cbd82
# Thu, 14 Mar 2019 23:37:50 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 14 Mar 2019 23:37:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fed07aa1584277d27939770db62b5d92873f3418468f206eb9587c4acc3e381c`  
		Last Modified: Thu, 14 Mar 2019 23:21:21 GMT  
		Size: 42.6 MB (42594965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5ab7990508bce67a1b23ec430296a587ac903c8f030065e55376a9cddbc92c`  
		Last Modified: Thu, 14 Mar 2019 23:41:45 GMT  
		Size: 6.6 MB (6617584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4354a5d3417b3026428fb89a0ad0ff7dbfaba4910dbd12c1def559eec2b0dd3e`  
		Last Modified: Thu, 14 Mar 2019 23:42:01 GMT  
		Size: 195.2 MB (195180042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-jdk` - windows version 10.0.14393.2791; amd64

```console
$ docker pull openjdk@sha256:ae2dd30fc98c1d4c10cf5c4d258e3a9029b656a5a4f88d48e8fc206923cd8e51
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5848559629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82741c160abea3b24e0a640c6e6bf98da8785f7aafcfb654db137f9cd19be44`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Wed, 13 Feb 2019 10:35:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 10:17:29 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 15 Feb 2019 10:17:31 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 15 Feb 2019 10:18:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 12 Mar 2019 09:18:45 GMT
ENV JAVA_VERSION=13-ea+11
# Tue, 12 Mar 2019 09:18:46 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/11/GPL/openjdk-13-ea+11_windows-x64_bin.zip
# Tue, 12 Mar 2019 09:18:48 GMT
ENV JAVA_SHA256=af7bf81dc9c78bc4c58c8aef2001d31c34417a35d99087e97464fd59323a009e
# Tue, 12 Mar 2019 09:22:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 12 Mar 2019 09:22:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b479a92ce115faf181c1196d762b00f05ec9aa83dc2fec2b7ca094c8d6e1bfff`  
		Last Modified: Mon, 11 Feb 2019 20:08:57 GMT  
		Size: 1.6 GB (1570061102 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d6be0e7f96b74f68be8ae9cde286b6108d09d939d8cb130d00bfb8519a6b7fbc`  
		Last Modified: Wed, 13 Feb 2019 11:04:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bc4c4dc3afb15f282193b4c750313cd5aadd44b9d7067cc9f2780c0efbf2eb`  
		Last Modified: Fri, 15 Feb 2019 11:43:15 GMT  
		Size: 5.2 MB (5211770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0fb72a09a5a546203e822dda6bd60f62e431083038ee6fd5291713bf8edcb6c`  
		Last Modified: Fri, 15 Feb 2019 11:43:08 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05d181b0abfd709e657c82989804388143e73cf9f666ac52202da54bb47f44`  
		Last Modified: Fri, 15 Feb 2019 11:43:14 GMT  
		Size: 5.2 MB (5182757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3668113029fc1eefdcb93bb0d1e4f52a7c1433ec4c34f582760d97af62409a52`  
		Last Modified: Tue, 12 Mar 2019 09:34:54 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573069f2e2c6de554baf667e96d91bc0388638dbfa2230ea9fbb112f14cf2f95`  
		Last Modified: Tue, 12 Mar 2019 09:34:54 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f916581547dbb9f14dbc3ad6389bcc85fa469e5f6ca3b79d9384b48d63c48a72`  
		Last Modified: Tue, 12 Mar 2019 09:34:54 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8ddfb009997eba8fd83815984deede019aaa2c330f788190ac572e998feb7a`  
		Last Modified: Tue, 12 Mar 2019 09:35:48 GMT  
		Size: 198.1 MB (198110842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba7029baadbe15eef9a11d0ad5c9f6b5f420ba887c0896d1131e6e3cffd12e1`  
		Last Modified: Tue, 12 Mar 2019 09:34:54 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-jdk` - windows version 10.0.16299.967; amd64

```console
$ docker pull openjdk@sha256:d87f41eee50844df3b7e8a19620b25be152694d90ff9efece336feea17dea793
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3350928058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89a594dfba4ff1c245da5a87de74ea0c1d2bd4f7ad0ef943dc871dd8a50d6fe`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Fri, 08 Feb 2019 07:16:29 GMT
RUN Install update 10.0.16299.967
# Wed, 13 Feb 2019 10:40:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 10:22:13 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 15 Feb 2019 10:22:15 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 15 Feb 2019 10:23:02 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 12 Mar 2019 09:22:35 GMT
ENV JAVA_VERSION=13-ea+11
# Tue, 12 Mar 2019 09:22:37 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/11/GPL/openjdk-13-ea+11_windows-x64_bin.zip
# Tue, 12 Mar 2019 09:22:38 GMT
ENV JAVA_SHA256=af7bf81dc9c78bc4c58c8aef2001d31c34417a35d99087e97464fd59323a009e
# Tue, 12 Mar 2019 09:25:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 12 Mar 2019 09:25:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:effca3ebc3a86f19a139eb7047c6e97d2fe4c941737e8d9698820d0491ccf530`  
		Last Modified: Mon, 11 Feb 2019 21:05:02 GMT  
		Size: 873.9 MB (873894336 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:731ba2742afc105cbc6ca69724a36a1b3dd4199873953d6581f5339a67939b09`  
		Last Modified: Wed, 13 Feb 2019 11:05:29 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b01bf46e9b6222b308e3d8f95fa622a74a155108b2c471a53186d884871bd8`  
		Last Modified: Fri, 15 Feb 2019 11:47:28 GMT  
		Size: 4.8 MB (4779227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00007ac1fa29904718962638478e092f0d2a8f7bfd13b46eabec4fb2bca0e26`  
		Last Modified: Fri, 15 Feb 2019 11:47:25 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b9c969f65c1a2e946e214fc650671fba1ecd7655980ad5acfc1fc62b4a475e`  
		Last Modified: Fri, 15 Feb 2019 11:47:30 GMT  
		Size: 4.7 MB (4738269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8202de06469bbf20aacebe9138ef70586975a7631a777d5f766a900dfef299`  
		Last Modified: Tue, 12 Mar 2019 09:36:16 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fde9fef44ceee0cb5fadc2846acad2a80bee913c90f89b040d9c4aa2e90093`  
		Last Modified: Tue, 12 Mar 2019 09:36:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776b52ddec8f807ed1fb080967a14fd3651e41442bb134d0cf999c75700a9dee`  
		Last Modified: Tue, 12 Mar 2019 09:36:16 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604c72897ed35b039bca1ec36594e387d4bed118ab04f5a0c4977f243fe42e83`  
		Last Modified: Tue, 12 Mar 2019 09:36:47 GMT  
		Size: 193.2 MB (193208443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d034b050c1eeae0c1fe45753b48c9c159d5f8cda4ab0d9605342974dc46c3a5d`  
		Last Modified: Tue, 12 Mar 2019 09:36:16 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-jdk` - windows version 10.0.17134.590; amd64

```console
$ docker pull openjdk@sha256:374368782121ed6bbcb28c4e8e19564f6f57023de0e7ba876bc428ee24321710
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2441480265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c6dd0ac02ab83080135c5fbc3434b00c37d42245e7c75da6522172658bb1745`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 07 Feb 2019 23:00:02 GMT
RUN Install update 10.0.17134.590
# Wed, 13 Feb 2019 11:38:10 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 10:26:11 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 15 Feb 2019 10:26:12 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 15 Feb 2019 10:26:41 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 12 Mar 2019 09:25:18 GMT
ENV JAVA_VERSION=13-ea+11
# Tue, 12 Mar 2019 09:25:19 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/11/GPL/openjdk-13-ea+11_windows-x64_bin.zip
# Tue, 12 Mar 2019 09:25:20 GMT
ENV JAVA_SHA256=af7bf81dc9c78bc4c58c8aef2001d31c34417a35d99087e97464fd59323a009e
# Tue, 12 Mar 2019 09:27:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 12 Mar 2019 09:27:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e94f7b83ce20c90f9f1b0323c3f9c3c791163e44e7069e47cd76cf50a3a07ef`  
		Last Modified: Mon, 11 Feb 2019 21:11:29 GMT  
		Size: 588.0 MB (587983329 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0f56eeb2940f5c3391f320574c551c5f84072a3baaee150b165407a99cfba06`  
		Last Modified: Wed, 13 Feb 2019 12:50:23 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddc9f439432d7a5a351ceeb4d0d8378c0ebeb098a9d0409deabb913b43bc5e5`  
		Last Modified: Fri, 15 Feb 2019 11:48:42 GMT  
		Size: 4.7 MB (4712074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bd978e08071c5915c37e2461470f1112ce743e4a7fe930fb4d82293d4c522f`  
		Last Modified: Fri, 15 Feb 2019 11:48:40 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8011ada461c966658532dc070295a625824d7a9c8a54a506e19e3fa8b458e814`  
		Last Modified: Fri, 15 Feb 2019 11:48:41 GMT  
		Size: 306.3 KB (306319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0f82a51d38f29fbefda658f9acdc1e3b995b9650c52a231ef67c1aa851fbfc`  
		Last Modified: Tue, 12 Mar 2019 09:37:16 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097b0c53ed4c66997919d9a2f4ff4152b338e73265fcf023c8028b7ab8053a82`  
		Last Modified: Tue, 12 Mar 2019 09:37:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07701250c43d031ece92d1eb693a4d0a414e902b23e67497a72fb5bb5c96ff20`  
		Last Modified: Tue, 12 Mar 2019 09:37:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dea37549f7e44139a773d6e6c5ac7b48658195081a5e2427e75400f0d314f5a`  
		Last Modified: Tue, 12 Mar 2019 09:38:08 GMT  
		Size: 188.8 MB (188783037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f58329bc1267f3d9eda88229dc97c1b42b1b8d2e8c592833b1b092b86d1aa0`  
		Last Modified: Tue, 12 Mar 2019 09:37:16 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-jdk` - windows version 10.0.17763.316; amd64

```console
$ docker pull openjdk@sha256:82c9a96e94232471809cfdbc4697a091f8a317993442e0c0303807629a43ce2d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2098672239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ef6f9a2117bdbfcb57371fab14addd677a11305b54aba9ac7a6c05a3308f26`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Fri, 08 Feb 2019 00:24:24 GMT
RUN Install update 1809-amd64
# Wed, 13 Feb 2019 11:45:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 10:29:28 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 15 Feb 2019 10:29:29 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 15 Feb 2019 10:29:56 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 12 Mar 2019 09:27:30 GMT
ENV JAVA_VERSION=13-ea+11
# Tue, 12 Mar 2019 09:27:31 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/11/GPL/openjdk-13-ea+11_windows-x64_bin.zip
# Tue, 12 Mar 2019 09:27:33 GMT
ENV JAVA_SHA256=af7bf81dc9c78bc4c58c8aef2001d31c34417a35d99087e97464fd59323a009e
# Tue, 12 Mar 2019 09:29:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 12 Mar 2019 09:29:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9e2f2b17be7207dce6730ad64c630dc10b5b3f61a74545c7c1628d605e381297`  
		Last Modified: Tue, 12 Feb 2019 20:42:21 GMT  
		Size: 370.7 MB (370687536 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cd3ade6fc2a72f217b4055dbb0d08b2a25d881d592aeba426cc097b18d9795f7`  
		Last Modified: Wed, 13 Feb 2019 12:52:13 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef813a1585330dd985f09a5e87000a28ea47ed9abf3086e4b532f6b78ef978b2`  
		Last Modified: Fri, 15 Feb 2019 11:52:51 GMT  
		Size: 4.2 MB (4206856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efad0f03bfafa9e7b2ba6cf93c9c8ad781bd810aa049afe42cda154b81d60257`  
		Last Modified: Fri, 15 Feb 2019 11:52:49 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1174688cc51543660d8f4c28674b8e0d6570fccb488dc4f9dfa7ca68529781bf`  
		Last Modified: Fri, 15 Feb 2019 11:52:51 GMT  
		Size: 309.5 KB (309532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad81582aba6f2459bb8d90ea571f9718e4d17bead850c5680cfc8f76c8d198b7`  
		Last Modified: Tue, 12 Mar 2019 09:38:36 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c1c8574b56d2fd8de1231165d1c26a5bc19769bcdef2ed233ba9e577aa3a2`  
		Last Modified: Tue, 12 Mar 2019 09:38:36 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0299ef4e93c5051792cfce48e57af92790dcbf32f2b1b13ffb33187f37b7f81c`  
		Last Modified: Tue, 12 Mar 2019 09:38:36 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec643d7de236b8d5d3ee83cf14600faa913209c325c408d5f59af2a1fa7ef53`  
		Last Modified: Tue, 12 Mar 2019 09:39:05 GMT  
		Size: 188.8 MB (188775743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8537a1e6c15f922751074f11ae25933d1f62a52f55eb18fbad6d0c805025a196`  
		Last Modified: Tue, 12 Mar 2019 09:38:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
