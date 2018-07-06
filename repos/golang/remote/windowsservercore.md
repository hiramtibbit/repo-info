## `golang:windowsservercore`

```console
$ docker pull golang@sha256:cf663cd3bac2f7cf959ad92c8ab2fff5ec8f44229334ccbb8b498d51c7e71b80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64
	-	windows version 10.0.16299.492; amd64
	-	windows version 10.0.17134.112; amd64

### `golang:windowsservercore` - windows version 10.0.14393.2312; amd64

```console
$ docker pull golang@sha256:c93762f5426e33f038fcd23fa1134ffc3822da6c5685dab1a42446056bd71f2c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5662979216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0b1554763a044e65884fa6261d1ec5202733f8a942422a70e0c97fd1984fd9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:30 GMT
RUN Install update 10.0.14393.2312
# Tue, 03 Jul 2018 00:23:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Jul 2018 00:23:43 GMT
ENV GIT_VERSION=2.11.1
# Tue, 03 Jul 2018 00:23:44 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Tue, 03 Jul 2018 00:23:45 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Tue, 03 Jul 2018 00:23:45 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Tue, 03 Jul 2018 00:25:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Tue, 03 Jul 2018 00:25:34 GMT
ENV GOPATH=C:\gopath
# Tue, 03 Jul 2018 00:26:38 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Jul 2018 00:47:39 GMT
ENV GOLANG_VERSION=1.10.3
# Tue, 03 Jul 2018 00:53:12 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 03 Jul 2018 00:53:14 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8e9da9bbe3af2118a0b5eef7a3d649367557d0d3992ed0213c79857b23b4140e`  
		Last Modified: Wed, 13 Jun 2018 00:36:30 GMT  
		Size: 1.4 GB (1414319443 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:650685bf03844147638a02f1b62114e24cf12bf85feb92b6e2273d551a54c647`  
		Last Modified: Tue, 03 Jul 2018 01:20:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73a91cb469c7e359d741522bed0e10c649670cfb3641af9c3cac4d93f2423df`  
		Last Modified: Tue, 03 Jul 2018 01:20:27 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8620bdbf56ed7bd0c8b1631a4af59f14ac8b13b1a35a419effed5ec5833d81`  
		Last Modified: Tue, 03 Jul 2018 01:20:27 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f22b0f509ad85923738743a615bdea603c33c88950a9a98f767cab9388a3e8`  
		Last Modified: Tue, 03 Jul 2018 01:20:24 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df5f4eb693cb8a03451955a74621e10cccf27271739ccb347b2aba30e4ae776`  
		Last Modified: Tue, 03 Jul 2018 01:20:23 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b05ca26dfe593b9d3d71f88f926f989dde3098abf546ea352705a8d592ec535`  
		Last Modified: Tue, 03 Jul 2018 01:20:36 GMT  
		Size: 29.4 MB (29418486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226aa27d434e3715787b7423db91aa0b17f5935a306412dc1e9bdd0024426551`  
		Last Modified: Tue, 03 Jul 2018 01:20:20 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93a88f4c490a44ae518df594618c85ae0740b85bd552f597b1db11b9c80f3f3`  
		Last Modified: Tue, 03 Jul 2018 01:20:24 GMT  
		Size: 5.0 MB (4957116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acbeb96b0b6764f6b9e3b0e71b691869072a542cfb9905db83d4dc4273f880e`  
		Last Modified: Tue, 03 Jul 2018 01:25:52 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e7bb226101e6db859ad87b2b72f983ecd32d67f13b556ce49e513ab2cf6863`  
		Last Modified: Tue, 03 Jul 2018 01:27:01 GMT  
		Size: 144.3 MB (144288559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34df2c94b5f79eb7df6de373fccf492e0adc26c7f458f810e9422a8061ae5a42`  
		Last Modified: Tue, 03 Jul 2018 01:25:52 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.16299.492; amd64

```console
$ docker pull golang@sha256:52fe04d49f53d0a724521b02c20fd48646ca32675e06db8137840d979509db87
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3271220875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adefeb28578994cd9e5f016fc1f11f87a4adefefe26b18a17151874050c6e8c0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 11 Jun 2018 20:38:48 GMT
RUN Install update 10.0.16299.492
# Tue, 03 Jul 2018 00:32:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Jul 2018 00:32:42 GMT
ENV GIT_VERSION=2.11.1
# Tue, 03 Jul 2018 00:32:43 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Tue, 03 Jul 2018 00:32:44 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Tue, 03 Jul 2018 00:32:45 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Tue, 03 Jul 2018 00:34:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Tue, 03 Jul 2018 00:34:27 GMT
ENV GOPATH=C:\gopath
# Tue, 03 Jul 2018 00:35:13 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Jul 2018 00:53:21 GMT
ENV GOLANG_VERSION=1.10.3
# Tue, 03 Jul 2018 00:58:31 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 03 Jul 2018 00:58:33 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3b9c63e313c8b374d5767c602fd6f2b947a3f1df9a8f8c5fcecb2fa6b1cfa968`  
		Last Modified: Wed, 13 Jun 2018 01:11:53 GMT  
		Size: 823.6 MB (823576248 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3989f186f0fc841be4fd06c5f4d58afe814bf92ffa0940def6b8d21ea38c223f`  
		Last Modified: Tue, 03 Jul 2018 01:22:20 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be9b417a88820877751cabcf39e3146ad1ab906b2ea03a402fc2c8c80ac63cd`  
		Last Modified: Tue, 03 Jul 2018 01:22:19 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d322a253d4e6b1042c99e15204b98272914fc6a977cc8e43f561d36c409974`  
		Last Modified: Tue, 03 Jul 2018 01:22:19 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d26f8ebc8846286e8ec3c1ad0caef4f3efa36d801c44f4c85fe1974e4985f36`  
		Last Modified: Tue, 03 Jul 2018 01:22:16 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbdea9ee4b8bfb010cf3410f4bbb85103ff94d9ad96e1ebe5dd863be875fcbd`  
		Last Modified: Tue, 03 Jul 2018 01:22:15 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37b383766e6fa050f0826e2e271967cb531e76bf089bf4e2020960418b5b9eb`  
		Last Modified: Tue, 03 Jul 2018 01:22:28 GMT  
		Size: 29.1 MB (29120783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff7982cd7f2036cd30289e69b2b7962f4b78c90b20cf8fd8e5bae1dce935fed`  
		Last Modified: Tue, 03 Jul 2018 01:22:13 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6cab04e28059c3e43f99bb05d15d5f14e0cb87711a9d919f9ae954a8d275bd`  
		Last Modified: Tue, 03 Jul 2018 01:22:14 GMT  
		Size: 4.7 MB (4681808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869ffd6216212567b8c49197b3b29ace183794c8d5337e33094200dff9dc49f3`  
		Last Modified: Tue, 03 Jul 2018 01:27:28 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0a22b95acb3699ff95bee6882611abf17915489012b90878312fe545030a7`  
		Last Modified: Tue, 03 Jul 2018 01:28:39 GMT  
		Size: 139.5 MB (139531773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a8aad43e4fa75628ce30b7406c3b404cf7aec892be1d755a11cd6fb95b96d3`  
		Last Modified: Tue, 03 Jul 2018 01:27:28 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.17134.112; amd64

```console
$ docker pull golang@sha256:3c309debea104972232a2db59f15a72bfa4293b5d9e4ab85278f998d443022e7
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2206585672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804a36b5f3c122a74821a64249cf0090ee4639b35ad47fe8f85f54f057409367`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 11 Jun 2018 20:28:23 GMT
RUN Install update 10.0.17134.112
# Wed, 04 Jul 2018 02:41:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 04 Jul 2018 02:41:04 GMT
ENV GIT_VERSION=2.11.1
# Wed, 04 Jul 2018 02:41:05 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 04 Jul 2018 02:41:06 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 04 Jul 2018 02:41:07 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 04 Jul 2018 02:42:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 04 Jul 2018 02:42:23 GMT
ENV GOPATH=C:\gopath
# Wed, 04 Jul 2018 02:43:02 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 04 Jul 2018 02:43:03 GMT
ENV GOLANG_VERSION=1.10.3
# Wed, 04 Jul 2018 02:48:01 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Jul 2018 02:48:03 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acacb1f3f7c2ba4fed8405c536d1cbf1a21cc99fe63d76c1d7b70b49da4d4918`  
		Last Modified: Thu, 14 Jun 2018 18:13:25 GMT  
		Size: 382.5 MB (382545424 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4e8dbd5fffc77364d12fd371fee6bb72a47e0fcb1d2c3c9b1685955bc6bc2b66`  
		Last Modified: Fri, 06 Jul 2018 09:33:12 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5168b3eb916ce2cb3b93cea751fbf41ea690e40f17e6df12a17c7933514cbd`  
		Last Modified: Fri, 06 Jul 2018 09:33:12 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652cfdd88c6fc0a1b390e324024bf4267fd38c095e92eb2dd845232eb253668e`  
		Last Modified: Fri, 06 Jul 2018 09:33:09 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139acecf72247cdc77d402272745cd2f18755a4616ea1936a7320e39f7da4c62`  
		Last Modified: Fri, 06 Jul 2018 09:33:09 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca40200dfd84a1f75869686da0f3d8d5da87252564dec1f463137ac8fdc7ecf`  
		Last Modified: Fri, 06 Jul 2018 09:33:08 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9daddacee7ef4ecd97d5b9122b99434cfb69c8249b5448c6609c64fd4568ff4d`  
		Last Modified: Fri, 06 Jul 2018 09:33:22 GMT  
		Size: 28.9 MB (28859959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a04c1e137047206866898ac328e943671f14c0bfb5d407e284b4219ab527209`  
		Last Modified: Fri, 06 Jul 2018 09:33:04 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff4665aa993aa998f594cdc5b2c84e0987b61aecddfed21a32e73b52e9e81d9f`  
		Last Modified: Fri, 06 Jul 2018 09:33:04 GMT  
		Size: 309.8 KB (309819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d532895ec67f129df9c23589c0cf2c431599c3d73ba16587358e2c2bae490797`  
		Last Modified: Fri, 06 Jul 2018 09:35:45 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15bceee2f52c4ae160255aeb95bbd6608232310e5439f1cb005bac9e8b40679`  
		Last Modified: Fri, 06 Jul 2018 09:37:35 GMT  
		Size: 135.2 MB (135172544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f544ef1b76d6ceba48fd3251c2787c6125d3371072deb6662f34df8d4fd018`  
		Last Modified: Fri, 06 Jul 2018 09:35:45 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
