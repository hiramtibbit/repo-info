## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:8f026b39c8d7ba4c3b50b72fe7b548bfc4be5f9c192a47689eaa4b8dbf7215ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `golang:1-windowsservercore` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d473efde0e65ff48e2ab17fe745d33988c181fd0223d848b27b661b99a2d0ffc
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5573660365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b91d7d0ff1272c330725c7c8872481f2681463b71ea7ee1a7575b7d7a5749`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:18:08 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:23:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:23:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4a2472cfa1fc2e2c4eac976aa4c440a5bb5ecc93d8b68833c06d52d47a802`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f46eeecb42afbccd4c8fd354348ad027e8edc5cbf5bacefd873eee9d4b2bade`  
		Last Modified: Fri, 04 May 2018 09:50:48 GMT  
		Size: 145.1 MB (145087737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731b5d2064e3fb4d550af9cea9c4aa0cde2e7cb0f7b077c3dcd2ba27efc8761`  
		Last Modified: Fri, 04 May 2018 09:49:26 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:227a337a2d1a611896f4e8cc517435fac3c486d5293cc89dc699f3ee6316ff77
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3214355039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27271e113c61be58bcb5011fe65e108a48e3cf98cd887474cc65decb662c785`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:23:33 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:28:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:28:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bc0691221cf61ac883b0e561b53a949c89ac2440694f795ca33f7bb27f8d9d`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33b0096e46bcb06d535e0310aa91a75710dc456147990d218210feef80d91ad`  
		Last Modified: Fri, 04 May 2018 09:52:23 GMT  
		Size: 144.8 MB (144785942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c91ea790b7475c4f45a87df38772eb0116c7716599e1670e8106570eb2a293`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
