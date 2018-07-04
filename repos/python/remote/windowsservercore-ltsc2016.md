## `python:windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:43b81475d13565aa8e1b6c231577f814f7b1973848888457e0952284e0d55f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `python:windowsservercore-ltsc2016` - windows version 10.0.14393.2312; amd64

```console
$ docker pull python@sha256:ca496e930281973fa2c33ee57c71ded13901395619f4ee8aca8ac88fbd485dcf
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5547045049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accc64c49c731760c2a5143f3f15638053d92429ac920ade87f41ab82ad13986`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:30 GMT
RUN Install update 10.0.14393.2312
# Tue, 03 Jul 2018 00:23:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 04 Jul 2018 09:14:36 GMT
ENV PYTHON_VERSION=3.7.0
# Wed, 04 Jul 2018 09:14:37 GMT
ENV PYTHON_RELEASE=3.7.0
# Wed, 04 Jul 2018 09:17:39 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 04 Jul 2018 09:17:40 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 04 Jul 2018 09:19:16 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 04 Jul 2018 09:19:17 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8e9da9bbe3af2118a0b5eef7a3d649367557d0d3992ed0213c79857b23b4140e`  
		Last Modified: Wed, 13 Jun 2018 00:36:30 GMT  
		Size: 1.4 GB (1414319443 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:650685bf03844147638a02f1b62114e24cf12bf85feb92b6e2273d551a54c647`  
		Last Modified: Tue, 03 Jul 2018 01:20:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb99ae11ef926e61aba2b9b31fd33723d6ec253acc7cc00324adfcad351d0107`  
		Last Modified: Wed, 04 Jul 2018 09:41:40 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef359e9f84307075ef9e158d9a22ca402731eab62a8fb9adff0fd6d9b01214a2`  
		Last Modified: Wed, 04 Jul 2018 09:41:36 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0586de3f4cfd549c7f491e082fdf5180f9a138df5ff42c57b394359ec0de37b`  
		Last Modified: Wed, 04 Jul 2018 09:41:59 GMT  
		Size: 53.0 MB (52964234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bb5f31f95481774fd5b2027d6aca69c98ca662d493172a4843dfda9f56aa4d`  
		Last Modified: Wed, 04 Jul 2018 09:41:36 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b33142f3d14e4f2dc6d493510fc74bc20e7392426242ee1059e0bf03c3d5ac`  
		Last Modified: Wed, 04 Jul 2018 09:41:47 GMT  
		Size: 9.8 MB (9769494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf18075b955493f8de2afc0b6e0ecd15ca60966a8b0dbe3a97dba09d387ba7e1`  
		Last Modified: Wed, 04 Jul 2018 09:41:36 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
