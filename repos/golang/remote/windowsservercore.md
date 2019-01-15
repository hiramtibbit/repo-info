## `golang:windowsservercore`

```console
$ docker pull golang@sha256:21957ffed777cdf3364b31535b3a7dfc50fdd45ac46e5c1f01b9047bd73ba5cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64
	-	windows version 10.0.17134.523; amd64
	-	windows version 10.0.17763.253; amd64

### `golang:windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull golang@sha256:e5941c3060b40360aba37e9f6181cc3e1806a5e30d668c26f6d218548f44ea13
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5810408202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd38a14f62bed25426a79eeb3844eae886c860ef81ca61102fdd0f851bdca73`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 11:55:13 GMT
ENV GIT_VERSION=2.11.1
# Fri, 11 Jan 2019 11:55:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 11 Jan 2019 11:55:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 11 Jan 2019 11:55:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 11 Jan 2019 11:56:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 11:56:46 GMT
ENV GOPATH=C:\gopath
# Fri, 11 Jan 2019 11:57:58 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 11 Jan 2019 13:05:40 GMT
ENV GOLANG_VERSION=1.11.4
# Fri, 11 Jan 2019 13:12:19 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'eeb20e21702f2b9469d9381df5de85e2f731b64a1f54effe196d0f7d0227fe14'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 13:12:21 GMT
WORKDIR C:\gopath
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
	-	`sha256:21e61af345295efea8e59cccf803b343c407ce77a198d68056833235a3adcfc4`  
		Last Modified: Fri, 11 Jan 2019 13:54:21 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1d2d63737b52c3eee42a2de1888453e8f27bae070f6dd869c538f54ea18aef`  
		Last Modified: Fri, 11 Jan 2019 13:54:19 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45962e33b2d3de9ba79b048db3aa0158c69e6b60fd5c498fd3595551e48ea846`  
		Last Modified: Fri, 11 Jan 2019 13:54:18 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d677e9f5e722cbc5d32c6e998b76402d52613124d3754b812152193c1c2b213`  
		Last Modified: Fri, 11 Jan 2019 13:54:17 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b6562e3ce3395a2de0eeeda2a439f7f50c96374be711fe3ae90c4560340cec`  
		Last Modified: Fri, 11 Jan 2019 13:54:30 GMT  
		Size: 29.6 MB (29630483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0924b343b4dadd57ed6d7033af0b3f2f5b8c74544b3d2fe9c2a47792ec9d6397`  
		Last Modified: Fri, 11 Jan 2019 13:54:14 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c4801d95116c9b1de47576071deca0cdbf3c1d6729343b9ab5edb9a751b22c`  
		Last Modified: Fri, 11 Jan 2019 13:54:16 GMT  
		Size: 5.2 MB (5162103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c25c09cac6bbb4f5f7c754bbc4286cd17691d8c7409a55befedf83c95b65288`  
		Last Modified: Fri, 11 Jan 2019 14:03:55 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5b8af209213bc04081a65cff221205752321244d44ec83c89728f9eff67bf0`  
		Last Modified: Fri, 11 Jan 2019 14:05:27 GMT  
		Size: 139.8 MB (139789728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efab3c17addf67f342c4c7aa9860769b4fae2cebb857e03c069555aa1e60d5c`  
		Last Modified: Fri, 11 Jan 2019 14:03:56 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.16299.904; amd64

