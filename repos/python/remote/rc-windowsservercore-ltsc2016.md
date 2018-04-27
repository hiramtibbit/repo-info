## `python:rc-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:ba8166495083cd3cc96b11e3f47b2565cbb28fcbb3d07fcbfb53baeb9377164f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `python:rc-windowsservercore-ltsc2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull python@sha256:db9398b28d8d6c9a0c4a7b89ad3fc4802432e5fd5ddc4dc538f1b3c03976ab15
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5456801911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e8fa7597157a7a3b4d1909e3bd6a014696e2ce24db521efb1094f07a9dc5d7`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 27 Apr 2018 09:28:25 GMT
ENV PYTHON_VERSION=3.7.0b3
# Fri, 27 Apr 2018 09:28:25 GMT
ENV PYTHON_RELEASE=3.7.0
# Fri, 27 Apr 2018 09:30:58 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Fri, 27 Apr 2018 09:30:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 27 Apr 2018 09:32:23 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 27 Apr 2018 09:32:24 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18aa6f03a1b48ce0a7e777f254668d6701bbae8133196073cc76758059c7aa92`  
		Last Modified: Fri, 27 Apr 2018 09:54:29 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90e1721c119d17362f9afde38fe3aa6a9b860f5eb655c9d52c88edcef32f839`  
		Last Modified: Fri, 27 Apr 2018 09:54:26 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b764b247644327d4414e01957efffb7f907706e4c7afbe59adecea9847f538f`  
		Last Modified: Fri, 27 Apr 2018 09:54:52 GMT  
		Size: 52.8 MB (52823160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44bc5045820eefbfdc00e2aaf3d95f350556e38e5beaf82ca05609522125327`  
		Last Modified: Fri, 27 Apr 2018 09:54:26 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75cb43cdb6872b5152d1e6f7999bb13c81115cc23679656a2668dfc2573a28b5`  
		Last Modified: Fri, 27 Apr 2018 09:54:36 GMT  
		Size: 9.8 MB (9759376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0f511a247bfbfeed2acefc4bc71ee6fd4c71a2eb65d84e10d3669abf93c1b1`  
		Last Modified: Fri, 27 Apr 2018 09:54:26 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
