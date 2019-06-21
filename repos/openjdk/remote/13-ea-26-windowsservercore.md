## `openjdk:13-ea-26-windowsservercore`

```console
$ docker pull openjdk@sha256:327ba9ee100049cc31a6635631c644df8314c764942fe7c41fb2835ab1ae3d82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.14393.3025; amd64

### `openjdk:13-ea-26-windowsservercore` - windows version 10.0.17763.557; amd64

```console
$ docker pull openjdk@sha256:df530d18cfc3205ee6c63d2a48a7b48dff1238dcad6e41a73833015a2bfe1b2a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2582079197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2932e302a93e46c30f3a3d2c814245459635bf1065c45ce979406702d7d2da7b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:54:28 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 12 Jun 2019 14:54:30 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 12 Jun 2019 14:54:57 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 21 Jun 2019 20:17:56 GMT
ENV JAVA_VERSION=13-ea+26
# Fri, 21 Jun 2019 20:17:57 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/26/GPL/openjdk-13-ea+26_windows-x64_bin.zip
# Fri, 21 Jun 2019 20:17:58 GMT
ENV JAVA_SHA256=945b2957d2600d6bf220442a1c5a4c9acc9f77d4fc26a2039fdfc84affa33668
# Fri, 21 Jun 2019 20:20:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 21 Jun 2019 20:20:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e339a1fa7b227ec57d0a73f73fee29a16b2e44d083d386cf1ad461efd9b1909`  
		Last Modified: Wed, 12 Jun 2019 15:38:39 GMT  
		Size: 4.4 MB (4358377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7052b1634c27a86cc77e771b89b602df6664cd990e978ea2561d07479e0b4b30`  
		Last Modified: Wed, 12 Jun 2019 15:38:38 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f2af46f3218dcee651631d06d9f6eb5ce8a651e8e3b2532b5fc698fc08c1fb`  
		Last Modified: Wed, 12 Jun 2019 15:38:38 GMT  
		Size: 291.3 KB (291272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3abba6eb3777121342671b411359d330bad9677be99ae92130e3da52ae4fc`  
		Last Modified: Fri, 21 Jun 2019 20:28:46 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d0ce2918b9f4adaa9a1b8867edb2cf20f9357d1474cd9e643454886d2e7e48`  
		Last Modified: Fri, 21 Jun 2019 20:28:46 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb64f99b84021bf6eacc9aaac8026773f5142a3aed463dcac7d99119180f246`  
		Last Modified: Fri, 21 Jun 2019 20:28:46 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be32b9f5739a7370e0715a0eeca2c9648c3f1184c07ea5fa83e5eaf7ac5e88f`  
		Last Modified: Fri, 21 Jun 2019 20:30:04 GMT  
		Size: 191.4 MB (191356003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b03ed665d2472ae41960485bc660b89eb1c2a43c111894b25c8e5bc455a2df`  
		Last Modified: Fri, 21 Jun 2019 20:28:46 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-26-windowsservercore` - windows version 10.0.17134.829; amd64

```console
$ docker pull openjdk@sha256:aa31dc6873698f399faafc67cd4c9d926e2032ae88e3cb9f80b919d1ed4388e5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2504644845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b56e9afcd90cb52042b05eb1dfda985f24a187c2d5ae3896c5dffd7d4373354`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:57:59 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 12 Jun 2019 14:58:01 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 12 Jun 2019 14:58:25 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 21 Jun 2019 20:20:34 GMT
ENV JAVA_VERSION=13-ea+26
# Fri, 21 Jun 2019 20:20:35 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/26/GPL/openjdk-13-ea+26_windows-x64_bin.zip
# Fri, 21 Jun 2019 20:20:36 GMT
ENV JAVA_SHA256=945b2957d2600d6bf220442a1c5a4c9acc9f77d4fc26a2039fdfc84affa33668
# Fri, 21 Jun 2019 20:22:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 21 Jun 2019 20:22:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707084aa2615c9263a52ea81134d08566c61e95d8212d96fd034fe90f190f597`  
		Last Modified: Wed, 12 Jun 2019 15:40:11 GMT  
		Size: 4.8 MB (4769858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911289ed8acfb7694dcba7163e4c42246513d4650c16f8d1468881304b90418`  
		Last Modified: Wed, 12 Jun 2019 15:40:09 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c3308d8ab1afa7bb825e487421b336bf2244ed3d933695e4385c2a988f8662`  
		Last Modified: Wed, 12 Jun 2019 15:40:11 GMT  
		Size: 295.5 KB (295534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4e3d006e0a82108453e9d4cb9fefeef968a0d655dfcf2ced71fd11e0272e4d`  
		Last Modified: Fri, 21 Jun 2019 20:30:41 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66c43efa8941ca3a0144c53474a4ead69d080c5208fefb23792e43248a7ff56`  
		Last Modified: Fri, 21 Jun 2019 20:30:41 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8291ac6066e28b5bf6d3f4e8428959e9484f2ac6ddc4116e1a7ed953f2c10a`  
		Last Modified: Fri, 21 Jun 2019 20:30:41 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fc8acc1eaebd3e2e9fd47274ce6a8a731c137855911f5e24e98d2aaa30be18`  
		Last Modified: Fri, 21 Jun 2019 20:31:24 GMT  
		Size: 191.4 MB (191365783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11724b4e295efe39a71c2d98dd454c269643e6ffdb153633d3089c3badb45851`  
		Last Modified: Fri, 21 Jun 2019 20:30:41 GMT  
		Size: 1.1 KB (1142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-26-windowsservercore` - windows version 10.0.14393.3025; amd64

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
