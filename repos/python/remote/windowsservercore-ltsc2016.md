## `python:windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:9f9d594ea1f30ec973cba72a0a486089e5e96d5dffe311b059122c143f7e66bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64

### `python:windowsservercore-ltsc2016` - windows version 10.0.14393.2665; amd64

```console
$ docker pull python@sha256:8f832835bac2ad6c234a73d7f23c4287650402e7fb4991f53b1cfb63460bae96
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5697843079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e43f76ddf2af60dd3545b5eb4b8420dac1404181091b0bef92577ead1eeffb3`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Tue, 25 Dec 2018 17:17:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 17:17:57 GMT
ENV PYTHON_VERSION=3.7.1
# Tue, 25 Dec 2018 17:17:58 GMT
ENV PYTHON_RELEASE=3.7.1
# Tue, 25 Dec 2018 17:21:23 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 17:21:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 25 Dec 2018 17:23:28 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 17:23:29 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:88c3d7be4c2760e750ccd244f2cd79c32fc9e1534640817aad858156500c4e0a`  
		Last Modified: Tue, 25 Dec 2018 17:51:28 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52facd72716abfa56d3a158ae665c4b8b64d7c18c9574a6fd38cd36198d5419`  
		Last Modified: Tue, 25 Dec 2018 17:51:29 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc56895df04b9ea272f77af2723047e60341d70866dfd39cfccb5a653a83243`  
		Last Modified: Tue, 25 Dec 2018 17:51:25 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4497480dbf7caac74889b4dbbe83270e3cd5d47507437feb1e22e9e52327b23`  
		Last Modified: Tue, 25 Dec 2018 17:51:52 GMT  
		Size: 53.1 MB (53130709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ed26003f8b3cabc42a1394fa8e1241d36ab4356a61b155d2107884816aafc4`  
		Last Modified: Tue, 25 Dec 2018 17:51:25 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a6eeb7fdbc9c81cb1eb145b324f12a889bf12e1e8180da208676d38d9005fe`  
		Last Modified: Tue, 25 Dec 2018 17:51:38 GMT  
		Size: 10.0 MB (9979151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31b819b7a037d7579daee9b8119a84705d4e628a3d3ae9108dad3da3b3bce81`  
		Last Modified: Tue, 25 Dec 2018 17:51:25 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
