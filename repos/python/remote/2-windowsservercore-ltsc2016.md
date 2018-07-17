## `python:2-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:c5335a2dc296525de2063f02378b0f8ece48270addb0eee4d6fff9e615c23bcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `python:2-windowsservercore-ltsc2016` - windows version 10.0.14393.2363; amd64

```console
$ docker pull python@sha256:d0113cfa3dea96bf7fe9ee051a90f40c90efcb9768d4e976c4aed6c843aa3ae3
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5544746062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d502405dd9841afd02e5f24d91256eb9afcda7ddec603b993635b05a76e3430`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:33 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 09:36:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 17 Jul 2018 10:08:57 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 10:08:58 GMT
ENV PYTHON_RELEASE=2.7.15
# Tue, 17 Jul 2018 10:11:11 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Tue, 17 Jul 2018 10:11:12 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 10:12:51 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 17 Jul 2018 10:13:58 GMT
RUN pip install --no-cache-dir virtualenv
# Tue, 17 Jul 2018 10:13:59 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fb1ebf2c42b6ac63b874d36a405b413fdf6c314131c3605d77e3cee6f485881f`  
		Last Modified: Tue, 10 Jul 2018 21:16:33 GMT  
		Size: 1.4 GB (1419298293 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b678e902d6e9a27ab4d61bef7b26997ea26fdec2575d1317c9eab3b31c61fd9b`  
		Last Modified: Wed, 11 Jul 2018 09:53:57 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b617006a7b00e758c30ca7964b5a20182f1ec8bcb455caf39b9e02f9140acc`  
		Last Modified: Tue, 17 Jul 2018 10:21:29 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd16b572d2d41317aa01bb6802b5590a70d002665c0d2dca49f60c92e446cc99`  
		Last Modified: Tue, 17 Jul 2018 10:21:28 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a9213ffbbd4053b43cbd6470783264fbd476ce0bceb0e2d36afdd6b5e3ab0b`  
		Last Modified: Tue, 17 Jul 2018 10:21:44 GMT  
		Size: 39.0 MB (38965025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fd840b494759150ad4e8b123d59aa75fcf164968bc10345641e05f06864f28`  
		Last Modified: Tue, 17 Jul 2018 10:21:25 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deec5b1f8e1ecaf0c7596a168b193059b5f12a010b8af0b44ab446d5589e0560`  
		Last Modified: Tue, 17 Jul 2018 10:21:33 GMT  
		Size: 9.5 MB (9488357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e18ae5a5065e2296655371df784af47a682a70f3d5996e4f5689200a7e70140`  
		Last Modified: Tue, 17 Jul 2018 10:21:28 GMT  
		Size: 7.0 MB (7002500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91221f92d6261cfcf82ebf70ed1f754e0d937185263b0461c6ee3920f32dda1d`  
		Last Modified: Tue, 17 Jul 2018 10:21:25 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
