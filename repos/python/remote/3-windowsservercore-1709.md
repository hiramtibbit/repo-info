## `python:3-windowsservercore-1709`

```console
$ docker pull python@sha256:8c0a4cb047ff7c95b334b34af7c185b7a830997cd084484e071f95d058fdf45d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.309; amd64

### `python:3-windowsservercore-1709` - windows version 10.0.16299.309; amd64

```console
$ docker pull python@sha256:1f4c2aebcbaedee8971a10173115feda03547ae0855db493e11f787085deaeb8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3076435508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0bbddbaf7af658cd97af3b1e4225f95a07c7cd425cb449d04d4b5b7fedf06d2`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 05 Mar 2018 03:12:43 GMT
RUN Install update 10.0.16299.309
# Wed, 14 Mar 2018 02:30:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 02 Apr 2018 16:35:37 GMT
ENV PYTHON_VERSION=3.6.5
# Mon, 02 Apr 2018 16:35:38 GMT
ENV PYTHON_RELEASE=3.6.5
# Mon, 02 Apr 2018 16:38:32 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Mon, 02 Apr 2018 16:38:33 GMT
ENV PYTHON_PIP_VERSION=9.0.3
# Mon, 02 Apr 2018 16:39:58 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Mon, 02 Apr 2018 16:40:00 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:85f53e48ded4065a2dbea91a8444ffe14a44776674c9e437439702f9982f045f`  
		Last Modified: Tue, 13 Mar 2018 01:07:51 GMT  
		Size: 745.0 MB (745003512 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1752d0f4f0a05997b1c402225ed814b05d5b6704edffd353a828a56dc79c64e5`  
		Last Modified: Wed, 14 Mar 2018 16:55:14 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc08ea1942f1da95d4cb9db82b2613ee23ef6a657f38cfd647922247d7e684a`  
		Last Modified: Mon, 02 Apr 2018 16:41:42 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e16b24013070ead0bad6ee856d7e2301f8e86da1f6cb45668965ef1a80b8af`  
		Last Modified: Mon, 02 Apr 2018 16:41:37 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7edbbfbc06a03dc992d49440fb47be12af93436cf79848615cfd99f260a31eb`  
		Last Modified: Mon, 02 Apr 2018 16:42:05 GMT  
		Size: 47.7 MB (47694702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8344b51e3df1d67dc025397dd61e7788ada8dde81abc6239f751b8ff570c2d0d`  
		Last Modified: Mon, 02 Apr 2018 16:41:37 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e58d09fc6b4ff20095611365b2c60817f94da660a3d9dd3a23c0d7be6d76e17`  
		Last Modified: Mon, 02 Apr 2018 16:41:50 GMT  
		Size: 9.4 MB (9430770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f043cda21911a8abf2e7b4d7b0a3ba6749fd6293d358cfc8cb2600b529f9f`  
		Last Modified: Mon, 02 Apr 2018 16:41:37 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
