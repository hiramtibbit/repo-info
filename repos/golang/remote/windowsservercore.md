## `golang:windowsservercore`

```console
$ docker pull golang@sha256:3b3046fd9abc4b3a247de26962874b1554b91c6375e79210ada71526695b750a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64
	-	windows version 10.0.16299.726; amd64
	-	windows version 10.0.17134.345; amd64

### `golang:windowsservercore` - windows version 10.0.14393.2551; amd64

```console
$ docker pull golang@sha256:d8502078f39227733797554b08b224d8d3268bd0b113d302f5e808b90a490333
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5771145119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34a1e694cc9bb52500181d991491ba5688e20a15a13047e7f5f32dab09da326`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Wed, 10 Oct 2018 09:36:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 03 Nov 2018 09:16:23 GMT
ENV GIT_VERSION=2.11.1
# Sat, 03 Nov 2018 09:16:25 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Sat, 03 Nov 2018 09:16:26 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Sat, 03 Nov 2018 09:16:27 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Sat, 03 Nov 2018 09:18:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Sat, 03 Nov 2018 09:18:39 GMT
ENV GOPATH=C:\gopath
# Sat, 03 Nov 2018 09:19:55 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 03 Nov 2018 09:19:57 GMT
ENV GOLANG_VERSION=1.11.2
# Sat, 03 Nov 2018 09:26:59 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '086c59df0dce54d88f30edd50160393deceb27e73b8d6b46b9ee3f88b0c02e28'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 03 Nov 2018 09:27:01 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d41004b1d809eac4e77c97920984b278977d36627024ab085d0dd8ccc941ddeb`  
		Last Modified: Wed, 10 Oct 2018 10:08:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116fc1cd0a170c6f879fba1d94f15ead46450a2559fef19931bfc0a382368cdd`  
		Last Modified: Sat, 03 Nov 2018 10:18:21 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5046a60f6d072108402da028e501d217332619e8286d0ce489bc6cd93a3c0b5d`  
		Last Modified: Sat, 03 Nov 2018 10:18:20 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd28067df5e0f99b740d89e68efa98f2083fc75d3b3b19b069a281bb9899fad`  
		Last Modified: Sat, 03 Nov 2018 10:18:18 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981ae300beee722167a45cab1736fd3547bb8e12eb6ef2cfed7baf19adca67ce`  
		Last Modified: Sat, 03 Nov 2018 10:18:18 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f9338888ca61514a8dfb9784a0ca98c6c654696524425a4e13549eaf3a8a41`  
		Last Modified: Sat, 03 Nov 2018 10:18:33 GMT  
		Size: 29.5 MB (29508513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccadb18c88560382d72cea1e87f160c1e45c5cfdbeb760a81d6215cc8ad0554d`  
		Last Modified: Sat, 03 Nov 2018 10:18:15 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa2ad84a6e9161eee74708fbed4225bdf530660f37970889aa6d1dd600fad2d`  
		Last Modified: Sat, 03 Nov 2018 10:18:17 GMT  
		Size: 5.0 MB (5040691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930e4db82bd55252b2b0351fca1658169cdfca5be3d4ed2026585380d947730d`  
		Last Modified: Sat, 03 Nov 2018 10:18:15 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb53a929369a02d8485fa3f0adb7d339f5e755fc0b2082e858b1aa7b8edbcfb0`  
		Last Modified: Sat, 03 Nov 2018 10:20:05 GMT  
		Size: 139.5 MB (139475250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61e5624e7616dbf603d2bb5e386be643ffe0daf0776b87016b7a06cfe1e4878`  
		Last Modified: Sat, 03 Nov 2018 10:18:15 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.16299.726; amd64

