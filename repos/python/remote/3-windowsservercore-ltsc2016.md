## `python:3-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:e96fb10344645ab8a5a12f3cf1c42ec4aa142fd126e7df6e2742905771548ec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `python:3-windowsservercore-ltsc2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull python@sha256:261d5bea03d994ddb0d5c2c0f2eb97a33865909f9e6fe072df692b5d0a8fd368
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5451080048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71ec0945360b454742b295eb65f736648bb7cc6b2ed5672fb3150287347a906c`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:53:23 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 02:24:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 16:35:10 GMT
ENV PYTHON_VERSION=3.6.4
# Wed, 14 Mar 2018 16:35:11 GMT
ENV PYTHON_RELEASE=3.6.4
# Wed, 14 Mar 2018 16:38:08 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Tue, 20 Mar 2018 16:30:01 GMT
ENV PYTHON_PIP_VERSION=9.0.2
# Tue, 20 Mar 2018 16:31:55 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 20 Mar 2018 16:31:56 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:133e38d368dd63f5c9da410ed1656fa9c1f3322a661906f3c2a86b4cd3ff292b`  
		Last Modified: Tue, 13 Mar 2018 00:53:23 GMT  
		Size: 1.3 GB (1319194954 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2b7b9f0500dd2fdcc737e4b1fc4f4a71cddd6f8f02c79660fe8e4d2815db6846`  
		Last Modified: Wed, 14 Mar 2018 16:54:26 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceea15f42cba4fd0e0ee47da59bcb69131ffeb5fa44c63f131d09be2397f9713`  
		Last Modified: Wed, 14 Mar 2018 16:56:01 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f103ccb39f9238717d91b8d3907976b794d7b02ca24fc34827280cfe77f25`  
		Last Modified: Wed, 14 Mar 2018 16:55:57 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2391a20b36560eaf7f6f3c4a08991d6bef7bcb3128c641525b528dc206534e8`  
		Last Modified: Wed, 14 Mar 2018 16:56:27 GMT  
		Size: 52.1 MB (52086899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99debe91d589002fc5ddb71c9b5dd2f1ff48615396a6ca12f4b16c5de3c9f558`  
		Last Modified: Tue, 20 Mar 2018 16:41:13 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a49c491891f567369309e932090c884c5014643fbb6e735d474044d920e60a`  
		Last Modified: Tue, 20 Mar 2018 16:41:21 GMT  
		Size: 9.8 MB (9806302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ff3623670c055ad4d3b54e6fc3035d80856aa87b4e5cf9812508e824b6a076`  
		Last Modified: Tue, 20 Mar 2018 16:41:13 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
