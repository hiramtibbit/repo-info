## `openjdk:11-windowsservercore`

```console
$ docker pull openjdk@sha256:6210435ac0138b19ee0ef23f30eef5b1e18738dff714a67f4a0098d4fb8df25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64
	-	windows version 10.0.17134.523; amd64
	-	windows version 10.0.17763.253; amd64

### `openjdk:11-windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull openjdk@sha256:c3d2e2b097b94ea50a4adcd0c3bb27837d7bf77fae2ec9c1fba8839f80789f00
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5838605681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191f2b329642db3b8961a2a3dea06332327b091d1eda08d8e6c657c0b62f4002`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 10:40:05 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 11 Jan 2019 11:08:23 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 11 Jan 2019 11:09:36 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 18 Jan 2019 10:22:10 GMT
ENV JAVA_VERSION=11.0.2
# Fri, 18 Jan 2019 10:22:11 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/7/GPL/openjdk-11.0.2_windows-x64_bin.zip
# Fri, 18 Jan 2019 10:22:12 GMT
ENV JAVA_SHA256=74b13684729a249d32fd955fd1de2bec22e627f6a6a5894ca74f88c945c95f55
# Fri, 18 Jan 2019 10:24:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 18 Jan 2019 10:24:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3a08c54d06bafe75319fad9ebe015d3e16d44a6879a0a604dbb581cbb76dfd`  
		Last Modified: Fri, 11 Jan 2019 11:28:58 GMT  
		Size: 5.2 MB (5226451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc9e5c549fa49e721b8b9363cc2f1fb2bfc6a73c0721143a504eaf57b23a3d3`  
		Last Modified: Fri, 11 Jan 2019 11:39:06 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a75e619555c6fc6031410c390b3322db4af364b92a15d339255ea425a25f75b`  
		Last Modified: Fri, 11 Jan 2019 11:39:12 GMT  
		Size: 5.2 MB (5197765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f48ecf81ed2e02c5a7b63909562d8802002c419d82fe92fed56c96459ea0d2c`  
		Last Modified: Fri, 18 Jan 2019 10:42:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a5c4470a2a38ccb43e1e4034015975b6e8c6cb5a6d153d479aac72dc38ee62`  
		Last Modified: Fri, 18 Jan 2019 10:42:24 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0707c51cb1e79607843d2f6531cc7ee392a928d78f99aa073e9015534365beae`  
		Last Modified: Fri, 18 Jan 2019 10:42:24 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c3b255fb3d0c20ab3b97a48bab97e069792cda1c1080253157dac248e69cb3`  
		Last Modified: Fri, 18 Jan 2019 10:45:59 GMT  
		Size: 192.4 MB (192358155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2ec6c25423f1593b4d4439a2a16c9cbaa03b659d89befa5dc5b575ebfab9db`  
		Last Modified: Fri, 18 Jan 2019 10:42:24 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-windowsservercore` - windows version 10.0.16299.904; amd64

```console
$ docker pull openjdk@sha256:c6a27bae4f60ae7f32a5653f682a50f5e47845ee1d1a208fd3310acd8770bb9f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3344016042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ca901ca324044a926170e78858953d82f3d2efdf144c0ecc93cc49015554b5`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 10:46:05 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 11 Jan 2019 11:12:35 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 11 Jan 2019 11:13:19 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 18 Jan 2019 10:25:07 GMT
ENV JAVA_VERSION=11.0.2
# Fri, 18 Jan 2019 10:25:09 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/7/GPL/openjdk-11.0.2_windows-x64_bin.zip
# Fri, 18 Jan 2019 10:25:10 GMT
ENV JAVA_SHA256=74b13684729a249d32fd955fd1de2bec22e627f6a6a5894ca74f88c945c95f55
# Fri, 18 Jan 2019 10:27:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 18 Jan 2019 10:27:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70977a4f324a334bb094145e798f76dfe10b6cbbab23a590c3e085e6250fec6`  
		Last Modified: Fri, 11 Jan 2019 11:30:45 GMT  
		Size: 4.8 MB (4785398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd0f9bcef41531c08fe5328f291bb9c9b2b645472a174439a3298deb067c69c`  
		Last Modified: Fri, 11 Jan 2019 11:43:12 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b364e2acc05a0115f425467a19c5c3e3809c092a35372ab7eb0910111247946`  
		Last Modified: Fri, 11 Jan 2019 11:43:14 GMT  
		Size: 4.7 MB (4740163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b59f7fc59e1d07c23f626b66dc5bd90541691d0704caf78e9a11c8d51e0dd93`  
		Last Modified: Fri, 18 Jan 2019 10:46:30 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03111872527702dc86652e1060285376eab080d444af6d862284aec26b8069f6`  
		Last Modified: Fri, 18 Jan 2019 10:46:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ac016276bf70da740230a80dfd20c5207addcb89d86e3d7ff77e7a5925ae47`  
		Last Modified: Fri, 18 Jan 2019 10:46:30 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee486a083af77d1bd535a3bf382ff98795c7e7dc421ee5a4f6539a2711c4a20c`  
		Last Modified: Fri, 18 Jan 2019 10:50:18 GMT  
		Size: 187.4 MB (187427399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1877c77f58906dbecaeb8ce19f5e45fedbd6fe37691d989486d5e7c2ca1c79`  
		Last Modified: Fri, 18 Jan 2019 10:46:30 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-windowsservercore` - windows version 10.0.17134.523; amd64

```console
$ docker pull openjdk@sha256:c813a227942851efdb48b87966f0bb7742bc9d425803d64f3ce9c29c0098913d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2433648604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7571cbe8396e73c756df0dcc78bdd505f767add95a6cf572f02e6e08b8dbc0`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 10:50:29 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 11 Jan 2019 11:15:47 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 11 Jan 2019 11:16:15 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 18 Jan 2019 10:27:49 GMT
ENV JAVA_VERSION=11.0.2
# Fri, 18 Jan 2019 10:27:51 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/7/GPL/openjdk-11.0.2_windows-x64_bin.zip
# Fri, 18 Jan 2019 10:27:52 GMT
ENV JAVA_SHA256=74b13684729a249d32fd955fd1de2bec22e627f6a6a5894ca74f88c945c95f55
# Fri, 18 Jan 2019 10:29:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 18 Jan 2019 10:29:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22a20ec8993a1ae8419fb0ce687c2c852f0ba9e1f0839f0bed993eff642cae6`  
		Last Modified: Fri, 11 Jan 2019 11:31:43 GMT  
		Size: 4.7 MB (4680380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c69b7c833f8c3791c10b0731cecdf29c787578a77030866848787ad6171f9c6`  
		Last Modified: Fri, 11 Jan 2019 11:45:00 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473ddf59fdc2bc31b13c8ddb93de564ed5695f2dc491063634e361de66590d50`  
		Last Modified: Fri, 11 Jan 2019 11:45:00 GMT  
		Size: 293.3 KB (293316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f3a52da6986927f4a6104ef6765cf00dc71eef251b8e0535dc894442c1eff0`  
		Last Modified: Fri, 18 Jan 2019 10:50:50 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af40a37e88c63d795711173c32e1ff011d71515e6b623daf8b09484eadf6c8b`  
		Last Modified: Fri, 18 Jan 2019 10:50:49 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841c5968831cded692ba0923b208a7adc0eaa557b6497f261efb8b1bbabec51d`  
		Last Modified: Fri, 18 Jan 2019 10:50:50 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee913a69d18d8b0fdc9522bb19190c90f67da7efdba3ef7d7abd21eed8451093`  
		Last Modified: Fri, 18 Jan 2019 10:51:09 GMT  
		Size: 183.0 MB (182980564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295eaa0c819e77c14d44ef8e2e2162fca6762fb60f904294d7f97603a2335577`  
		Last Modified: Fri, 18 Jan 2019 10:50:50 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-windowsservercore` - windows version 10.0.17763.253; amd64

```console
$ docker pull openjdk@sha256:a6b5f194d8995501dc64bb7f94c9b616fb28a1de4828daa606e64e45a4aaec63
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (2037455199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:550f3774a07702ba72be02dc44525b5f642b4e28cbcfd618089f8493d9cb189d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809_RTM_amd64
# Wed, 02 Jan 2019 22:33:05 GMT
RUN Install update 1809_amd64
# Fri, 11 Jan 2019 12:21:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 18 Jan 2019 10:16:21 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 18 Jan 2019 10:30:01 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 18 Jan 2019 10:30:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 18 Jan 2019 10:30:28 GMT
ENV JAVA_VERSION=11.0.2
# Fri, 18 Jan 2019 10:30:30 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/7/GPL/openjdk-11.0.2_windows-x64_bin.zip
# Fri, 18 Jan 2019 10:30:31 GMT
ENV JAVA_SHA256=74b13684729a249d32fd955fd1de2bec22e627f6a6a5894ca74f88c945c95f55
# Fri, 18 Jan 2019 10:32:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 18 Jan 2019 10:32:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2ac060f1ef0656a73755234824c317294dcaf934c9f0933b1a3aa349d8e4fbf3`  
		Last Modified: Tue, 08 Jan 2019 19:21:17 GMT  
		Size: 315.3 MB (315326112 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:409ca3908f9b0e2af8c5b8e8e66b93a5b0b79aa380a8750859965d0017697547`  
		Last Modified: Fri, 11 Jan 2019 14:00:24 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb19289d6afe170c6e62cad97ceeb2ce669fc368b028de1cb3d0fd04f11b8248`  
		Last Modified: Fri, 18 Jan 2019 10:39:22 GMT  
		Size: 4.1 MB (4145682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28f681f2aeb432616ab63c4c1babbd61ce41e0734f3b5702ca9a582eda00492`  
		Last Modified: Fri, 18 Jan 2019 10:51:42 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad611d51898d119736d0555b8178fa7bea284ab5b6b11d6e2a19935eac0c4173`  
		Last Modified: Fri, 18 Jan 2019 10:51:42 GMT  
		Size: 313.6 KB (313577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46446af01c4b4aea82e392252586f8789120e7da43acfffd830c31ab76c128c2`  
		Last Modified: Fri, 18 Jan 2019 10:51:40 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f46fb7a535b8174d816878680a6ec310836158e88ce7bdfdf7103ee41e623`  
		Last Modified: Fri, 18 Jan 2019 10:51:40 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a6cf9beedb28ac4f60bbfe48d6ff5a2b59517e86a5fe1a0b7b48e4b8abf02e`  
		Last Modified: Fri, 18 Jan 2019 10:51:40 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1096c1a3ed86fe96cdc41d71b4da9d1b0541b3e9a4760edbfe1cc1a33efe9e99`  
		Last Modified: Fri, 18 Jan 2019 10:52:27 GMT  
		Size: 183.0 MB (182977252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa82a67cc9cc32c44fccb7bc061b49e1b45436519dadbf13919a2f024e99a0f7`  
		Last Modified: Fri, 18 Jan 2019 10:51:40 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
