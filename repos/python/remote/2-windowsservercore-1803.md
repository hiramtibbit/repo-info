## `python:2-windowsservercore-1803`

```console
$ docker pull python@sha256:b5e1d42546dd7421d1acb0ef52bcbf48280f5a6ce7af9b63712b8bd0786543d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `python:2-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull python@sha256:09e1875a0b520af50f4723b5e8663d5f7211e1d2d24dab4e806ebf18a153e084
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2348279461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d9844785252522a9f55afbd028c48740854e5a4951779775526193b390f7a9`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 14:00:47 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 15 May 2019 14:00:48 GMT
ENV PYTHON_RELEASE=2.7.16
# Wed, 15 May 2019 14:02:45 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:02:47 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 15 May 2019 14:03:52 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:04:24 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 15 May 2019 14:04:25 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58926cf3a3d8910b684e719d717b8a6e972d46d014464c94ee912101e6dfb4e2`  
		Last Modified: Wed, 15 May 2019 14:10:48 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69950f4c2467468f6b291e0642bc66fc997941bb1fb624ea4ebb290874b87f29`  
		Last Modified: Wed, 15 May 2019 14:10:48 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8b3dcd5905ae526e1ac9aa40632c995c7c0439789b71e4a99fb21ed5a4cc29`  
		Last Modified: Wed, 15 May 2019 14:11:06 GMT  
		Size: 38.8 MB (38782348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb8aebfdbe48e8f985f30e7a375ad62c97438fc3646f80aca2a41b1d6a31c3d`  
		Last Modified: Wed, 15 May 2019 14:10:46 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb6cb5faa9a44207e29f03bc5516c7d9ce51657af237bd1197f0bf5efa3ca15`  
		Last Modified: Wed, 15 May 2019 14:10:57 GMT  
		Size: 4.9 MB (4863857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da63e829cd289b03dd5ddfc0366d58aa8ad438de26c3f2e3ffa49f640c87815`  
		Last Modified: Wed, 15 May 2019 14:10:48 GMT  
		Size: 2.4 MB (2377112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97a0f306c5b2fb1fde77b3dc6dcc644be0cbd5d1b2f966c4dfdbabc928e1e19`  
		Last Modified: Wed, 15 May 2019 14:10:46 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
