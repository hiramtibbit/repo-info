## `python:rc-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:3de3e2a54f90b20d772122b2f194c88ad6501299be51bd22981cb146834c28f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `python:rc-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull python@sha256:dba31010408be2d47123ff4464754e65332e4d3bf360cae2d82fa9202e4205e3
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5776438458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efbfb9f8a5e7d1507f370403de78e9ab13ceb60f46c9a8cf1c51b5f76564a596`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 13:54:33 GMT
ENV PYTHON_VERSION=3.8.0b1
# Wed, 12 Jun 2019 13:54:34 GMT
ENV PYTHON_RELEASE=3.8.0
# Wed, 12 Jun 2019 13:57:16 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:57:18 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 13:59:01 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:59:03 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aacb341856c34ce417de41c47d73695295ab8996eca656817cd34db42c8634`  
		Last Modified: Wed, 12 Jun 2019 14:43:22 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d933aa1beca6394df9e0522fc4b881742445f72c1d911cfd25d01036a687df`  
		Last Modified: Wed, 12 Jun 2019 14:43:19 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9a6da1fa2d773555b30f89ddd29577e14c0f8148491cf017618c058b5caf57`  
		Last Modified: Wed, 12 Jun 2019 14:43:45 GMT  
		Size: 56.3 MB (56335734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8682c1f886a647643ebdf6e6c1bb3c6dc75f766fd309c3e20703a8fb9854cdde`  
		Last Modified: Wed, 12 Jun 2019 14:43:19 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfd023f0be5e2421f49d1e12a460e0e47b06ca76d62be2c17643d75853e8f9b`  
		Last Modified: Wed, 12 Jun 2019 14:43:31 GMT  
		Size: 10.1 MB (10122024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5447578cf586d11b16bbab211f487e6359b96aa395a0917138029c844e67c4e6`  
		Last Modified: Wed, 12 Jun 2019 14:43:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
