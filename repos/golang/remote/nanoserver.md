## `golang:nanoserver`

```console
$ docker pull golang@sha256:75bbbbc9839f0c1ae03abbcab042a499aa9a1fd0156929f602d692a37e7aa518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `golang:nanoserver` - windows version 10.0.14393.2363; amd64

```console
$ docker pull golang@sha256:b17b21c5d30b3372a432bbf7ca1c61440e05740d73a1431d50efbbe6f98fba04
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **556.1 MB (556149035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a79ffcb9d3d6e5073e2b224a1a83a5e686d0a4799efb94c2770660ff7ef26c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 09:44:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jul 2018 10:15:39 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jul 2018 10:16:28 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 13 Jul 2018 10:38:32 GMT
ENV GOLANG_VERSION=1.10.3
# Fri, 13 Jul 2018 10:43:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 13 Jul 2018 10:43:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d4a9b16fd154d065649f42ee7ac674690d46dbe6ad2398a58166c37c85ca64ed`  
		Last Modified: Tue, 10 Jul 2018 21:16:01 GMT  
		Size: 166.8 MB (166830055 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c00083f7064e157d9aa12ed2cde81fc21da017ab3b1d2d05cf45ee282d465ddd`  
		Last Modified: Wed, 11 Jul 2018 09:56:07 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6f6a14ad0e696cedcbe505e01a2bf1818e607a6ec5a52345bea2ceea9958a5`  
		Last Modified: Fri, 13 Jul 2018 11:09:33 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f096412574b846b311a8fc2b4f4e10b0d97a38c502b8db601d0d5f3b31ed8e0`  
		Last Modified: Fri, 13 Jul 2018 11:09:34 GMT  
		Size: 929.3 KB (929303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02068a3895064cb872a5e8101e4c8618930e94b7ac71c1ab415a3ee4b1b9baf3`  
		Last Modified: Fri, 13 Jul 2018 11:16:08 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d9047c4e96054e24964c95156566f0ebd31e77801c226dad44b72d8ee17f84`  
		Last Modified: Fri, 13 Jul 2018 11:17:14 GMT  
		Size: 135.7 MB (135694675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ab19881f6702409bb0eb2bff5656390b8547e71ca6e337514333252c0a246b`  
		Last Modified: Fri, 13 Jul 2018 11:16:08 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
