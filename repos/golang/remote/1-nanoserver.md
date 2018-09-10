## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:7211b2dfe70f7659f925f3cf6a502f9c9841554f931fbec2b42a70dd5f2f3b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `golang:1-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull golang@sha256:58d48271516ad1852a70d8f856ed86ca7e8fc00f5ab1b35c21e35d36beb72706
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.9 MB (555898747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce5e0d0014958c776ed757a58d9eb50c49afedac644a15387aec6d144517bea`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:43:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Aug 2018 10:59:52 GMT
ENV GOPATH=C:\gopath
# Thu, 23 Aug 2018 11:00:46 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 27 Aug 2018 22:44:31 GMT
ENV GOLANG_VERSION=1.11
# Mon, 27 Aug 2018 22:50:38 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '29f9291270f0b303d0b270f993972ead215b1bad3cc674a0b8a09699d978aeb4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 27 Aug 2018 22:50:40 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82e4f9af58cb76c5ad8ef2e3e09f4256ab17e1c38cc0ed0d04cb7b509b76fe56`  
		Last Modified: Wed, 15 Aug 2018 09:55:53 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7db0e606747dad0f959f4b197a3d5689196710d305ce33f5070ef7c25b5be28`  
		Last Modified: Thu, 23 Aug 2018 12:01:46 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014e815f07fec289d73b99033d1558f1e990b566bb274025a610e8b2d650680a`  
		Last Modified: Thu, 23 Aug 2018 12:01:48 GMT  
		Size: 935.3 KB (935305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c12e25692853958031e0b4cc4e4ac2f56180d68d53126cfedac059966ef0eb0`  
		Last Modified: Mon, 27 Aug 2018 23:19:36 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbb809e9ec660403e298bbec9e30371442b76b6520fbeb91f0cfbcaa333d88`  
		Last Modified: Mon, 27 Aug 2018 23:21:10 GMT  
		Size: 134.5 MB (134484398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba4e1cc03c5cf0424dc07035aba02cc5ae0a7dfd1935bb3fd8c1e7d992835e2`  
		Last Modified: Mon, 27 Aug 2018 23:19:37 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
