## `golang:windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:90b3d84148f2d8a8f507ebfbc076d7e8fa5fe37c8b4cb207daae8869c1a22b22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `golang:windowsservercore-ltsc2016` - windows version 10.0.14393.2485; amd64

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
