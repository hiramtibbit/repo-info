## `golang:rc-nanoserver-sac2016`

```console
$ docker pull golang@sha256:c3eb3bacc0eb5c63f099595daa72aa2e9b5643cdded5812416e09e07cd98b389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `golang:rc-nanoserver-sac2016` - windows version 10.0.14393.2312; amd64

```console
$ docker pull golang@sha256:5efcec74ea7a29ac0324bfce81b01afb959cc7da79a81d8f6dc2b5470be65d2e
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.5 MB (592530370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a3fca106f981d192d9e51a755cca1efe23b58966efe2ccdfa6a81ac535eb2e`
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
# Thu, 28 Jun 2018 09:37:49 GMT
ENV GOLANG_VERSION=1.11beta1
# Thu, 28 Jun 2018 09:42:56 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1eeb874a919143f3e62b641ccd5ebbfd1b3d4f2184de1d6497f7b2b6df996960'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 28 Jun 2018 09:42:58 GMT
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
	-	`sha256:5ac9987c9333ff0258af4f8088d82bc9d681e4aeefa7b07ed9bdf3a516e87145`  
		Last Modified: Thu, 28 Jun 2018 10:25:31 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59663017f347545e3e55eae9c5d8ea68ead4762a60f90f284330031f9f05eb9b`  
		Last Modified: Thu, 28 Jun 2018 10:27:28 GMT  
		Size: 173.2 MB (173161756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dabb06818750ac9cda8167173d72cea6f5a23ab104e521e531fde948f34fe4c`  
		Last Modified: Thu, 28 Jun 2018 10:25:31 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
