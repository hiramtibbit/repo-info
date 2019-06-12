## `python:3-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:178c89bab76e07dffcb3cf8a1d97a32b4536da7cc488f1683de78ff905b8db4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `python:3-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull python@sha256:c995d15f04b998851d2daf16f5f83dfd513dfdcd8292510072b9e48d9a42c54f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5769993839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0420f39fe95b6437ecdf047deb75e6db1bd86c7052565e61d3a3f1332c94fe`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:06:45 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 12 Jun 2019 14:06:46 GMT
ENV PYTHON_RELEASE=3.7.3
# Wed, 12 Jun 2019 14:09:22 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:09:24 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:11:05 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:11:06 GMT
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
	-	`sha256:79b1358d40ed75648f30a0fb691398cde975f1526c1e026774e41aba035f543a`  
		Last Modified: Wed, 12 Jun 2019 14:45:44 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c152cba967d91604dc81dc37ba07ddf3324b6132c0218f892f08891dac09d49`  
		Last Modified: Wed, 12 Jun 2019 14:45:41 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d82eebfbd497c064c3a88bb530fee3848fd69af3ed36e9bd4826ad587ea006`  
		Last Modified: Wed, 12 Jun 2019 14:46:06 GMT  
		Size: 49.9 MB (49934355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2866de1f917c4de4313331083a1958abc175bee03b31f3c7cd0e7b93740223b4`  
		Last Modified: Wed, 12 Jun 2019 14:45:41 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c32b633fc7a2edac4a725676789cb4de53e693c2021629a312d0367f5c329af`  
		Last Modified: Wed, 12 Jun 2019 14:45:55 GMT  
		Size: 10.1 MB (10078785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7da370c761f655f284e466ef954b9bc5a689c8d2195d9cf6638fa63d14cfbc`  
		Last Modified: Wed, 12 Jun 2019 14:45:41 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
