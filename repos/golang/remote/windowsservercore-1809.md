## `golang:windowsservercore-1809`

```console
$ docker pull golang@sha256:f67cef51c71ce253c8828f0a90260df302367861bdbf373f5a21e36d3be589eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `golang:windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:032588f977a09ede57d2dbb5711e4bdd9d2c62eb7f847ec7b9f89b2c3235a9e1
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2552112152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1bee2a6917497679544c5302dfea75e3459c27d617c7dd637f2752853b99c6a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 19:25:49 GMT
ENV GOLANG_VERSION=1.12.6
# Wed, 12 Jun 2019 19:31:04 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '9badf7bbc0ed55f2db967434b033a2cddf2e46dbdc5bb8560d8fde019e8e19d3'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 19:31:06 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe207467fb2e31a6bb005743946cdcddecefbe47525559c93043db7973ec0b87`  
		Last Modified: Wed, 12 Jun 2019 19:52:11 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3143ccd766437a55bc16e0f8c892075dad7f27c1e42b4ac0d0e0febb6c266896`  
		Last Modified: Wed, 12 Jun 2019 19:53:34 GMT  
		Size: 137.0 MB (136972221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9218d97c8a5465ee99a2aa225e92d6d2d8906e45114f1903715b5270ce338bb3`  
		Last Modified: Wed, 12 Jun 2019 19:52:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