```console
$ docker pull golang@sha256:13108130733ed0011888e066e3ec729742e80285da336f5652cdb9715851ad72
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3309369578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70af298ef9c3cdc4dae201a8007f16192b03e2bd4a7d03b92530fb4e79da327e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 01 Oct 2018 22:02:14 GMT
RUN Install update 10.0.16299.726
# Wed, 10 Oct 2018 09:42:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 03 Nov 2018 09:27:09 GMT
ENV GIT_VERSION=2.11.1
# Sat, 03 Nov 2018 09:27:10 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Sat, 03 Nov 2018 09:27:11 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Sat, 03 Nov 2018 09:27:12 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Sat, 03 Nov 2018 09:28:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Sat, 03 Nov 2018 09:28:48 GMT
ENV GOPATH=C:\gopath
# Sat, 03 Nov 2018 09:29:42 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 03 Nov 2018 09:29:43 GMT
ENV GOLANG_VERSION=1.11.2
# Sat, 03 Nov 2018 09:36:15 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '086c59df0dce54d88f30edd50160393deceb27e73b8d6b46b9ee3f88b0c02e28'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 03 Nov 2018 09:36:16 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd7a4737dfbb59b49c30480146e7f0a61842409755bd479b63004c5643d0ed3`  
		Last Modified: Mon, 08 Oct 2018 19:38:11 GMT  
		Size: 866.5 MB (866458210 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cf0d3e1d36b0cda001b50a29a3b2898c0f456696a4491b2d5536e4af41eed468`  
		Last Modified: Wed, 10 Oct 2018 10:08:52 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c97f1b8ed9b2630a9e2fc2f6a28972979c00cc3639006c14d0140dad3aaf15`  
		Last Modified: Sat, 03 Nov 2018 10:20:34 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581443f768083b8dde5a6b41dcc890784bff0b6a487accfb27938a06124864ca`  
		Last Modified: Sat, 03 Nov 2018 10:20:32 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cd5452d56afc6f8127b1727944d3c85fd0f90cccd45d2e4e81fc3af42ef925`  
		Last Modified: Sat, 03 Nov 2018 10:20:30 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640d9bff533fcaa1f9c160b8d9348a487ddcc00b8f9cef4e1dc94b53c2b35fc`  
		Last Modified: Sat, 03 Nov 2018 10:20:30 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791b53a3e12c872554bc073c60ca9413f67719521345b44b535914246fea6081`  
		Last Modified: Sat, 03 Nov 2018 10:20:44 GMT  
		Size: 29.2 MB (29174141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8958e4b9b6e61ee5349294ea3f67ce46abe77c8e5174a87a5fb92aef5e0c3660`  
		Last Modified: Sat, 03 Nov 2018 10:20:27 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5dcbb235af0f6bb0ab864498a63fa76bf34e3ee30a7205165b34e8e1b2358d3`  
		Last Modified: Sat, 03 Nov 2018 10:20:28 GMT  
		Size: 4.7 MB (4731812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1780cbf37c5149eb8fe451d80ecb2278e4f53565d4b50d702c116aac935f3c36`  
		Last Modified: Sat, 03 Nov 2018 10:20:27 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7af7c78fd1c81a61f6a29d0fba417180876e40ff15bd75ac171973343c494a`  
		Last Modified: Sat, 03 Nov 2018 10:22:15 GMT  
		Size: 134.7 MB (134695103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c10487ad71580b61afed36def5ec50c48a9924c8cce86569edbf2e3ff31ff1`  
		Last Modified: Sat, 03 Nov 2018 10:20:27 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.17134.345; amd64

```console
$ docker pull golang@sha256:5a6be49b7c1b17fdcd0ba6f0faaf282a804046d47b2a7c6b19d39ec5be51b087
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2389455367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecfe8d69297cc0cb56ca45c25f7e4b9859d5bb35d5868ec9060f907621546f3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 01 Oct 2018 21:32:36 GMT
RUN Install update 10.0.17134.345
# Wed, 10 Oct 2018 10:30:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 03 Nov 2018 09:36:24 GMT
ENV GIT_VERSION=2.11.1
# Sat, 03 Nov 2018 09:36:25 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Sat, 03 Nov 2018 09:36:26 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Sat, 03 Nov 2018 09:36:27 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Sat, 03 Nov 2018 09:37:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Sat, 03 Nov 2018 09:38:00 GMT
ENV GOPATH=C:\gopath
# Sat, 03 Nov 2018 09:38:52 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 03 Nov 2018 09:38:53 GMT
ENV GOLANG_VERSION=1.11.2
# Sat, 03 Nov 2018 09:45:33 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '086c59df0dce54d88f30edd50160393deceb27e73b8d6b46b9ee3f88b0c02e28'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 03 Nov 2018 09:45:35 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:eba07b94d5f77aa900bf02c4247fc580222254782681cc3c74a7cf9566e8890a`  
		Size: 570.0 MB (570044587 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:27edf24f1e4fe928232c90f140f4c86cd7eed50efd07761c6c0832c7bfe26d30`  
		Last Modified: Wed, 10 Oct 2018 11:04:51 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dd5102c55b116c01a43f67593c89932d8d25efe9bf7e6c0218804b91eaba9b`  
		Last Modified: Sat, 03 Nov 2018 10:22:47 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4651a1ef0570df86aeb006e1b06354aa90ece2d3e8dc2af57be297812308bc7`  
		Last Modified: Sat, 03 Nov 2018 10:22:43 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057891e088fd167233a28d08590f6d1dcba45fe7d55fca1d0def9c1d9c2543a1`  
		Last Modified: Sat, 03 Nov 2018 10:22:43 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2ef775c1a8c4c0871e17779f897896c7346fb6a58373599764a12d9f769c57`  
		Last Modified: Sat, 03 Nov 2018 10:22:43 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f63615e131586a09475966c3074d4e4a330ba555ddf59138760307d8b0817e`  
		Last Modified: Sat, 03 Nov 2018 10:22:57 GMT  
		Size: 29.1 MB (29091428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd3e68b34f6e599e203eed13c6d61c9aa31123faa1da9b484dd0de80cd81376`  
		Last Modified: Sat, 03 Nov 2018 10:22:40 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58c476f4b6ada9f05dbb9c8f8221c6cd34e15ed981e4cda5f0f85563bf8f417`  
		Last Modified: Sat, 03 Nov 2018 10:22:40 GMT  
		Size: 320.9 KB (320922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6159572bedacd29ccd0b288d512a3d1583b38f3dc0c15b753385696467ea4d62`  
		Last Modified: Sat, 03 Nov 2018 10:22:40 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7aabe4c4d968af1ca6a112a0479cf93a8a14315013422d9250a92360ea1a9b`  
		Last Modified: Sat, 03 Nov 2018 10:24:26 GMT  
		Size: 130.3 MB (130300464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b837b72dfa6715977b713ede43842939d6a95afa15a94b533ba35c4ec8c3ef9`  
		Last Modified: Sat, 03 Nov 2018 10:22:40 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