```console
$ docker pull golang@sha256:c43cb1ab627d903159282d454ecb6392abeab26428f81c4adfc5bc0bfac61f71
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3315872766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3e3ce718e4ab0e1b3b93de97927b15d90a84e732c4b9ebf54383e08899e6fa`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 12:04:42 GMT
ENV GIT_VERSION=2.11.1
# Fri, 11 Jan 2019 12:04:43 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 11 Jan 2019 12:04:44 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 11 Jan 2019 12:04:45 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 11 Jan 2019 12:06:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 12:06:14 GMT
ENV GOPATH=C:\gopath
# Fri, 11 Jan 2019 12:07:01 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 11 Jan 2019 13:12:38 GMT
ENV GOLANG_VERSION=1.11.4
# Fri, 11 Jan 2019 13:18:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'eeb20e21702f2b9469d9381df5de85e2f731b64a1f54effe196d0f7d0227fe14'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 13:18:57 GMT
WORKDIR C:\gopath
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
	-	`sha256:edf22818b48886e706c04d4997f6bb3e3237b0b22d3782d336ee2bd3aac94b5d`  
		Last Modified: Fri, 11 Jan 2019 13:56:20 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803ed0a689b710574b00e5d6a2c0950b96a0fc7a9ac68a4d52e74404cc1c228c`  
		Last Modified: Fri, 11 Jan 2019 13:56:20 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041c9b670eafa93786f2c9b92e143ac52239efd6110de01a2ec54a83e5ebaeab`  
		Last Modified: Fri, 11 Jan 2019 13:56:16 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18de6d810b2c1a7b231514c300057b01601eed576a378265a9c80d5f389f06c9`  
		Last Modified: Fri, 11 Jan 2019 13:56:16 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7985d67fdc81492a175d153ced87260249c7c24fae512ddef866d916257bd35f`  
		Last Modified: Fri, 11 Jan 2019 13:56:29 GMT  
		Size: 29.2 MB (29190445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5a4bf19336280daa5f7609ec75e75d37ef2746c65ac139ac4a6f2ba5c0c654`  
		Last Modified: Fri, 11 Jan 2019 13:56:13 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59eda821899f63b0195789a63da50294c34673d9bad261467918035c69b1007`  
		Last Modified: Fri, 11 Jan 2019 13:56:16 GMT  
		Size: 4.7 MB (4739394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e304454e99a4f786197340e3a9a9f4aac995a4a766a7492be9e809c79d23c3`  
		Last Modified: Fri, 11 Jan 2019 14:05:45 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14020752416453d32e047a1bed0ff7994dcdfe5257045ec19f17906eeaefccc`  
		Last Modified: Fri, 11 Jan 2019 14:07:14 GMT  
		Size: 134.9 MB (134877307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be84297d59303e009c9149e916343ecb6eeae95c803852e418502469dad35598`  
		Last Modified: Fri, 11 Jan 2019 14:05:45 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.17134.523; amd64

```console
$ docker pull golang@sha256:4b910740ce23b48edb9431c9632ea6426ee69d71ffb679ad47f0e9b2820f4dae
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2405512472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160eb82f5f28a360d95bd74bdd36fa9ef2d2f3ef3a7d2a4c46cb1571e4d667ba`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 12:13:26 GMT
ENV GIT_VERSION=2.11.1
# Fri, 11 Jan 2019 12:13:28 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 11 Jan 2019 12:13:29 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 11 Jan 2019 12:13:30 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 11 Jan 2019 12:15:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 12:15:02 GMT
ENV GOPATH=C:\gopath
# Fri, 11 Jan 2019 12:15:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 11 Jan 2019 13:19:07 GMT
ENV GOLANG_VERSION=1.11.4
# Fri, 11 Jan 2019 13:24:57 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'eeb20e21702f2b9469d9381df5de85e2f731b64a1f54effe196d0f7d0227fe14'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 13:24:59 GMT
WORKDIR C:\gopath
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
	-	`sha256:b934d5ab5fbb50fd3e1b560b03c3b24f11a3c0e1bdd399c7850a968865cf32c9`  
		Last Modified: Fri, 11 Jan 2019 13:58:19 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382c299400df1a200890f5a84fc62163f3f8e943a072bd6421aaa61059bd2079`  
		Last Modified: Fri, 11 Jan 2019 13:58:17 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db751b50c2dd2a9c08bfc757c5cd3458cd2c00c8ae8d14d81d147578a9959940`  
		Last Modified: Fri, 11 Jan 2019 13:58:16 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378165ec9af35fb940c4f0a761b79321fd79e07d4763ccb6d2244affa4a17c8d`  
		Last Modified: Fri, 11 Jan 2019 13:58:16 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ec26d45f5823ec286db921c11ddba3b7831906d2b72703c9d1975495f46bf1`  
		Last Modified: Fri, 11 Jan 2019 13:58:27 GMT  
		Size: 29.1 MB (29085541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba465b29c021e982d324f2a2ed0e5262fd741bf1ae40d91eb851fc2c71f39b0e`  
		Last Modified: Fri, 11 Jan 2019 13:58:13 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ed7086c4b5e96a2b45161a28bdbab57c4c107fc255a09a8b7fccb7b476b80b`  
		Last Modified: Fri, 11 Jan 2019 13:58:13 GMT  
		Size: 295.2 KB (295179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cc9e697559c6f93cc626de0262223955daca0f5469b153036a3e34b1618e0`  
		Last Modified: Fri, 11 Jan 2019 14:07:33 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2af0791fca3f7cf8e16af1417f01379a953ee2b4e40e92031334b3092129127`  
		Last Modified: Fri, 11 Jan 2019 14:09:02 GMT  
		Size: 130.4 MB (130434832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7d5c983ce5118e3aec570c929a83616e08665ea6f483f77f7beae1e13df491`  
		Last Modified: Fri, 11 Jan 2019 14:07:33 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.17763.253; amd64

```console
$ docker pull golang@sha256:1b460cb991ecaab37380b80aa26197074fdcdd96550b48cbfed04ee669499be8
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (2009338654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8288d8408a1536c9b48756cf1c0a063595700e84ee6514ea37140b5ce4fbb55a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809_RTM_amd64
# Wed, 02 Jan 2019 22:33:05 GMT
RUN Install update 1809_amd64
# Fri, 11 Jan 2019 12:21:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 12:21:26 GMT
ENV GIT_VERSION=2.11.1
# Fri, 11 Jan 2019 12:21:27 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 11 Jan 2019 12:21:29 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 11 Jan 2019 12:21:30 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 11 Jan 2019 12:22:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 12:22:44 GMT
ENV GOPATH=C:\gopath
# Fri, 11 Jan 2019 12:23:12 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 11 Jan 2019 13:25:05 GMT
ENV GOLANG_VERSION=1.11.4
# Fri, 11 Jan 2019 13:30:47 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'eeb20e21702f2b9469d9381df5de85e2f731b64a1f54effe196d0f7d0227fe14'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 13:30:49 GMT
WORKDIR C:\gopath
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
	-	`sha256:05c8e42e8c407967d0a217f6d85613cd4f05f30d0e8b37d0f12268ae33de1c02`  
		Last Modified: Fri, 11 Jan 2019 14:00:23 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39532532c4de7b860f3695dcd6ad5523b2b85734bd24ec9ee383db37d4d4954`  
		Last Modified: Fri, 11 Jan 2019 14:00:21 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa97f71daaac47123c4a81618bd3ec0341809b2835e5ec5870c6171ffb4c72`  
		Last Modified: Fri, 11 Jan 2019 14:00:21 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a99d3cca2b432f8ee688708adb2436dc74622dcf580104029bc8755ec760156`  
		Last Modified: Fri, 11 Jan 2019 14:00:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bc325317936d55c40376cc3cf1bfca7963d4136fbe86c78b3fd8c3e6fbba2e`  
		Last Modified: Fri, 11 Jan 2019 14:00:32 GMT  
		Size: 28.5 MB (28542533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7d996a4bf197348e2d84cb5fbf47028a93b646df0d382574ff7538712c7c9f`  
		Last Modified: Fri, 11 Jan 2019 14:00:17 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e248d960d69056cb868f8d15ee6f4d85062b7436eb319cacedc68f33aecd2a2`  
		Last Modified: Fri, 11 Jan 2019 14:00:18 GMT  
		Size: 315.0 KB (314999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87723d90b848e3328aaa5921487c35552e71d50b4cae8b40d4ae2374b0bb62ff`  
		Last Modified: Fri, 11 Jan 2019 14:09:21 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0851883a4fe95d100c1dbef557d187881e8a20d6bfeae84647f3851912d4cb6b`  
		Last Modified: Fri, 11 Jan 2019 14:11:23 GMT  
		Size: 130.5 MB (130459861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf9ba83111c147bec1af701cc47d02e496dfd142db836bec6c00c963e61eb86`  
		Last Modified: Fri, 11 Jan 2019 14:09:21 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
