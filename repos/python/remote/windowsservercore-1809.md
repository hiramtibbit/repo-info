## `python:windowsservercore-1809`

```console
$ docker pull python@sha256:9b856611b24af9e8c6145470b028c2caf3ad34601470f363d943fa482231ba4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.379; amd64

### `python:windowsservercore-1809` - windows version 10.0.17763.379; amd64

```console
$ docker pull python@sha256:11494727c55b4bd14cf5ffa411af7bc13009e56a32c788d0df5cc67a8541d0e7
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2209403753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a176bc6ea78a2ccdd0735a4fd6d69658cedf7a2ebd1752997ad473cb771dc11e`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 09 Mar 2019 03:10:13 GMT
RUN Install update 1809-amd64
# Sat, 16 Mar 2019 09:52:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 20 Mar 2019 09:49:49 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 20 Mar 2019 09:49:50 GMT
ENV PYTHON_RELEASE=3.7.2
# Wed, 20 Mar 2019 09:52:17 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:52:18 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 20 Mar 2019 09:53:27 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:53:28 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d48f500354393ec6614f6435639636db175e3ac6c3d1a3d1857b609789de7a7d`  
		Last Modified: Tue, 12 Mar 2019 22:36:05 GMT  
		Size: 620.8 MB (620755432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e195200ec7c843146b67b39b26ec25466f3b96bce8db32ff3a809a25fdece80`  
		Last Modified: Sat, 16 Mar 2019 10:45:02 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de2c033b83311cf83caa07408c58655ea0da3e0ad7b6fef06b2bc2253874e6a`  
		Last Modified: Wed, 20 Mar 2019 11:08:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c15fabfecc033c86797263f23707dd69679ff3c56c37a141035afffbded978`  
		Last Modified: Wed, 20 Mar 2019 11:08:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f932f222154b3b1129477a2437d3949b1d5d32ac74e9fb766e41c311ed08de`  
		Last Modified: Wed, 20 Mar 2019 11:08:57 GMT  
		Size: 48.8 MB (48844444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc68c4450ed3888e83664d48f9fa5fc0a8ec8b22340cc61905fcdcd96a5dc7af`  
		Last Modified: Wed, 20 Mar 2019 11:08:29 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f7c99e2e6f4ed133b379774241f6163c12c357bbfd270a15fcec870801146a`  
		Last Modified: Wed, 20 Mar 2019 11:08:43 GMT  
		Size: 5.1 MB (5112519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883d1b9908af64e4e1336f309f51000e8b0bf537f6a2817810734a8f1098c4ad`  
		Last Modified: Wed, 20 Mar 2019 11:08:29 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
