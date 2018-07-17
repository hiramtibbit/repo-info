## `python:2-windowsservercore`

```console
$ docker pull python@sha256:731505a291d6d1ffedd71dc25e27aea4e6c447468efd5802523a34dde3aa2fcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64
	-	windows version 10.0.16299.547; amd64

### `python:2-windowsservercore` - windows version 10.0.14393.2363; amd64

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

### `python:2-windowsservercore` - windows version 10.0.16299.547; amd64

```console
$ docker pull python@sha256:73a32a2e0201f007dcb2e73a6b9c1d2b891578621f1d1db5a3d8cdf1ed6cce4a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3160034124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e6951f515c09abbd6776fbd910c1c4850a18d6ddadabde46e3517cedac8200`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Jul 2018 18:10:50 GMT
RUN Install update 10.0.16299.547
# Wed, 11 Jul 2018 09:41:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 17 Jul 2018 10:14:10 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 10:14:11 GMT
ENV PYTHON_RELEASE=2.7.15
# Tue, 17 Jul 2018 10:16:08 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Tue, 17 Jul 2018 10:16:09 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 10:17:34 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 17 Jul 2018 10:18:29 GMT
RUN pip install --no-cache-dir virtualenv
# Tue, 17 Jul 2018 10:18:31 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a01c2a39b5bdf158508b424626efbcede4aa9da21f2d4f6ffbd5bff4deb0fb01`  
		Last Modified: Tue, 10 Jul 2018 23:36:17 GMT  
		Size: 831.1 MB (831119569 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5c935a79e71d79bf144e02b94352e10d483d43e5c3f4a3491874c5d6d72deda3`  
		Last Modified: Wed, 11 Jul 2018 09:55:02 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69eee237b6e830e4f70bd6a807affb0a9c21ad8e9cf3b32e25198152bff91053`  
		Last Modified: Tue, 17 Jul 2018 10:22:07 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d602fe2dc4824eb9c37388012b5f77e9962c2fc34454244e7955f7d179fd51`  
		Last Modified: Tue, 17 Jul 2018 10:22:07 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba32695a35f121644322e4f22d0e947125acd62c1b4214e652e4facdbba65d0`  
		Last Modified: Tue, 17 Jul 2018 10:22:22 GMT  
		Size: 38.7 MB (38693184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12b34a532a62fac13bd52adc1944f6bace74f680905a94ab37159e895c2292f`  
		Last Modified: Tue, 17 Jul 2018 10:22:04 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3537bf68479a39c007aa4b481005aa52788b18b502d86e2cca814ef69e525137`  
		Last Modified: Tue, 17 Jul 2018 10:22:13 GMT  
		Size: 9.2 MB (9193924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d717292083b26ba07570a8fbc74e8804d5e361704a1a8f372335e645ec9eaa72`  
		Last Modified: Tue, 17 Jul 2018 10:22:06 GMT  
		Size: 6.7 MB (6720937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164753af4feec4f8b7a136ebc9e4b40e7d55726e620a47fd5d37ba8f9cea51a2`  
		Last Modified: Tue, 17 Jul 2018 10:22:04 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
