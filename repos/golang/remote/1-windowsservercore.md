## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:5894a64ae5dcd69078ce04ac49a905a54224cf932ec8f7eebbd9778af16dfc2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64
	-	windows version 10.0.17134.228; amd64

### `golang:1-windowsservercore` - windows version 10.0.14393.2430; amd64

```console
$ docker pull golang@sha256:e1dd096ecc1e89b9ed26caf440c201ea3dfec4631f3f9682e8e51bb0b202185c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5686434724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d94cf3c79d6b10aa5aa44164cb86359dab023513c5fd7d3d10bd36a0870fa7e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Aug 2018 10:30:21 GMT
ENV GIT_VERSION=2.11.1
# Thu, 23 Aug 2018 10:30:22 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 23 Aug 2018 10:30:23 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 23 Aug 2018 10:30:24 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 23 Aug 2018 10:32:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 10:32:13 GMT
ENV GOPATH=C:\gopath
# Thu, 23 Aug 2018 10:33:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 27 Aug 2018 22:24:34 GMT
ENV GOLANG_VERSION=1.11
# Mon, 27 Aug 2018 22:31:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '29f9291270f0b303d0b270f993972ead215b1bad3cc674a0b8a09699d978aeb4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 27 Aug 2018 22:31:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b679707990911db06e417ee415391ab49bbc2ffcf1de2567c03bfe49f886aa`  
		Last Modified: Thu, 23 Aug 2018 11:55:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e3bcd827afbf10c585f5f3c94755187d50391b4562c6c29b65c6f5f33991c2`  
		Last Modified: Thu, 23 Aug 2018 11:55:19 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1546d3d7838915c43d1426749344b49f04378aea046c6153eaa3028227176883`  
		Last Modified: Thu, 23 Aug 2018 11:55:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f358492519165911ca86c3ca8e162e66d40ac5b489716979cd8012271df746a8`  
		Last Modified: Thu, 23 Aug 2018 11:55:17 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7946f07b69c61143eddb456d7f12d81e4c0ee1e9400b89450d680a13ebc2b7a`  
		Last Modified: Thu, 23 Aug 2018 11:55:31 GMT  
		Size: 29.5 MB (29458229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe6089d5b9e99a950ab9dbdaa757a13d23f6716a85566dc5fc6f6fa705b1f38`  
		Last Modified: Thu, 23 Aug 2018 11:55:14 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3f9a33f61ee1a3cf5c3e9d36f9f0e5ae233c869ca4ea267e88ab4b8c5c1800`  
		Last Modified: Thu, 23 Aug 2018 11:55:16 GMT  
		Size: 5.0 MB (4991074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4298481ac139eb44661a9c6aff3f536573dfe7a75ff0c8f33207cc9dbccad80a`  
		Last Modified: Mon, 27 Aug 2018 23:13:49 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf92701fd8b4498c94cd0d92eaf003371e27b19cccf8178c2ef6107e40b1d20c`  
		Last Modified: Mon, 27 Aug 2018 23:15:27 GMT  
		Size: 140.1 MB (140084723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428fc9ae950155bb5db2f056071883824189e60cc93e6fe4ee59d0e1c99feb95`  
		Last Modified: Mon, 27 Aug 2018 23:13:49 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.16299.611; amd64

```console
$ docker pull golang@sha256:670d871bf44ea20650b103aeb7de1cd31c1362805448b5407b3f44d7d875cae9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3281367467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01a7659725712d182a581bf175c8e2ead5e04b852e5ba9231686005e1eb0ca8a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Aug 2018 10:41:07 GMT
ENV GIT_VERSION=2.11.1
# Thu, 23 Aug 2018 10:41:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 23 Aug 2018 10:41:09 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 23 Aug 2018 10:41:10 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 23 Aug 2018 10:42:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 10:42:38 GMT
ENV GOPATH=C:\gopath
# Thu, 23 Aug 2018 10:43:34 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 27 Aug 2018 22:31:33 GMT
ENV GOLANG_VERSION=1.11
# Mon, 27 Aug 2018 22:37:49 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '29f9291270f0b303d0b270f993972ead215b1bad3cc674a0b8a09699d978aeb4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 27 Aug 2018 22:37:50 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c12058357a053c6542d38c7a21e113d4ce7a615e5eb4f8807c4230d1b4031ea`  
		Last Modified: Thu, 23 Aug 2018 11:57:33 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd90e596423afd7a8f1e01b0a8d2d231f19b6e640f1c5e4b5de7c49e597ad7d7`  
		Last Modified: Thu, 23 Aug 2018 11:57:32 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54632cb246968a723c80e586ff81c81da034144191691b10cbaa26ceb8dbf4a0`  
		Last Modified: Thu, 23 Aug 2018 11:57:30 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf35363b2dd3eb1a4bb0e62d2db26a4a2defa6ca083a9dee30f73056e80d028`  
		Last Modified: Thu, 23 Aug 2018 11:57:29 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3cff204ef4c60216860767897bfa56b59ae3014ac7e76295086bba5e8cefd2`  
		Last Modified: Thu, 23 Aug 2018 11:57:42 GMT  
		Size: 29.2 MB (29161634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa232763dbc5580f4156b40c2519f368a45b93a7d91097d45474e894e1dbae2d`  
		Last Modified: Thu, 23 Aug 2018 11:57:25 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6d57d06ca4925eb2814abf9499002d83469fa132f97689c46663f159390605`  
		Last Modified: Thu, 23 Aug 2018 11:57:28 GMT  
		Size: 4.7 MB (4726635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224b47180770397003a91dcb53a06c4bcc73dbb02303d4cc78a49203693452e6`  
		Last Modified: Mon, 27 Aug 2018 23:15:47 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76cdd4b407a878dcf3f4f22bca9ca3dc7b2a3ffdd5dd76acfdf768a161dc8e6`  
		Last Modified: Mon, 27 Aug 2018 23:17:23 GMT  
		Size: 135.3 MB (135333758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55aabc3a120fb241d8813a57506a15a5b1bdf52b05c471c57813ea43229aea77`  
		Last Modified: Mon, 27 Aug 2018 23:15:47 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.17134.228; amd64

```console
$ docker pull golang@sha256:9c881428a050e700da1685f0a90042ddba5103e8d1dbf95a78816ec29da1fde3
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2350053749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27067935a54f5c7b20679280045d46aa02fc1a6eda79d4a48835c02915b5b65`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:21:55 GMT
RUN Install update 10.0.17134.228
# Thu, 23 Aug 2018 10:50:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Aug 2018 10:50:23 GMT
ENV GIT_VERSION=2.11.1
# Thu, 23 Aug 2018 10:50:24 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 23 Aug 2018 10:50:25 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 23 Aug 2018 10:50:26 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 23 Aug 2018 10:52:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 10:52:12 GMT
ENV GOPATH=C:\gopath
# Thu, 23 Aug 2018 10:53:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 27 Aug 2018 22:38:02 GMT
ENV GOLANG_VERSION=1.11
# Mon, 27 Aug 2018 22:44:12 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '29f9291270f0b303d0b270f993972ead215b1bad3cc674a0b8a09699d978aeb4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 27 Aug 2018 22:44:14 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd59519ea2c2d73a5cba6e562d012a127d08d86dfc5067535eef141406c3750b`  
		Last Modified: Mon, 13 Aug 2018 19:10:18 GMT  
		Size: 530.1 MB (530108736 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:595cc1655e57da5d50a2e822ee129ee8e86e86e5873f2d763a68fae6b3990104`  
		Last Modified: Thu, 23 Aug 2018 11:59:45 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6d2b299c84ae2e198fb2b867116f6839b0e1caf9b096c955bd800645c3afad`  
		Last Modified: Thu, 23 Aug 2018 11:59:45 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f3e4f4392aedec4db7eded9a3a921914ab0825445dd1aaf24324b1c856aacc`  
		Last Modified: Thu, 23 Aug 2018 11:59:42 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60530ba8dc94c45f62a432fcdb659a12f8eb409a141f67f77dd4cb7db11ff55a`  
		Last Modified: Thu, 23 Aug 2018 11:59:41 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4222224cd6691d2bca899f785e6348ac7457df577c6d3183d5f205519e23d1`  
		Last Modified: Thu, 23 Aug 2018 11:59:42 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9285900c73b0e42d1f15038b5940d3045dcaf2af5f984343a06e9df1b56c703b`  
		Last Modified: Thu, 23 Aug 2018 11:59:56 GMT  
		Size: 29.0 MB (29026371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63186bdf69850e38a987b556a2216cb9afb81c15f48fd361475351f188d9e76c`  
		Last Modified: Thu, 23 Aug 2018 11:59:38 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e416a24534076d63b3e6fd0c30a55aeb81ce3a198bc149bdf919c6770f4b9b6a`  
		Last Modified: Thu, 23 Aug 2018 11:59:39 GMT  
		Size: 308.1 KB (308130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045038b4c52ba8376ec107e4d3ffe44a93c960db8e5e6d39be8ad435cacd7c08`  
		Last Modified: Mon, 27 Aug 2018 23:17:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2272687bb9407f63f2968cd82a392b815b844199149f810032e41be6337ef578`  
		Last Modified: Mon, 27 Aug 2018 23:19:15 GMT  
		Size: 130.9 MB (130912513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63f54ba8917e6bc8ed491bbd2d32f180d4ec96e5410f7c7857e7422e466ea6`  
		Last Modified: Mon, 27 Aug 2018 23:17:44 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
