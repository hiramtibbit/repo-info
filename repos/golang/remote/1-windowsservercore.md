## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:aef7efc071e43251fd72423b10500ad9f3d980bf81fc550734cebef55b035831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64
	-	windows version 10.0.16299.665; amd64
	-	windows version 10.0.17134.285; amd64

### `golang:1-windowsservercore` - windows version 10.0.14393.2485; amd64

```console
$ docker pull golang@sha256:57e9ef57989766bf736f28c746e30a892a503a81a2053affc1dff185c7be5cbc
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5760603231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d311d755f2fe3b2b229e4346eae3897cea2bde8fd2b6b83b6ab5e62c401cf1b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 09:16:38 GMT
ENV GIT_VERSION=2.11.1
# Wed, 03 Oct 2018 09:16:39 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 03 Oct 2018 09:16:40 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 03 Oct 2018 09:16:41 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 03 Oct 2018 09:18:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 03 Oct 2018 09:18:40 GMT
ENV GOPATH=C:\gopath
# Wed, 03 Oct 2018 09:19:48 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 03 Oct 2018 09:19:49 GMT
ENV GOLANG_VERSION=1.11.1
# Wed, 03 Oct 2018 09:26:13 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '230a08d4260ded9d769f072512a49bffe8bfaff8323e839c2db7cf7c9c788130'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 03 Oct 2018 09:26:15 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6e046b8e194c642cfc4d7dcaa12ec2f9359e1f54dbc7088ee9ca188416d5c553`  
		Last Modified: Tue, 11 Sep 2018 16:53:50 GMT  
		Size: 1.5 GB (1515870209 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7aa2ad8eff720622c1b1f25bf31d2c32b588766208c093caef00e8b31961b74e`  
		Last Modified: Thu, 13 Sep 2018 10:24:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f96babc1e55d6bf4247c27a8447060cada769c05a4f4d6fe8f8f2a616eb907`  
		Last Modified: Wed, 03 Oct 2018 10:12:00 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64362ad1d97a4ef0b8f461397c9f354598e5c5315bf8496e61fbe1793a36dff`  
		Last Modified: Wed, 03 Oct 2018 10:11:59 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189dd89ff42187157dfafe5477bd2b2579a822642df783fa41c60a89dc9a2116`  
		Last Modified: Wed, 03 Oct 2018 10:11:58 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03721c16d14c0df6ef695b996a17b3a4b11ce4a8515f40847fcee9d61a3299ef`  
		Last Modified: Wed, 03 Oct 2018 10:11:57 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca50f20fd465e5f43c82ae70afddf71a4638da6e60bdd6c97a72f95ca7bacff7`  
		Last Modified: Wed, 03 Oct 2018 10:12:10 GMT  
		Size: 29.5 MB (29511555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc137308dccde83bc0f68a58d65de5916cfd80d9765e3a9b965caa3895cd4cda`  
		Last Modified: Wed, 03 Oct 2018 10:11:55 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7b2f54957b9fea2563852efda8231970e5c1077c2a9686b602cfc914dd203c`  
		Last Modified: Wed, 03 Oct 2018 10:11:56 GMT  
		Size: 5.0 MB (5038775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6325fe002a56c92ff4316bbe6e0aa1423cbcdb1d0316c004865f7bbb84a368`  
		Last Modified: Wed, 03 Oct 2018 10:11:53 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc167bad526c769cc73b14fdfc0d64aa3ff769681cffe609f9b80af5378d3d2c`  
		Last Modified: Wed, 03 Oct 2018 10:13:33 GMT  
		Size: 140.2 MB (140187048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cb4d91d1d8dc719f567cbb67d77d2edc2440a433f7ebc435bf838154d1e443`  
		Last Modified: Wed, 03 Oct 2018 10:11:54 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.16299.665; amd64

```console
$ docker pull golang@sha256:662c92894844017d3953f530bb179af71fbf2210bc33c053254b7c8bafcc6e4a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3301839038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:659f4ad9ecc6fb9d059d1c7c15af3971e7aeeb4ff9f7835296231330792460e5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Thu, 13 Sep 2018 09:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 09:26:20 GMT
ENV GIT_VERSION=2.11.1
# Wed, 03 Oct 2018 09:26:21 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 03 Oct 2018 09:26:21 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 03 Oct 2018 09:26:22 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 03 Oct 2018 09:27:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 03 Oct 2018 09:27:52 GMT
ENV GOPATH=C:\gopath
# Wed, 03 Oct 2018 09:28:41 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 03 Oct 2018 09:28:42 GMT
ENV GOLANG_VERSION=1.11.1
# Wed, 03 Oct 2018 09:34:44 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '230a08d4260ded9d769f072512a49bffe8bfaff8323e839c2db7cf7c9c788130'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 03 Oct 2018 09:34:45 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a5b83e25f92aef992a2827d664111b4726ada7d0b13d7af21882734cab96d8d0`  
		Last Modified: Tue, 11 Sep 2018 17:07:56 GMT  
		Size: 858.3 MB (858335510 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa61e3e01eeaa5482e77157970441ee8c2414720462e140b668a5b58902a78f5`  
		Last Modified: Thu, 13 Sep 2018 10:25:08 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a9b0e10d4fe047a26ba053ab5181f84d47b00a242c9c16fe02182400ba2587`  
		Last Modified: Wed, 03 Oct 2018 10:14:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48b4ced47223fce152c207706827c5a959f5b3b8ab4fddca9f5b28ef839aed`  
		Last Modified: Wed, 03 Oct 2018 10:14:01 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00be8bf5f8fca185fb2ce374d442002b8902c39b78c0386c6f72a5efca502370`  
		Last Modified: Wed, 03 Oct 2018 10:14:00 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143d512e608fecdcaebf1a15a63b2cf6e904464d066f564da5ac1701f52f2b88`  
		Last Modified: Wed, 03 Oct 2018 10:13:59 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d1bd5740ccd7c4caf2dc8e651278c7d6e08e223dc87d8897f16574234e0e7a`  
		Last Modified: Wed, 03 Oct 2018 10:14:11 GMT  
		Size: 29.1 MB (29140739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7910164d0533afb5b3d58d8805db9a6e8d2969891095e98ba70779843fa2c9`  
		Last Modified: Wed, 03 Oct 2018 10:13:56 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73694e9054dc7fb32ed88440bd9ca7450a4c624ea0df279efe2eed18cde4fb34`  
		Last Modified: Wed, 03 Oct 2018 10:13:57 GMT  
		Size: 4.7 MB (4708921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e1196983d3a95c08069281d07c9934ef4bf12077c379116f547c1521996f99`  
		Last Modified: Wed, 03 Oct 2018 10:13:55 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44da67b33c5f421ac6ba5e58bd1204d037a4e580e65f98a926c7a937f7391598`  
		Last Modified: Wed, 03 Oct 2018 10:15:33 GMT  
		Size: 135.3 MB (135343578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f2682dc3588caef919d8058f7808f37137ae93e8f68e5c269e69d2be97651c`  
		Last Modified: Wed, 03 Oct 2018 10:13:55 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.17134.285; amd64

```console
$ docker pull golang@sha256:c251086c392ed43eb8e1277412de4ab674efd72cb47d93da18539be70639f210
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2367298032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51cd3f832af9cca10cd33cce7f5ea65b054635451cd8e367e045dd5069dbdde9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Thu, 13 Sep 2018 09:50:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 09:34:50 GMT
ENV GIT_VERSION=2.11.1
# Wed, 03 Oct 2018 09:34:51 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 03 Oct 2018 09:34:52 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 03 Oct 2018 09:34:53 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 03 Oct 2018 09:36:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 03 Oct 2018 09:36:18 GMT
ENV GOPATH=C:\gopath
# Wed, 03 Oct 2018 09:37:05 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 03 Oct 2018 09:37:06 GMT
ENV GOLANG_VERSION=1.11.1
# Wed, 03 Oct 2018 09:43:00 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '230a08d4260ded9d769f072512a49bffe8bfaff8323e839c2db7cf7c9c788130'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 03 Oct 2018 09:43:02 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f036448990c273bb1accf8d436799639bbb644326ae47f30fe4faed21c8d8d9`  
		Last Modified: Tue, 11 Sep 2018 17:11:59 GMT  
		Size: 547.2 MB (547225773 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:499c5d8410bcb30d8e576aa1248844529b2af7aff7307a4b79f366790c87756f`  
		Last Modified: Thu, 13 Sep 2018 10:26:08 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee6bacfe37a45ffe3314f221f89f82ee8c4245406c0b3df0da0385a941a5c11`  
		Last Modified: Wed, 03 Oct 2018 10:16:01 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbce1de9960205feecc22504ae11bb10994be58388d8fa270967e135fc3cdde5`  
		Last Modified: Wed, 03 Oct 2018 10:16:00 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0e28606b2dc958912ddf9195eade00411904b60c80ac4ab3d452a9b0ccc723`  
		Last Modified: Wed, 03 Oct 2018 10:15:57 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7431c58d74cdb3d056049ee0221c98b0283e9b73dfa2875ad7ee3779277bdc`  
		Last Modified: Wed, 03 Oct 2018 10:15:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58dcb4a3caedcfe480087f6f7361d4131a06298d22f1f9629551af3b826737d`  
		Last Modified: Wed, 03 Oct 2018 10:16:09 GMT  
		Size: 29.1 MB (29071408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96237fad1190f7fc35eae675c0088cf1b2c12c9ed475852c6b11ab7e314e4600`  
		Last Modified: Wed, 03 Oct 2018 10:15:54 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc253437c111b99505693a890f07a3ad685333146734394d22e9bc7d6ff5de01`  
		Last Modified: Wed, 03 Oct 2018 10:15:59 GMT  
		Size: 313.5 KB (313511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05a1e5726856c8598ab850f47c445002ce051d0e1ce6afb02b9573015354e23`  
		Last Modified: Wed, 03 Oct 2018 10:15:54 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8062a348cdf89a5782b6115bdcf05986e528c5838b75b3ecc0a118456c512fe8`  
		Last Modified: Wed, 03 Oct 2018 10:17:27 GMT  
		Size: 131.0 MB (130989322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44890c1d0c079a3bef916733e5ad98b864e8d66dde064ce0609aa2e4b2a5f3b`  
		Last Modified: Wed, 03 Oct 2018 10:15:54 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
