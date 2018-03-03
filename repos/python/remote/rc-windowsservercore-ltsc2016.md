## `python:rc-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:82edd90d5d5d7395af8ecf79dce119228e1d7aed7015eeb63290ee11b38d6f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `python:rc-windowsservercore-ltsc2016` - windows version 10.0.14393.2068; amd64

```console
$ docker pull python@sha256:b1929ae75cc0508cb9278bd5862192fd7686f188f4c2779d2c80d6388091fb2e
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5439857492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6daa7add82a2b8bc5bb6305a9c7bee287143febaa758ca0139e0d5eb7a6e486d`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 03 Mar 2018 17:25:58 GMT
ENV PYTHON_VERSION=3.7.0b2
# Sat, 03 Mar 2018 17:25:59 GMT
ENV PYTHON_RELEASE=3.7.0
# Sat, 03 Mar 2018 17:29:35 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Sat, 03 Mar 2018 17:29:37 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 03 Mar 2018 17:31:19 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Sat, 03 Mar 2018 17:31:20 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41179ed4225c43161f7e5ca163a0625d844bee3ea9c618f72febb31b2f846c0`  
		Last Modified: Sat, 03 Mar 2018 17:37:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd322c0deaa4a717cc258910bdddb7d222554c7ea4ecd22a0abd24f96ebd04fd`  
		Last Modified: Sat, 03 Mar 2018 17:37:30 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b315ae613989c7c4e824da2c0eed2f959e9a39297cde675ed390f463f3ed71e3`  
		Last Modified: Sat, 03 Mar 2018 17:37:56 GMT  
		Size: 52.4 MB (52384356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987d801c670ee078052c9b4434d1ce6ffa617fb6d162b55c4c715dc3e5fd0da2`  
		Last Modified: Sat, 03 Mar 2018 17:37:30 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca70dfc115c1d6868582b58153c38f5eca892900f9679c16cfd050dd0846fa51`  
		Last Modified: Sat, 03 Mar 2018 17:37:40 GMT  
		Size: 9.3 MB (9325214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0475cbb2c6ac85bff8a29a4d5813b4202260b5f44602efdc0d6d6f9754d3ff0`  
		Last Modified: Sat, 03 Mar 2018 17:37:30 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
