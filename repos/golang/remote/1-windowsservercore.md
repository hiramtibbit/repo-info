## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:bc186393e5b312b18599b6f90f0fa16adc8e5616317f8bd94c14867aac54465e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2248; amd64
	-	windows version 10.0.16299.431; amd64

### `golang:1-windowsservercore` - windows version 10.0.14393.2248; amd64

```console
$ docker pull golang@sha256:108298f00c2c0f50432efce2554d1e6ba8f8fb0e15ebef0e6a88c39952196f82
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5639507542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d5ab3dd5d5c6fb986e435d4f011d8f38b12c5f2b069855df8c2622c1673ff1e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 09 Jun 2018 09:16:03 GMT
ENV GIT_VERSION=2.11.1
# Sat, 09 Jun 2018 09:16:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Sat, 09 Jun 2018 09:16:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Sat, 09 Jun 2018 09:16:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Sat, 09 Jun 2018 09:18:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Sat, 09 Jun 2018 09:18:05 GMT
ENV GOPATH=C:\gopath
# Sat, 09 Jun 2018 09:19:19 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 09 Jun 2018 09:19:20 GMT
ENV GOLANG_VERSION=1.10.3
# Sat, 09 Jun 2018 09:33:10 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 09 Jun 2018 09:33:12 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a09e7442740e5ebec7c16dc29125b36b6c6b46c0e9aa8f2931e38c2c3031dfb`  
		Last Modified: Sat, 09 Jun 2018 10:14:27 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335b6919d93e1499ee7504b32ce5e4b8d1222f8522b42db731a92c01462e61bd`  
		Last Modified: Sat, 09 Jun 2018 10:14:25 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0577a933c35a76b3e1e015cccc4d67e7489784b50a9f514b99666dd0d39bc6c`  
		Last Modified: Sat, 09 Jun 2018 10:14:26 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9e57b1281853959ef5ce2b4bb4aee00b67ffd6744b58fe9d99a315e0491d7`  
		Last Modified: Sat, 09 Jun 2018 10:14:23 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054d54453e7404543d021043123f22e1c173e6c8ef77e4ba03626d65dad50ef9`  
		Last Modified: Sat, 09 Jun 2018 10:14:37 GMT  
		Size: 29.4 MB (29416445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c4da3726757ab0e9c3767dffa4a22ab249669c0d3fece02ae4525b88ae43d`  
		Last Modified: Sat, 09 Jun 2018 10:14:20 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1c17edf1aa1b3e11ca0351c4d8df6327eb6daac8adcb7a38ef9079fb5fb507`  
		Last Modified: Sat, 09 Jun 2018 10:14:22 GMT  
		Size: 5.0 MB (4950540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8c64253a074b18d56ded84a5d01ab29765ff20e6c2542ebc83493582023213`  
		Last Modified: Sat, 09 Jun 2018 10:14:21 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2125341657eba5e8f3726ec2e2cf38ecfc78140826dd842a6aba18da5335c2a0`  
		Last Modified: Sat, 09 Jun 2018 10:16:05 GMT  
		Size: 139.8 MB (139777851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a71358aab0e88c39f69394c80bb380c0d3f2a33838cb1dcd7683ee397627c53`  
		Last Modified: Sat, 09 Jun 2018 10:14:20 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.16299.431; amd64

```console
$ docker pull golang@sha256:649fe559843db2a72907aa7da775dec23d4ecc947c7d294fb7a9ac9d6743ec5e
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3253484653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d512cb863b90e6b64cf593018684be6c5e0ddbfda2c770600a8ed5cbbc99414`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 09 Jun 2018 09:33:29 GMT
ENV GIT_VERSION=2.11.1
# Sat, 09 Jun 2018 09:33:29 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Sat, 09 Jun 2018 09:33:30 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Sat, 09 Jun 2018 09:33:31 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Sat, 09 Jun 2018 09:35:53 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Sat, 09 Jun 2018 09:35:54 GMT
ENV GOPATH=C:\gopath
# Sat, 09 Jun 2018 09:36:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 09 Jun 2018 09:36:46 GMT
ENV GOLANG_VERSION=1.10.3
# Sat, 09 Jun 2018 09:41:38 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 09 Jun 2018 09:41:40 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75748857d218add07e99ed1d75867f65c5c294cb1bf71a5e67dfc86df0b92ee4`  
		Last Modified: Sat, 09 Jun 2018 10:16:32 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d74f63c37276b0ea5dc7209f2c10baf56837fdf801d7a3ca7191ed1cd566b4`  
		Last Modified: Sat, 09 Jun 2018 10:16:31 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0eed83ecb53375fc44594a1059804a5a0f560d6de8430b374d8ab7b0f9353c0`  
		Last Modified: Sat, 09 Jun 2018 10:16:29 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3207ad993a04e3979560d44c033770aeb203e0f69bae9912820a1ee4a7bb24a8`  
		Last Modified: Sat, 09 Jun 2018 10:16:29 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49973c4621b3545e4bc046d97451e8973ac2c9068156037bc71eaa6fb6130ca`  
		Last Modified: Sat, 09 Jun 2018 10:16:43 GMT  
		Size: 29.1 MB (29088327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0cb63db5afabd804d695855ec58d021b160e08d7dd3fa887699ae28840d3bc`  
		Last Modified: Sat, 09 Jun 2018 10:16:26 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995311da59adf71da1ffebf03d64a23ee64e42976f455e18e30a5b6271e6d44b`  
		Last Modified: Sat, 09 Jun 2018 10:16:28 GMT  
		Size: 4.7 MB (4651925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22f9dfd86e108d80144db0023200366dba56ded6a42ddeb80a9edd06b152fd3`  
		Last Modified: Sat, 09 Jun 2018 10:16:27 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8d857661a286876db4e8612b07a51bb6883472b6959ff0e5c05cd3d4ec2c97`  
		Last Modified: Sat, 09 Jun 2018 10:18:09 GMT  
		Size: 139.5 MB (139489969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0e57fdd68ace38b73d35dc3d54ca8b3f8cbf51c16ca81bfff8ac73f82d3e1`  
		Last Modified: Sat, 09 Jun 2018 10:16:26 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
