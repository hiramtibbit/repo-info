## `golang:windowsservercore-1803`

```console
$ docker pull golang@sha256:124d20ac0ff2db28a12671def330bfcffa8e684ff0d1a8ad89d668ae8e23de2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `golang:windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull golang@sha256:8333c56676e18fdf0a1ffeaa4ed41f183a76d6c83475aa10687678aa35e9634f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2469926777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d670eb2bef4511be093deff5dd7f520a581535bd44942ec07170edec08a1564`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 12:50:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 12:50:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 22 May 2019 12:50:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 22 May 2019 12:50:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 22 May 2019 12:50:06 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 22 May 2019 12:51:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 12:51:32 GMT
ENV GOPATH=C:\gopath
# Wed, 22 May 2019 12:51:57 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 22 May 2019 12:51:59 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 22 May 2019 12:56:56 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 12:56:58 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:437e42e2c79862963e84efa4879b7522ff44416964747070df92412c08b9d147`  
		Last Modified: Wed, 22 May 2019 13:23:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a62b53ed2e54752b67e3cf6691faea2498289f5828227a658b87ccc2162b3b`  
		Last Modified: Wed, 22 May 2019 13:23:01 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6839c40015000b15506969620f94f5b69bf561cab1ee5ed877f823e7c5d9461`  
		Last Modified: Wed, 22 May 2019 13:22:59 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7a04b64148757455dc052a074ea21964b8b717889118091565e02d0f0a8d34`  
		Last Modified: Wed, 22 May 2019 13:22:57 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c93e5d1e9558c2137931fbdc6c9f8e3f1fe1cd79d333a520f56c146df89ba7c`  
		Last Modified: Wed, 22 May 2019 13:22:57 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a46e580c1e9c89218a9016a1f760f886d43a3cacc474a16bd7e6965247fd87e`  
		Last Modified: Wed, 22 May 2019 13:23:09 GMT  
		Size: 29.2 MB (29172554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a543061e6fb185189159ff23346d078c7f0f28730d58aa8e3dac0e72fd2805d`  
		Last Modified: Wed, 22 May 2019 13:22:54 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41ec2920b5660f96cd636e8b51b27ec55c3741d5f69300ef451fea0404f5b6d`  
		Last Modified: Wed, 22 May 2019 13:22:55 GMT  
		Size: 317.2 KB (317202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a20baa1e2d0db998f59b4aea271bbbf39f7b63e89f372c773b554243db19627`  
		Last Modified: Wed, 22 May 2019 13:22:54 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be6bb1fcc2218a4c9647e7758cf316f4a342ebb25f7e296e25de7f18338c745`  
		Last Modified: Wed, 22 May 2019 13:24:20 GMT  
		Size: 137.0 MB (136970553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9587fe95144a09897bc93beda85c92046989faa1d9390844abc8dd71167a18f`  
		Last Modified: Wed, 22 May 2019 13:22:54 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
