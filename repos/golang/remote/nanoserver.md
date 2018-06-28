## `golang:nanoserver`

```console
$ docker pull golang@sha256:dee205f4b12ad40a83bd48de3c987ea7f833505b347dd963dea0b15edfe86e91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `golang:nanoserver` - windows version 10.0.14393.2312; amd64

```console
$ docker pull golang@sha256:7c2e43b9dc029a6bbaffe975c55ec446c3fe737fb68501e5c94f9627caa8e5b2
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.1 MB (558076521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b4adfd0a46c4d0af284889787f44e9ec4638551643a2e1423b62ab79e53dec`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:03 GMT
RUN Install update 10.0.14393.2312
# Sat, 16 Jun 2018 10:30:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Jun 2018 09:36:37 GMT
ENV GOPATH=C:\gopath
# Thu, 28 Jun 2018 09:37:48 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 28 Jun 2018 09:56:33 GMT
ENV GOLANG_VERSION=1.10.3
# Thu, 28 Jun 2018 10:01:49 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 28 Jun 2018 10:01:50 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7a598ed389ee13dc16cb56bd512d2eecc9597d79797803ef538a02b1e12351f`  
		Last Modified: Wed, 13 Jun 2018 00:36:03 GMT  
		Size: 165.7 MB (165749131 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f9707ab6c8a293f32ee933ea8e63868cecf65ddbe69c01c95a66098b88534057`  
		Last Modified: Sat, 16 Jun 2018 10:44:57 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dadd99d80f3aaddd0ea2b1b41a3c7feb3268ccf8c3e253ff7dc27ee842570f4`  
		Last Modified: Thu, 28 Jun 2018 10:25:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1559c66c85f7a1bdd280b039e04f43696ab5c4ee1e46295977e61bcce0cd8d`  
		Last Modified: Thu, 28 Jun 2018 10:25:32 GMT  
		Size: 924.5 KB (924496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:531445fcbe7654b9404b84087e9be0847372675909907e1b0d5728dd54baebff`  
		Last Modified: Thu, 28 Jun 2018 10:31:46 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fbf4d6548ac4d785676792255d29d9b530a4c967fb5f7cf96f452ddf612308`  
		Last Modified: Thu, 28 Jun 2018 10:33:21 GMT  
		Size: 138.7 MB (138707915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655e9c53713c69b4feb5072c198cf0ce6ebcfa6c54e9bca8f66cf310aec55be6`  
		Last Modified: Thu, 28 Jun 2018 10:31:46 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
