## `golang:windowsservercore`

```console
$ docker pull golang@sha256:ba30d9830fed45a5ce5f9a0a31c65a14887f1daec96b3b5745bab0a7f99838d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64
	-	windows version 10.0.16299.547; amd64
	-	windows version 10.0.17134.165; amd64

### `golang:windowsservercore` - windows version 10.0.14393.2363; amd64

```console
$ docker pull golang@sha256:698c6cb72d1e6210a49f954db0691ceac38997a232cab02afcd6e13fc2f2a3f5
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5668015970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac596e7da2ffa28642086c780ec272e9f986e2240b1b5f96704e1abb230d3cf`
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
# Fri, 13 Jul 2018 10:22:08 GMT
ENV GOLANG_VERSION=1.10.3
# Fri, 13 Jul 2018 10:27:54 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 13 Jul 2018 10:27:56 GMT
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
	-	`sha256:cb3e687a272922ae9ad9ea2df2f764b2fd183af979851655149a4e684f566735`  
		Last Modified: Fri, 13 Jul 2018 11:11:31 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a783a7bec486bd95e1f4bc507c77e21ff952a9b3b99104e982c8c85efe0779b`  
		Last Modified: Fri, 13 Jul 2018 11:12:43 GMT  
		Size: 144.3 MB (144289194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29dd6e2e7bc972e161e7c78ed8476b898ab28a3399d75e73b3c0f96c51760833`  
		Last Modified: Fri, 13 Jul 2018 11:11:31 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.16299.547; amd64

```console
$ docker pull golang@sha256:1d3c22543ed84fcf6d7119f44be750d0b9f7ef15e5b94cd3c92767e3c9ba97b1
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3278765988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3f8071d41154d58c131540f8bca3a863d3afd94f8074cb8a1a1ba8ad590a99f`
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
# Fri, 13 Jul 2018 10:28:06 GMT
ENV GOLANG_VERSION=1.10.3
# Fri, 13 Jul 2018 10:33:11 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 13 Jul 2018 10:33:13 GMT
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
	-	`sha256:c5eeac68667bd39fdb59e191e0b86109aa47085334e88d1af333b15552150325`  
		Last Modified: Fri, 13 Jul 2018 11:13:06 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6400a571f3eda8fe47649d9b81b1b0553e47c381ccabf2cad9511d1125eee7a`  
		Last Modified: Fri, 13 Jul 2018 11:14:16 GMT  
		Size: 139.5 MB (139528736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde52a5dde1b11f274eb844ea8983eee35bde69b1629c10cecd1c7cfd30a303d`  
		Last Modified: Fri, 13 Jul 2018 11:13:05 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.17134.165; amd64

```console
$ docker pull golang@sha256:62d401d2a7190a7fc7047dfb4add6545fdd8d66fe21c4c7dfc6710d7c86a4a53
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2317626940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4566bbc3c7bc6f83c7f16fb110cf5fe0188aa983c080d0e4b3c3674615012b80`
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
# Fri, 13 Jul 2018 10:33:20 GMT
ENV GOLANG_VERSION=1.10.3
# Fri, 13 Jul 2018 10:38:21 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 13 Jul 2018 10:38:22 GMT
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
	-	`sha256:c88add3bec60f2ac4cac705854c4b4403237963ad144d9fef4a85e7da0959005`  
		Last Modified: Fri, 13 Jul 2018 11:14:38 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94b2fa36de89fb483ebc5e09756aaf26440397cb827c2725e3ccd7d69b2b662`  
		Last Modified: Fri, 13 Jul 2018 11:15:44 GMT  
		Size: 135.2 MB (135151373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a6a90e05a50af68752064c8ac4fe5d23881ad4271f31d367e72e791f337b8b`  
		Last Modified: Fri, 13 Jul 2018 11:14:38 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
