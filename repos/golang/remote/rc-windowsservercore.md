## `golang:rc-windowsservercore`

```console
$ docker pull golang@sha256:64145de9c9e17ac50ff0ccb5658ef27b7c8d3beaecaaf98c37d7f252a5155309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64
	-	windows version 10.0.16299.547; amd64
	-	windows version 10.0.17134.165; amd64

### `golang:rc-windowsservercore` - windows version 10.0.14393.2363; amd64

```console
$ docker pull golang@sha256:0a3c1132123d5d96396bb56e421837fd99f82f246e220c2b522beb8d927ff96e
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5705498449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb258c9f955045df54c0af57094855ef9de7afa985da29ff46d463bea85d13a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:33 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 09:36:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jul 2018 09:19:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 13 Jul 2018 09:19:17 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 13 Jul 2018 09:19:18 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 13 Jul 2018 09:19:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 13 Jul 2018 09:51:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 13 Jul 2018 09:51:44 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jul 2018 09:52:51 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Jul 2018 09:52:52 GMT
ENV GOLANG_VERSION=1.11beta1
# Fri, 13 Jul 2018 09:58:58 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1eeb874a919143f3e62b641ccd5ebbfd1b3d4f2184de1d6497f7b2b6df996960'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 13 Jul 2018 09:59:00 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fb1ebf2c42b6ac63b874d36a405b413fdf6c314131c3605d77e3cee6f485881f`  
		Last Modified: Tue, 10 Jul 2018 21:16:33 GMT  
		Size: 1.4 GB (1419298293 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b678e902d6e9a27ab4d61bef7b26997ea26fdec2575d1317c9eab3b31c61fd9b`  
		Last Modified: Wed, 11 Jul 2018 09:53:57 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e80d4f601876b861621b8343597ef6241e44c8ebbeb865741f9d7e004dde08d`  
		Last Modified: Fri, 13 Jul 2018 11:04:16 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b11d696257875b50977a51053deeb2969178a79c7a37d903f68d05afcf99ab0`  
		Last Modified: Fri, 13 Jul 2018 11:04:14 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9b24157930fa51b746051ae6df4fccd85d53aff399333434f87bc7fb44e02`  
		Last Modified: Fri, 13 Jul 2018 11:04:12 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbc4ad621caff330348a27c442e2344be5c97e1011af2cc95270629d4c6dbcb`  
		Last Modified: Fri, 13 Jul 2018 11:04:12 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7c7a610c85b1ffbb940627726d916e9a01a61d4fec2d7947e989c734ee9649`  
		Last Modified: Fri, 13 Jul 2018 11:04:24 GMT  
		Size: 29.4 MB (29446851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659b95ea2d59290bd3137a837554af33b3d11697b4e6959c81c827d1b5262352`  
		Last Modified: Fri, 13 Jul 2018 11:04:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f34f043fba841e7abe0f2795476da451834f981cea07db052634bd22ac87fc`  
		Last Modified: Fri, 13 Jul 2018 11:04:11 GMT  
		Size: 5.0 MB (4986011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4368342b6edd1a0417bd3f311b02af074804ab92fd2725ec1d620736a0ddb5a4`  
		Last Modified: Fri, 13 Jul 2018 11:04:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c7a051b222dfd713e97c292bab529733018d2a7433978d23adb991d3ef524a7`  
		Last Modified: Fri, 13 Jul 2018 11:05:37 GMT  
		Size: 181.8 MB (181771665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a0525dbff59062e43c75176190314fd567b86cbd7331d4e676c4bf2086c48d`  
		Last Modified: Fri, 13 Jul 2018 11:04:09 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-windowsservercore` - windows version 10.0.16299.547; amd64

```console
$ docker pull golang@sha256:e3d389af85e74bd9a470914e16749915170ed109484f66a219b8667c58cb4950
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3316252247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c52fce57f8d1516b79c86d495cdee352cca29588dee001a0df3b256eaad18a0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Jul 2018 18:10:50 GMT
RUN Install update 10.0.16299.547
# Wed, 11 Jul 2018 09:41:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jul 2018 09:59:09 GMT
ENV GIT_VERSION=2.11.1
# Fri, 13 Jul 2018 09:59:10 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 13 Jul 2018 09:59:11 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 13 Jul 2018 09:59:12 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 13 Jul 2018 10:00:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 13 Jul 2018 10:00:47 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jul 2018 10:01:34 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Jul 2018 10:01:35 GMT
ENV GOLANG_VERSION=1.11beta1
# Fri, 13 Jul 2018 10:07:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1eeb874a919143f3e62b641ccd5ebbfd1b3d4f2184de1d6497f7b2b6df996960'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 13 Jul 2018 10:07:21 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a01c2a39b5bdf158508b424626efbcede4aa9da21f2d4f6ffbd5bff4deb0fb01`  
		Last Modified: Tue, 10 Jul 2018 23:36:17 GMT  
		Size: 831.1 MB (831119569 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5c935a79e71d79bf144e02b94352e10d483d43e5c3f4a3491874c5d6d72deda3`  
		Last Modified: Wed, 11 Jul 2018 09:55:02 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e039188b8cdcd6d2306c66e6daaca9ed974e64d3b17ce8ae0e327f54cfc931`  
		Last Modified: Fri, 13 Jul 2018 11:06:04 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06cb70e6140b0978982a4d8f848b7ffe37757c9b454b251930a18ee7b4c775d0`  
		Last Modified: Fri, 13 Jul 2018 11:06:03 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9afba9e858eaab528f647620fc0d49d0fd49e57945f6187ad0d0450f0d72fe`  
		Last Modified: Fri, 13 Jul 2018 11:06:01 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe9a0eefa5430dfca3159c6b0e2f7f35f28cd8236d323e440a585ae5a1b5342`  
		Last Modified: Fri, 13 Jul 2018 11:06:00 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8228bba40556a914a0a62987f89cf2faac16a828a98755212287764086b3409d`  
		Last Modified: Fri, 13 Jul 2018 11:06:12 GMT  
		Size: 29.1 MB (29119290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8301abb8f59eee30d309a27d82dfbd54a885c105cbc7c376f6321b911b8e59`  
		Last Modified: Fri, 13 Jul 2018 11:05:58 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5220aaffec8c6508a977b58b8dc750dd947da554793092cf4736c2e81119cd50`  
		Last Modified: Fri, 13 Jul 2018 11:06:00 GMT  
		Size: 4.7 MB (4688092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a795a1af0e426691ad28303b219fc693f3bcd2b028c8e9baa355cabb9c8d6761`  
		Last Modified: Fri, 13 Jul 2018 11:05:57 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94fa2bdbbeb6234456644b86971ab85a4a2c790577fc2e955d274a2cf6c3fff2`  
		Last Modified: Fri, 13 Jul 2018 11:07:25 GMT  
		Size: 177.0 MB (177014999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99abe65950321e030089646114aba92acfb878fcb614bb6d59bb7c4953f44c69`  
		Last Modified: Fri, 13 Jul 2018 11:05:58 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-windowsservercore` - windows version 10.0.17134.165; amd64

```console
$ docker pull golang@sha256:d3e212841bba156e2a85e2f5cb0232906e8132c743bb0e3a02e2d8fcc0ec3f89
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2355111395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1358bb1592bb315ec8b577873cf3c841daaad8728fd64a1b761096217a2115a2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sat, 07 Jul 2018 22:48:41 GMT
RUN Install update 10.0.17134.165
# Fri, 13 Jul 2018 10:07:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jul 2018 10:07:26 GMT
ENV GIT_VERSION=2.11.1
# Fri, 13 Jul 2018 10:07:27 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 13 Jul 2018 10:07:28 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 13 Jul 2018 10:07:28 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 13 Jul 2018 10:08:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 13 Jul 2018 10:08:56 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jul 2018 10:09:39 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Jul 2018 10:09:40 GMT
ENV GOLANG_VERSION=1.11beta1
# Fri, 13 Jul 2018 10:15:22 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1eeb874a919143f3e62b641ccd5ebbfd1b3d4f2184de1d6497f7b2b6df996960'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 13 Jul 2018 10:15:23 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e30fefc566f71c5dd5786e4783ff4ae3ad98804d5279c14dcf806c813fdf8f66`  
		Last Modified: Tue, 10 Jul 2018 21:54:14 GMT  
		Size: 493.5 MB (493521205 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e25b1252e9b6c8bdfcec66e75be65af2baf4bcf1a67dc96422fef339cc4912c`  
		Last Modified: Fri, 13 Jul 2018 11:07:53 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb8204d8ec55cb4f90f7d714268cc09d8ba91ea9367280e6ad469af2d402586`  
		Last Modified: Fri, 13 Jul 2018 11:07:53 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259348c7b912e7c7ec2419f712b8308df80b66b627c4de2676c4cc03d26c7bf4`  
		Last Modified: Fri, 13 Jul 2018 11:07:50 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cea0dfd17e7231f41619c84a6bfde0dd7a121a3d839651ca0566be9ec2c9ea4`  
		Last Modified: Fri, 13 Jul 2018 11:07:49 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b833d9bde7c5fb916270d56937979e5585ece9145afcad775c8861c15a240ad`  
		Last Modified: Fri, 13 Jul 2018 11:07:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5d404de536327f6e5736ad2f9ee6a2186c5ca4975f143da218f8015d66bc43`  
		Last Modified: Fri, 13 Jul 2018 11:08:00 GMT  
		Size: 29.0 MB (28959589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f17e2bb7e96c2294d7e1e57f7b0e50b57bbbe1b6324a8778cf21a0d66b8ffa`  
		Last Modified: Fri, 13 Jul 2018 11:07:45 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ad9df6429f66007fe2647b7190df00610952251ce56d5dfc48fa7ca5fffd9d`  
		Last Modified: Fri, 13 Jul 2018 11:07:46 GMT  
		Size: 296.8 KB (296800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6a4e28e675d96cc54b7db80a480ed32b5b6d6fd0ef553aad6398ad5f774aa5`  
		Last Modified: Fri, 13 Jul 2018 11:07:46 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd18e1156e783bac1c1d4598af0ee10138273daf25cb84ed7e6be790d96b7855`  
		Last Modified: Fri, 13 Jul 2018 11:09:14 GMT  
		Size: 172.6 MB (172635831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1403ae82ae6017c06f036452988ac9b39def177dbb48dcaf0a0e137780cb62bf`  
		Last Modified: Fri, 13 Jul 2018 11:07:45 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
