## `python:rc-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:5abb4de7c69db23937eb08f93a7b210f84e2b8dac961ec427034a0f9113aed64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `python:rc-windowsservercore-ltsc2016` - windows version 10.0.14393.2125; amd64

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
