## `python:windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:b02c63a9a329d0fecba43c75796b0519ad307d0a6b1dc931eddfd43418219e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `python:windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull python@sha256:d690951387c3736c16ce96625dff6549f49ec2b44b9649ca0e7347459c4db386
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5761973438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cbe64ece36aaf6d40b19d0616f4ea33ab27bd1bd035ca5ec7f6d5085ae43e10`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 13:39:01 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 15 May 2019 13:39:02 GMT
ENV PYTHON_RELEASE=3.7.3
# Wed, 15 May 2019 13:41:46 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 13:41:47 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 15 May 2019 13:43:28 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 15 May 2019 13:43:29 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eabce9e82d658a5b4a2e70f2e7613af78952beb2fd6facaaaaf7afb177431e07`  
		Last Modified: Wed, 15 May 2019 14:07:14 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bfd83cb9d595e8ad658e58df188f10253209ad9ce6fc5d43c2b088e02027d5`  
		Last Modified: Wed, 15 May 2019 14:07:11 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fee37983e6d1d0c8fb16f72a0781a0e65c473fc28fc931eda67c104072adb4d`  
		Last Modified: Wed, 15 May 2019 14:07:34 GMT  
		Size: 49.8 MB (49848032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f1b8bc36acc0d905ba84b1ea71b94c2be848a14da91d81a5ee67dd9036c1c5`  
		Last Modified: Wed, 15 May 2019 14:07:11 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379db5cc780a4af4c58445e20c9c87f9423e011bc16314ab0faa1aef57cd5a04`  
		Last Modified: Wed, 15 May 2019 14:07:23 GMT  
		Size: 10.0 MB (9998480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acfa54dc153f6b5ded736017dd385783ebeb5823e1795b20f4892c16a839427`  
		Last Modified: Wed, 15 May 2019 14:07:11 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
