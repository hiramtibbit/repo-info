## `openjdk:12-windowsservercore`

```console
$ docker pull openjdk@sha256:4be227115853696448a86b0475ea9745737bd9ea1feb09a56cc4c9a2ed06041f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `openjdk:12-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull openjdk@sha256:9dce324adc8a1ead22505741cc3e9d7daf66a0e0d710149834f1602777590eda
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5849696543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba3d70965836df89bce56db46288268cf76de8d9405072166da2e05d53f5824`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 00:17:15 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 12 Apr 2019 00:34:52 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 12 Apr 2019 00:36:08 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 12 Apr 2019 00:36:09 GMT
ENV JAVA_VERSION=12
# Fri, 12 Apr 2019 00:36:11 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/GPL/openjdk-12_windows-x64_bin.zip
# Fri, 12 Apr 2019 00:36:13 GMT
ENV JAVA_SHA256=35a8d018f420fb05fe7c2aa9933122896ca50bd23dbd373e90d8e2f3897c4e92
# Fri, 12 Apr 2019 00:38:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 12 Apr 2019 00:38:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e6721de712ffa461cc39978199d76951056103df05dcc38d1919d7cce16392`  
		Last Modified: Fri, 12 Apr 2019 01:44:03 GMT  
		Size: 5.2 MB (5222055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b3f745e2b0986b1cedd4afb61c64135d20f28c8accd9511c0d85def43c8c19`  
		Last Modified: Fri, 12 Apr 2019 01:49:00 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277307dad0e90371fa6b5904674377c70cafb34fbf0cb50c88b3e8d6b47881a7`  
		Last Modified: Fri, 12 Apr 2019 01:49:02 GMT  
		Size: 5.2 MB (5200982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc7060eed96f1882b17b9618496801c7b351aa19de5d23f95a8be3dcec733f2`  
		Last Modified: Fri, 12 Apr 2019 01:48:57 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e957d4be62857e488b6c39a8a2b370d8fcb0b2aea75dad0e7f031ef20200c8`  
		Last Modified: Fri, 12 Apr 2019 01:48:57 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426c0b0830839ea878bd1f4833350f7a3f2ae785645500b0f375536f8590f7fc`  
		Last Modified: Fri, 12 Apr 2019 01:48:57 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a518bf39be7dbcba6797d56d76521bfb880a7b3a5f271e33687693033f101c7`  
		Last Modified: Fri, 12 Apr 2019 01:49:52 GMT  
		Size: 196.9 MB (196896529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c05329263528b951d8b1e4043325aab7bd719efbdf9fafc54f478fed16675f`  
		Last Modified: Fri, 12 Apr 2019 01:48:58 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull openjdk@sha256:285472dcc74a6e94b0c040dcee4a7e67fcd12a3ac48d112daa4b341b68c7d0c7
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2453294144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80890f4c13003b8eff1ec56c8670f07febb50196389b820c9773a8b531aee6e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 00:26:53 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 12 Apr 2019 00:42:35 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 12 Apr 2019 00:43:15 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 12 Apr 2019 00:43:16 GMT
ENV JAVA_VERSION=12
# Fri, 12 Apr 2019 00:43:18 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/GPL/openjdk-12_windows-x64_bin.zip
# Fri, 12 Apr 2019 00:43:19 GMT
ENV JAVA_SHA256=35a8d018f420fb05fe7c2aa9933122896ca50bd23dbd373e90d8e2f3897c4e92
# Fri, 12 Apr 2019 00:45:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 12 Apr 2019 00:45:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3b0617bf0f6da87ada2e9f02f200964baa7b01bf5d29da578c7cb577f85d86`  
		Last Modified: Fri, 12 Apr 2019 01:45:54 GMT  
		Size: 4.7 MB (4725816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fe8163eacaf484ea2a9030ec13832fc212d47d4ef3492e861ebc040b3a73b3`  
		Last Modified: Fri, 12 Apr 2019 01:51:15 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c14abea177d38e418fdb4cff7f5288da04a42a5bde1493470849d709d71bcb`  
		Last Modified: Fri, 12 Apr 2019 01:51:15 GMT  
		Size: 296.0 KB (296022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e736dd5022f3d814acda9187e1c6bd65c0f11e2372d0c454ec6533fe9b27c21`  
		Last Modified: Fri, 12 Apr 2019 01:51:13 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83613973b5a737137e9ab2a01bb8e6b939e642608b703de32c86010eeffca4bd`  
		Last Modified: Fri, 12 Apr 2019 01:51:13 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edeb08e7a01aa68ff8e0672a89279543664fcdb8bf1aa421a2b362025bbb9ce`  
		Last Modified: Fri, 12 Apr 2019 01:51:13 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87c7f3ef5542bde37daa53cc0b398f011573ab57abdd4872f4cec4c4dbd4404`  
		Last Modified: Fri, 12 Apr 2019 01:51:35 GMT  
		Size: 191.9 MB (191914465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c0d5a5b362a14b352affe5942748c472c0c32c080feeb66cdf4e12340b2ef`  
		Last Modified: Fri, 12 Apr 2019 01:51:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-windowsservercore` - windows version 10.0.17763.437; amd64

```console
$ docker pull openjdk@sha256:cdbd976f4757c94e4d9880a28d912f41a95000bf212a1da01283c536aba1eb61
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2170456601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1e187ea4b19a445bb77886f283a9c507d302de725d6cfdd53194098bc29a03f`
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
# Fri, 12 Apr 2019 00:45:55 GMT
ENV JAVA_VERSION=12
# Fri, 12 Apr 2019 00:45:56 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/GPL/openjdk-12_windows-x64_bin.zip
# Fri, 12 Apr 2019 00:45:58 GMT
ENV JAVA_SHA256=35a8d018f420fb05fe7c2aa9933122896ca50bd23dbd373e90d8e2f3897c4e92
# Fri, 12 Apr 2019 00:47:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 12 Apr 2019 00:47:46 GMT
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
	-	`sha256:6e7834769611d98e91d1c0a0a1b754206ff3da69c423bf121f5315b188ec77e8`  
		Last Modified: Fri, 12 Apr 2019 01:51:55 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2ca23dcc20c2240549d0a85f76892e74aec09b8091f2bd7fd31a403f48efb2`  
		Last Modified: Fri, 12 Apr 2019 01:51:55 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51cf8d439a1916522b3db6e6a220151a4443bac3a21cec63073cc8a48f14ca3`  
		Last Modified: Fri, 12 Apr 2019 01:51:56 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a4b19976e82c0d4c62fee64335311dba86c469a73724fdc6eaa09da566f43c`  
		Last Modified: Fri, 12 Apr 2019 01:52:33 GMT  
		Size: 191.9 MB (191932577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb5dd5ee4cf7ca8e3f1c3cfc978c22a3e768c0046837ed3d5d1a882712710ed`  
		Last Modified: Fri, 12 Apr 2019 01:51:56 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
