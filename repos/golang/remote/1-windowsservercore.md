## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:2ab054bef3398b123a2db5cf3c5bcafdf25ce6ee5b33d2dd49e830ca1c001ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64
	-	windows version 10.0.16299.967; amd64
	-	windows version 10.0.17134.590; amd64
	-	windows version 10.0.17763.316; amd64

### `golang:1-windowsservercore` - windows version 10.0.14393.2791; amd64

```console
$ docker pull golang@sha256:8a4455a4844c97d02822b1fd18dce94aeda9732adf1abea42ec8e201d57c5f65
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5813063300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab91e589828976409d7f283217af62cb18f7d5ffe7fa128ef6c5c4ecafedd1c1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Wed, 13 Feb 2019 10:35:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Feb 2019 11:20:26 GMT
ENV GIT_VERSION=2.11.1
# Wed, 13 Feb 2019 11:20:27 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 13 Feb 2019 11:20:29 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 13 Feb 2019 11:20:30 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 13 Feb 2019 11:22:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 11:22:08 GMT
ENV GOPATH=C:\gopath
# Wed, 13 Feb 2019 11:23:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 13 Feb 2019 11:59:36 GMT
ENV GOLANG_VERSION=1.11.5
# Wed, 13 Feb 2019 12:06:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1c734fe614fa052f44694e993f2d06f24a56b6703ee46fdfb2b9bf277819fe40'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 12:06:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b479a92ce115faf181c1196d762b00f05ec9aa83dc2fec2b7ca094c8d6e1bfff`  
		Last Modified: Mon, 11 Feb 2019 20:08:57 GMT  
		Size: 1.6 GB (1570061102 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d6be0e7f96b74f68be8ae9cde286b6108d09d939d8cb130d00bfb8519a6b7fbc`  
		Last Modified: Wed, 13 Feb 2019 11:04:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60633449b1433e4213eb9eaa6c9af6646fe8468e962e1e7efc24b93de809c3cf`  
		Last Modified: Wed, 13 Feb 2019 12:46:21 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fab44be18d4ee533fb0ed142294a9a73c5a93be5a0d1f5ca050cb6c2d0779a9`  
		Last Modified: Wed, 13 Feb 2019 12:46:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4586bb110848e1c8ce53407c691e4978a4933a0ec4d2d33894e7a91f9221b967`  
		Last Modified: Wed, 13 Feb 2019 12:46:18 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a4806e2eefb504f6026b1f6713136e34d04eb1ba3b2ee38ac8f4e2b63c0257`  
		Last Modified: Wed, 13 Feb 2019 12:46:16 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc864958c6c4bc5aec28850e5940cd87c2650cc2684d57dd7f9f5f115edad4f`  
		Last Modified: Wed, 13 Feb 2019 12:46:29 GMT  
		Size: 29.6 MB (29608307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636c7fd30ef4c74f68d707cae08fed474baffd1a16e438cd27f49e29c83238fe`  
		Last Modified: Wed, 13 Feb 2019 12:46:34 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60cd2a8e38b721771dd02395b776a9322bfa2ed429c8d92e6d9a2a8b90228279`  
		Last Modified: Wed, 13 Feb 2019 12:46:15 GMT  
		Size: 5.1 MB (5137771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c01b763e14ac77a4e61681fadf58d19cc1b7e66350e2d1e68d8bfd0803e9965`  
		Last Modified: Wed, 13 Feb 2019 12:55:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20fe1f86f54d2665015318f80c495dd32e7612dfd9c9a9f81bb449448762735`  
		Last Modified: Wed, 13 Feb 2019 12:57:14 GMT  
		Size: 138.3 MB (138260375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ff469f10640acbe3aea87803193d2b311fba646f5d12e867958f02d5cc3a1f`  
		Last Modified: Wed, 13 Feb 2019 12:55:46 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.16299.967; amd64

```console
$ docker pull golang@sha256:c40b771796049367be79628b80e148b7d5cbba451df8ff32fa8ea1761d0fb002
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3315463796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e3cd5af9865449b0e18017ff0237fcfa8c29e1691a74994391b9cd1340a679d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Fri, 08 Feb 2019 07:16:29 GMT
RUN Install update 10.0.16299.967
# Wed, 13 Feb 2019 10:40:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Feb 2019 11:29:56 GMT
ENV GIT_VERSION=2.11.1
# Wed, 13 Feb 2019 11:29:57 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 13 Feb 2019 11:29:59 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 13 Feb 2019 11:30:00 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 13 Feb 2019 11:31:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 11:31:26 GMT
ENV GOPATH=C:\gopath
# Wed, 13 Feb 2019 11:32:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 13 Feb 2019 12:06:20 GMT
ENV GOLANG_VERSION=1.11.5
# Wed, 13 Feb 2019 12:12:17 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1c734fe614fa052f44694e993f2d06f24a56b6703ee46fdfb2b9bf277819fe40'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 12:12:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:effca3ebc3a86f19a139eb7047c6e97d2fe4c941737e8d9698820d0491ccf530`  
		Last Modified: Mon, 11 Feb 2019 21:05:02 GMT  
		Size: 873.9 MB (873894336 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:731ba2742afc105cbc6ca69724a36a1b3dd4199873953d6581f5339a67939b09`  
		Last Modified: Wed, 13 Feb 2019 11:05:29 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08081a39fabb0aea0f8432a473520939321462404a131efe96d3b6543ea87e3e`  
		Last Modified: Wed, 13 Feb 2019 12:48:31 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d4c1e9049db1bbd59093a6e3ebbac9100c9fe1578388efa1d1560c8e240e60`  
		Last Modified: Wed, 13 Feb 2019 12:48:30 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5928bfe57877c276ec0bdd300ba577bcc15e2ea8cec16b7d697df14fa7e66c`  
		Last Modified: Wed, 13 Feb 2019 12:48:28 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cb37e36c8916aed0d73b11104a994cc4065f6e3fe28e98eee030b81440adcd`  
		Last Modified: Wed, 13 Feb 2019 12:48:27 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae9c52a3dd43203bd5abe38509b31bc9a9ede8860e42d78e8dc4630abbc50f`  
		Last Modified: Wed, 13 Feb 2019 12:48:40 GMT  
		Size: 29.2 MB (29156466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7302329ec51c6d4108c809fa15416953d9c2074b215b667954907191ebb48e`  
		Last Modified: Wed, 13 Feb 2019 12:48:25 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427e90a288a81fd4b418c898009916ec6be6cdd719281274a1cb790476b742a8`  
		Last Modified: Wed, 13 Feb 2019 12:48:26 GMT  
		Size: 4.7 MB (4722686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0010e179f5731e6bed5197c5b6ebe864161b3bbb9d7f2aa501ccafb715e5083e`  
		Last Modified: Wed, 13 Feb 2019 12:57:37 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d27f41a51f1c448da028e6c16ec7f5ab992224a43130cc3533d168e31c39d57`  
		Last Modified: Wed, 13 Feb 2019 12:59:04 GMT  
		Size: 133.4 MB (133379949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a550843296449e39604968dfee3419e13e7a10911672fcb3958aacbb5bce9803`  
		Last Modified: Wed, 13 Feb 2019 12:57:37 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.17134.590; amd64

```console
$ docker pull golang@sha256:c4f104ed098771a457342577cdeba3c4ea0eb5d0fff039c9f37b4ad6b33420e8
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406031783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d1e79e5a50ecbc94136f5d538b698d2fe1d79477c8e4a5bccc91287f7a438a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 07 Feb 2019 23:00:02 GMT
RUN Install update 10.0.17134.590
# Wed, 13 Feb 2019 11:38:10 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Feb 2019 11:38:11 GMT
ENV GIT_VERSION=2.11.1
# Wed, 13 Feb 2019 11:38:13 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 13 Feb 2019 11:38:14 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 13 Feb 2019 11:38:15 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 13 Feb 2019 11:39:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 11:39:38 GMT
ENV GOPATH=C:\gopath
# Wed, 13 Feb 2019 11:40:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 13 Feb 2019 12:12:34 GMT
ENV GOLANG_VERSION=1.11.5
# Wed, 13 Feb 2019 12:18:06 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1c734fe614fa052f44694e993f2d06f24a56b6703ee46fdfb2b9bf277819fe40'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 12:18:08 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e94f7b83ce20c90f9f1b0323c3f9c3c791163e44e7069e47cd76cf50a3a07ef`  
		Last Modified: Mon, 11 Feb 2019 21:11:29 GMT  
		Size: 588.0 MB (587983329 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0f56eeb2940f5c3391f320574c551c5f84072a3baaee150b165407a99cfba06`  
		Last Modified: Wed, 13 Feb 2019 12:50:23 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac8595a4c4a6958ad68dcd0cda69b9a658992df31e3480890a00223d0ac928f`  
		Last Modified: Wed, 13 Feb 2019 12:50:23 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583afba6d8fc247cebd61452abb42b47be1dc0f53ad3a49b50e29aabcf95eb37`  
		Last Modified: Wed, 13 Feb 2019 12:50:20 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3727ca41f6abacee049d9a39c83a0278f7150174670873c5578f972988958c`  
		Last Modified: Wed, 13 Feb 2019 12:50:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957b9ed2bac02fb232c0eb5050e013cff715a93f77598cbcd04dd2d2d348be07`  
		Last Modified: Wed, 13 Feb 2019 12:50:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff869be3a7d324a3c55654e6ad526b254b49b8416a6d22160344296895f4d660`  
		Last Modified: Wed, 13 Feb 2019 12:50:31 GMT  
		Size: 29.1 MB (29103357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91635f0755bd4ffd50ecc9ae272a623056f670e5bf151769a814a12f6ef45e3e`  
		Last Modified: Wed, 13 Feb 2019 12:50:16 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2174c68c974dd54dc93f7f1b2cbdb8bf9b9527429aa8895bcf3d6f9bd5febb`  
		Last Modified: Wed, 13 Feb 2019 12:50:17 GMT  
		Size: 296.0 KB (295958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02597bb4394129317f29c9e8b3f58c8dfb42e9bee5bf44a53a0cd25b13c4c088`  
		Last Modified: Wed, 13 Feb 2019 12:59:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a4779c5fc64a1572d115541559adee07a9be55f7e2b84fdcb083be697dc92b`  
		Last Modified: Wed, 13 Feb 2019 13:00:53 GMT  
		Size: 129.0 MB (128951110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f17fad2ebabd553dc0a25350563b6b9331b020620d47e098d29a0c3595080cd`  
		Last Modified: Wed, 13 Feb 2019 12:59:27 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.17763.316; amd64

```console
$ docker pull golang@sha256:9e1a477d335b584e6b531d3b4ce89e929d33f995d5f456cc78ec868b1c89840e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2063222658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da66b002dd0233ccce0a8069f62337e86cbfc446dd3e38aa979c8bfa92e8bae8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Fri, 08 Feb 2019 00:24:24 GMT
RUN Install update 1809-amd64
# Wed, 13 Feb 2019 11:45:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Feb 2019 11:45:55 GMT
ENV GIT_VERSION=2.11.1
# Wed, 13 Feb 2019 11:45:57 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 13 Feb 2019 11:45:58 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 13 Feb 2019 11:45:59 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 13 Feb 2019 11:47:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 11:47:10 GMT
ENV GOPATH=C:\gopath
# Wed, 13 Feb 2019 11:47:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 13 Feb 2019 12:18:17 GMT
ENV GOLANG_VERSION=1.11.5
# Wed, 13 Feb 2019 12:23:42 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1c734fe614fa052f44694e993f2d06f24a56b6703ee46fdfb2b9bf277819fe40'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 12:23:44 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9e2f2b17be7207dce6730ad64c630dc10b5b3f61a74545c7c1628d605e381297`  
		Last Modified: Tue, 12 Feb 2019 20:42:21 GMT  
		Size: 370.7 MB (370687536 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cd3ade6fc2a72f217b4055dbb0d08b2a25d881d592aeba426cc097b18d9795f7`  
		Last Modified: Wed, 13 Feb 2019 12:52:13 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2fb602668fa787d650318ac74b4712d765b26647addc5c6f4aae3b20e755e6`  
		Last Modified: Wed, 13 Feb 2019 12:52:13 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a1d0ecab852e6aaf52d7e42f7c8decbc1f6a9a50414eca108f5c3386aa133c`  
		Last Modified: Wed, 13 Feb 2019 12:52:11 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a3ac6579a52681175920a79452c2e5d249332453b8b09a6815ef8018dc88ba`  
		Last Modified: Wed, 13 Feb 2019 12:52:10 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b14e11e82d95b16a3ce5d7cefe46284d5fa6a18acc04afae7f7b23617106aa`  
		Last Modified: Wed, 13 Feb 2019 12:52:10 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd7d140c859832718404adcb38ba2b4221a41e0afefbb72b65799b4c63813b4`  
		Last Modified: Wed, 13 Feb 2019 12:52:20 GMT  
		Size: 28.6 MB (28578734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3ef7e7e51439e2e88b23580e095aeeccabdcf2928210f8cfeca48791ef0331`  
		Last Modified: Wed, 13 Feb 2019 12:52:07 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5f4e68ef35c423d9322236f851b892fbca00884cd92bf893ae7c8b508236cc`  
		Last Modified: Wed, 13 Feb 2019 12:52:07 GMT  
		Size: 294.1 KB (294144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6558b242b10c8316d724982a28fd6f6990be9285fbc2d7e4f5c495da3471fa66`  
		Last Modified: Wed, 13 Feb 2019 13:01:13 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00029002982640d8a2525651d296aebd0438cc966eebbda6f04d0fcf7214dad`  
		Last Modified: Wed, 13 Feb 2019 13:02:39 GMT  
		Size: 129.0 MB (128967117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6529b0890eba8e35a917bb6fb16744fe54159aad48092bba22b0afa7adced317`  
		Last Modified: Wed, 13 Feb 2019 13:01:13 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
