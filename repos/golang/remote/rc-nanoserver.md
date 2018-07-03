## `golang:rc-nanoserver`

```console
$ docker pull golang@sha256:1a41979c8c0695d47cbd79d9d9d8eddcf2e90fbe1b40a2f2ade4c0b0d41f9d0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `golang:rc-nanoserver` - windows version 10.0.14393.2312; amd64

```console
$ docker pull golang@sha256:ff9ad944b443befc0be35f539a4c6a13f053e0c944e7f222b8b188bbf76d2545
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.6 MB (595558155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6c8a057f501e2662bbc96c244338fb09d7480339d1e12bef67a038cee30b5c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:03 GMT
RUN Install update 10.0.14393.2312
# Tue, 03 Jul 2018 00:41:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Jul 2018 00:41:12 GMT
ENV GOPATH=C:\gopath
# Tue, 03 Jul 2018 00:41:54 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 03 Jul 2018 00:41:56 GMT
ENV GOLANG_VERSION=1.11beta1
# Tue, 03 Jul 2018 00:47:27 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1eeb874a919143f3e62b641ccd5ebbfd1b3d4f2184de1d6497f7b2b6df996960'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 03 Jul 2018 00:47:29 GMT
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
	-	`sha256:3b6d1a1bf3243ae76116ec6df1f57dd3b3ada11aacf7e7bfcde343010a955a70`  
		Last Modified: Tue, 03 Jul 2018 01:24:09 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd20b8842cf41b8e332de31770d69029374300cfe278b0d40a519a000c10763e`  
		Last Modified: Tue, 03 Jul 2018 01:24:07 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9e53fa417904b7f3f9f960c9bfa19456a67bb67e7a4db7034859fe30c64d9a`  
		Last Modified: Tue, 03 Jul 2018 01:24:09 GMT  
		Size: 925.2 KB (925154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b0ef444f09538d001bfa361f1e7494edc8b557dfffa41f27665689c37fdd60`  
		Last Modified: Tue, 03 Jul 2018 01:24:07 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4883e27b225e3f94d91212869766a1dcfbaa4da2808279c7353da105fa1d4b`  
		Last Modified: Tue, 03 Jul 2018 01:25:31 GMT  
		Size: 176.2 MB (176188874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abe902b83ab9f65ba6417795037c89c2759c6c8e7482bd37812454c5644eb65`  
		Last Modified: Tue, 03 Jul 2018 01:24:07 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
