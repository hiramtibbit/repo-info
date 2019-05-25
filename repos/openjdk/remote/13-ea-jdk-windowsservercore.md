## `openjdk:13-ea-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:0d1147cffbd720146450227c68520c811a3a7c2a8bb0383a2e93171227461688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64
	-	windows version 10.0.17134.766; amd64
	-	windows version 10.0.14393.2972; amd64

### `openjdk:13-ea-jdk-windowsservercore` - windows version 10.0.17763.504; amd64

```console
$ docker pull openjdk@sha256:12387d759a4d384e2b0a4006ec2f2314dde510351df4c8605fc80075a3140903
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2274730702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2028a40c3bef8d35adda79fb19d960dd6847e89a383369e917fba0f0275fb5ae`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 15:09:42 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 22 May 2019 15:09:44 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 22 May 2019 15:10:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 24 May 2019 23:16:14 GMT
ENV JAVA_VERSION=13-ea+22
# Fri, 24 May 2019 23:16:15 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/22/GPL/openjdk-13-ea+22_windows-x64_bin.zip
# Fri, 24 May 2019 23:16:17 GMT
ENV JAVA_SHA256=710888429ea792087a98d43a1a66b6329c2b810be5684494208f722559e731d0
# Fri, 24 May 2019 23:18:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 24 May 2019 23:18:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28e92a323e43831b1f9796007f4183088c802f6e230e1f364d5f0c98ae2f7da`  
		Last Modified: Wed, 22 May 2019 16:03:11 GMT  
		Size: 4.3 MB (4339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56fd04ec98e43969055eb53d1464ab7fb725bd4e6f234cb8b5939dc72788af2`  
		Last Modified: Wed, 22 May 2019 16:03:10 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad9fd681540709cb06382e9917e1103bf399d3d9dbda764a252a17b4a9729e8`  
		Last Modified: Wed, 22 May 2019 16:03:10 GMT  
		Size: 291.5 KB (291464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d8a3c2e5632736a56e8d1717548dc5c772a4b7d6a29fed8b81ff1b936e4b0c`  
		Last Modified: Fri, 24 May 2019 23:48:58 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8ec6270e0505e535ec47fbc487afb0d6c2bb93d479bbd4b9d7521544d6e289`  
		Last Modified: Fri, 24 May 2019 23:48:58 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1084e9985db4581b9b68c0be0e42e596d5112a809016e0259c86354fcab5d430`  
		Last Modified: Fri, 24 May 2019 23:48:58 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffef507e1a065dca42bcadcd910fb0eb6c41dfb97c5074f63a8e2da64eed5712`  
		Last Modified: Fri, 24 May 2019 23:49:26 GMT  
		Size: 191.0 MB (190965657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506c9303a3e7546ab28eb54977f644c88a372dd5c2afc713a6cfc206bdc5ec16`  
		Last Modified: Fri, 24 May 2019 23:48:58 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-jdk-windowsservercore` - windows version 10.0.17134.766; amd64

```console
$ docker pull openjdk@sha256:13c73d2fc0680864a0cc43a754cf7f6c6d4f146c497cee80b74e70c503e58a14
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2499529775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08387b82fdaa33fb0754cd9c36e81c81fc736b65bb967b0ecf9556c04fa0460e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 12:50:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 15:06:28 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 22 May 2019 15:06:30 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 22 May 2019 15:06:55 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 24 May 2019 23:19:04 GMT
ENV JAVA_VERSION=13-ea+22
# Fri, 24 May 2019 23:19:06 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/22/GPL/openjdk-13-ea+22_windows-x64_bin.zip
# Fri, 24 May 2019 23:19:07 GMT
ENV JAVA_SHA256=710888429ea792087a98d43a1a66b6329c2b810be5684494208f722559e731d0
# Fri, 24 May 2019 23:21:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 24 May 2019 23:21:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:437e42e2c79862963e84efa4879b7522ff44416964747070df92412c08b9d147`  
		Last Modified: Wed, 22 May 2019 13:23:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d16c06c6a7196fcdb374fc857f732b663b6b276b02f7c5551e6a45364157750`  
		Last Modified: Wed, 22 May 2019 16:01:57 GMT  
		Size: 4.8 MB (4769119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3051b5b9d69a5aa6a20082a780650a256b00c97a11e35fe6aab83f87c5299c01`  
		Last Modified: Wed, 22 May 2019 16:01:55 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba47d338939684b6a0ebeb820a050eb26f7f70d8b13c54131c5312e82550b766`  
		Last Modified: Wed, 22 May 2019 16:01:56 GMT  
		Size: 315.7 KB (315694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a619e524fafb9164429e40ef03bd90da5eb43a875ff67e116db7c1e5ab287452`  
		Last Modified: Fri, 24 May 2019 23:50:00 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c16cde9d0b668f617fce0b2136e4515fab3b970b57922fad2ac01fb2fe2e7b4`  
		Last Modified: Fri, 24 May 2019 23:50:00 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84f1c9173b3285d0e9587dec116b2afcffc8008a386f33e3346a543dd1bff3b`  
		Last Modified: Fri, 24 May 2019 23:50:00 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30548938b0a5eb9b34d2fb1c37beb3d53890122918df13a567006dc5e42fb333`  
		Last Modified: Fri, 24 May 2019 23:50:28 GMT  
		Size: 191.0 MB (190981116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4599f470df127a2730f557d356b3245f2a3cb4257c1ce6da36cb296a12116bf2`  
		Last Modified: Fri, 24 May 2019 23:50:00 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-jdk-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull openjdk@sha256:83d9d93acca22ea4d12ae1bebfadbd55d01ec666814f3b11628f8975d2d4f327
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5906044903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0903670b51e41081c29ee574535efeb67b3226d0011db2792ce476c73fc1a776`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 12:40:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 15:01:09 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 22 May 2019 15:01:11 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 22 May 2019 15:02:15 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 24 May 2019 23:21:33 GMT
ENV JAVA_VERSION=13-ea+22
# Fri, 24 May 2019 23:21:34 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/22/GPL/openjdk-13-ea+22_windows-x64_bin.zip
# Fri, 24 May 2019 23:21:35 GMT
ENV JAVA_SHA256=710888429ea792087a98d43a1a66b6329c2b810be5684494208f722559e731d0
# Fri, 24 May 2019 23:24:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 24 May 2019 23:24:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:238abb146382d28000f03a82c40be99cbfac99a1480f9d23f8a6420cafc6b083`  
		Last Modified: Wed, 22 May 2019 13:21:05 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da2d9acb15b1491a16d4e5f0a8fd1529c62b2f21b6f42cff507fd300be47976`  
		Last Modified: Wed, 22 May 2019 16:00:49 GMT  
		Size: 5.2 MB (5216709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea951528d33f80f4e33a9f7a19f1dac91e073328ed296d057bc566ff3c55cb`  
		Last Modified: Wed, 22 May 2019 16:00:46 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa274753582b784d44730714118e69b557fdd4ac6425dd225397a4a854ba419e`  
		Last Modified: Wed, 22 May 2019 16:00:52 GMT  
		Size: 5.2 MB (5192749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6334ebb9d8ac5c8739242ffe15f7bb35f9d5ca5d70aa499f1bbf4e8e7cffa8d`  
		Last Modified: Fri, 24 May 2019 23:51:03 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f8723da66ad9116d409d35fdd3b238153abf42201d9f90eaba7e8571b8cf7c`  
		Last Modified: Fri, 24 May 2019 23:51:03 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31e2d2bbdc9767100e366a5d7286b3b2ee86afd4e5ab946eea53a6e793596fd`  
		Last Modified: Fri, 24 May 2019 23:51:03 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfa7adb1db4081fd87732ee7c8f7aa2aa9c52c8a6df2535ee972933231c8102`  
		Last Modified: Fri, 24 May 2019 23:51:27 GMT  
		Size: 195.8 MB (195840140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6ae426867809eaa7ce3431b7df0884ffba1513a13e9f978ec9461842724c45`  
		Last Modified: Fri, 24 May 2019 23:51:03 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
