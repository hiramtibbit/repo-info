## `golang:rc-windowsservercore`

```console
$ docker pull golang@sha256:c71cd912162f14821bebc118d0791d1e5d414ec0984d5b7b220da7aa5b88f56b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64
	-	windows version 10.0.16299.547; amd64

### `golang:rc-windowsservercore` - windows version 10.0.14393.2363; amd64

```console
$ docker pull golang@sha256:855e9ff3efb4836737d4aaa58ef6eb4016e72d6441034983b536d5889d07e8ae
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5714047639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c4ba03ee4da7017ec69af88f342480ead38d1e8b780d57d7c308b06c755c54`
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
# Sat, 21 Jul 2018 09:15:41 GMT
ENV GOLANG_VERSION=1.11beta2
# Sat, 21 Jul 2018 09:21:57 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '91072cdc2cbf7b0e94c5706aea86e09d4a044aa6b60f4db4c0869ca29a8befa4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 21 Jul 2018 09:21:59 GMT
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
	-	`sha256:ae501874572834772e47a5919254a0acd426b927b2a3bf91dad160a270c1a6a9`  
		Last Modified: Sat, 21 Jul 2018 09:40:41 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a2c1aaa788d39f39e738567a8419486f40de3a02c8cd3cc502c2859ba8404d`  
		Last Modified: Sat, 21 Jul 2018 09:41:59 GMT  
		Size: 190.3 MB (190320869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7644229d6bfecbc6cc3eb5ace997dd3b3181d45385a0677da400982a4dbeac1f`  
		Last Modified: Sat, 21 Jul 2018 09:40:41 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-windowsservercore` - windows version 10.0.16299.547; amd64

```console
$ docker pull golang@sha256:5f742305010138715c0650e5e0d21a55f8af868616b37a3ef0c5be688aac9e6c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3324778865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26c677f4ce9e3e5ec29b648a6479fe5540cfacb703285c16b3ac326c13eadbd`
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
# Sat, 21 Jul 2018 09:22:10 GMT
ENV GOLANG_VERSION=1.11beta2
# Sat, 21 Jul 2018 09:28:01 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '91072cdc2cbf7b0e94c5706aea86e09d4a044aa6b60f4db4c0869ca29a8befa4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 21 Jul 2018 09:28:03 GMT
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
	-	`sha256:172cf4be3951dd05e9e165975c821439555cb110598d78c1b6c45ee18018b51d`  
		Last Modified: Sat, 21 Jul 2018 09:42:18 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3d7019001c708add01a5c3c218c4802739f4088e5e511b57994c7b0fd6e482`  
		Last Modified: Sat, 21 Jul 2018 09:43:34 GMT  
		Size: 185.5 MB (185541636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436693d37b8bebed3ee6f107efdd50f868c963dc3b990bfb9734203911d2b72a`  
		Last Modified: Sat, 21 Jul 2018 09:42:18 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
