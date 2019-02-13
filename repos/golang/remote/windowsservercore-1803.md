## `golang:windowsservercore-1803`

```console
$ docker pull golang@sha256:413c6a048b875afaef5abca7889ff35f05fe60764a46c19f7d10fa4c24672fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.590; amd64

### `golang:windowsservercore-1803` - windows version 10.0.17134.590; amd64

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
