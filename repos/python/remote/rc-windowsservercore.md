## `python:rc-windowsservercore`

```console
$ docker pull python@sha256:af156c68d0d45ef02e6c5db42d6af34feb06ef5f6c8a1e068fa96877a1f37e96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64
	-	windows version 10.0.16299.309; amd64

### `python:rc-windowsservercore` - windows version 10.0.14393.2125; amd64

```console
$ docker pull python@sha256:2de8e837f7496f1b4f16aa68587db8a2e1e9825c74bd49abc45f2565c4b23250
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5451025600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f0a15666a4c267b6bac5ca959a7240590bfc5a72563fd2a5e92090271ee2790`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:53:23 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 02:24:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 16:25:58 GMT
ENV PYTHON_VERSION=3.7.0b2
# Wed, 14 Mar 2018 16:25:59 GMT
ENV PYTHON_RELEASE=3.7.0
# Wed, 14 Mar 2018 16:29:03 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 14 Mar 2018 16:29:04 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Mar 2018 16:30:48 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 14 Mar 2018 16:30:49 GMT
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
	-	`sha256:4e80ec40a60ed09138926f0b3acdb65539603d924c1a843be23a664e50d7f1b7`  
		Last Modified: Wed, 14 Mar 2018 16:54:26 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fcd468497b41ce080efaa99c8c2f83589570ee50d3427bf72bda59325c4359`  
		Last Modified: Wed, 14 Mar 2018 16:54:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa1b128c0334a8785fa73e0b73d07950ef96dfb6d9ceed88dddbfff14bb281f`  
		Last Modified: Wed, 14 Mar 2018 16:54:56 GMT  
		Size: 52.5 MB (52459961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d4112f12f95753f5142fbb1233200a059f26e63171d57994aadf9a45698715`  
		Last Modified: Wed, 14 Mar 2018 16:54:23 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbd0697a120437401cb963c13f8844f03148c1d5d556ed095107192cf73bf5e`  
		Last Modified: Wed, 14 Mar 2018 16:54:37 GMT  
		Size: 9.4 MB (9378809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53325c6a53772d44fdf83bc0e70e9c5676609c116d38e203da9e013ff3f2c65`  
		Last Modified: Wed, 14 Mar 2018 16:54:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-windowsservercore` - windows version 10.0.16299.309; amd64

```console
$ docker pull python@sha256:a212f6a87f3f874263026a521a0db5ceef3fbe028ac9274c174037194f0b6c6a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3075981555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12a226e70aa7cd1e7ba15904f5ae5899e25cb6e02a98cb359b21e7960fdd7bd3`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 05 Mar 2018 03:12:43 GMT
RUN Install update 10.0.16299.309
# Wed, 14 Mar 2018 02:30:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 16:30:57 GMT
ENV PYTHON_VERSION=3.7.0b2
# Wed, 14 Mar 2018 16:30:58 GMT
ENV PYTHON_RELEASE=3.7.0
# Wed, 14 Mar 2018 16:33:26 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 14 Mar 2018 16:33:27 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Mar 2018 16:34:51 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 14 Mar 2018 16:34:52 GMT
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
	-	`sha256:611524994bbd4758fe7fb9cb7b8c0e748d52248c41b893bc727166970cfbe94e`  
		Last Modified: Wed, 14 Mar 2018 16:55:14 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f079736bc3a57772a64a9403be9d109d53ecc8c08ae719fce46659756d88c7d0`  
		Last Modified: Wed, 14 Mar 2018 16:55:12 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f9b94a361f81628bbe7e6600811da1e3b5396686907bdb7be7d3b22d2b90f3`  
		Last Modified: Wed, 14 Mar 2018 16:55:44 GMT  
		Size: 47.7 MB (47655686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e875fb43c34d52d1d733415a31031235e19e66efef038523fe443c3be014a9cb`  
		Last Modified: Wed, 14 Mar 2018 16:55:11 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe87e9248034de734532560800f5898143fa004b39a14448f3bde20db0c3959`  
		Last Modified: Wed, 14 Mar 2018 16:55:25 GMT  
		Size: 9.0 MB (9015795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeabd84c56ea584cb50d00dd88fdd99b90673c805c1a8386a4bdda9fdb164379`  
		Last Modified: Wed, 14 Mar 2018 16:55:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
