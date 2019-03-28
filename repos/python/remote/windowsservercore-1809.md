## `python:windowsservercore-1809`

```console
$ docker pull python@sha256:0235f67c283ba01eb0e91efd47af16c10888b24c8c44597b7356d8d19a1928d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.379; amd64

### `python:windowsservercore-1809` - windows version 10.0.17763.379; amd64

```console
$ docker pull python@sha256:d25da6be31c4b43aa11ac25c375a57488409ce1ff6ce02212bcc1f0d5eadbc5a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2209515053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa312e57ca3baf893311a5db9d0d2ecf4e9f654e6170d3c8020c6927df5fcbda`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 09 Mar 2019 03:10:13 GMT
RUN Install update 1809-amd64
# Sat, 16 Mar 2019 09:52:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 09:49:04 GMT
ENV PYTHON_VERSION=3.7.3
# Thu, 28 Mar 2019 09:49:05 GMT
ENV PYTHON_RELEASE=3.7.3
# Thu, 28 Mar 2019 09:51:16 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 28 Mar 2019 09:51:18 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Thu, 28 Mar 2019 09:52:21 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 28 Mar 2019 09:52:22 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d48f500354393ec6614f6435639636db175e3ac6c3d1a3d1857b609789de7a7d`  
		Last Modified: Tue, 12 Mar 2019 22:36:05 GMT  
		Size: 620.8 MB (620755432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e195200ec7c843146b67b39b26ec25466f3b96bce8db32ff3a809a25fdece80`  
		Last Modified: Sat, 16 Mar 2019 10:45:02 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8877e4d6c90b5427ce3b764bd59e7b471d07ccd5f6935a0ca60010513a81b6f`  
		Last Modified: Thu, 28 Mar 2019 09:59:02 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4742dfce0caeeab6341e57c5b3f59658a4507cbdaafebc675ca88de40c90a55`  
		Last Modified: Thu, 28 Mar 2019 09:58:59 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85af1b7d79156876729cd0177365f34860c2e3620ddf922ec1a62d581210e61`  
		Last Modified: Thu, 28 Mar 2019 09:59:22 GMT  
		Size: 49.0 MB (48954450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ae711dbc965d3f9f749072dd295a1e488c380eafb60eb1b67e6919d98685c`  
		Last Modified: Thu, 28 Mar 2019 09:58:59 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09eec820a9fda559dad481ad40e27e18c03cc43a648137f93d6a22ecc492a097`  
		Last Modified: Thu, 28 Mar 2019 09:59:09 GMT  
		Size: 5.1 MB (5113804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5fefbfdb833ada239b18dd003a54e500af5efd15b290696e2706d295347f695`  
		Last Modified: Thu, 28 Mar 2019 09:58:59 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
