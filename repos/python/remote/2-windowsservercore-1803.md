## `python:2-windowsservercore-1803`

```console
$ docker pull python@sha256:b9832cc8f29a3266b56a8df5f0154f291830b1a4a0aa3d0aa4d2bbe8c15e569c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `python:2-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull python@sha256:1cf7da045ccc18dcd157ca7a9ba8c7582e19100412c2fe7ed961691a1c11dfb4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2302279062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a80a7f1a0c714693b24fd98e4da246760fcef3a217c80693e7078b4ddb7f363`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 11 Apr 2019 23:53:25 GMT
ENV PYTHON_VERSION=2.7.16
# Thu, 11 Apr 2019 23:53:26 GMT
ENV PYTHON_RELEASE=2.7.16
# Thu, 11 Apr 2019 23:55:26 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Thu, 11 Apr 2019 23:55:27 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Thu, 11 Apr 2019 23:56:36 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 11 Apr 2019 23:57:11 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 11 Apr 2019 23:57:12 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904236a5120d1e0a1fdfec8ad1af8128f4cb7f6fa879f82ca1bff46f93a8e8d5`  
		Last Modified: Fri, 12 Apr 2019 00:12:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2b286aa37dce023b6ba2bce7bb07a9e0400251fe0758355a2a21b903a0c38e`  
		Last Modified: Fri, 12 Apr 2019 00:12:20 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe1e76dd60a02d2c36efee210ce1f6873237399b6c93286d3cbe140e1edc95e`  
		Last Modified: Fri, 12 Apr 2019 00:12:38 GMT  
		Size: 38.7 MB (38731475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3434e4c5b98bb6578077995e347c4d0af4772f036aa3cbd3a6315a8751f5be`  
		Last Modified: Fri, 12 Apr 2019 00:12:17 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce43cc7ec9dd0fab235ea24923bcef88e3732e571ece43af31a956c6cc61a61`  
		Last Modified: Fri, 12 Apr 2019 00:12:29 GMT  
		Size: 4.8 MB (4834462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3433a4c8d6ffad8f060d76ec9d2b8ccd583c09d0666c5402d5dcd1495023ac9f`  
		Last Modified: Fri, 12 Apr 2019 00:12:18 GMT  
		Size: 2.4 MB (2356479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0ad05ae6fe2913cb33620c93aad704f83a5304e3e6b778d6fad1c0798c9562`  
		Last Modified: Fri, 12 Apr 2019 00:12:17 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
