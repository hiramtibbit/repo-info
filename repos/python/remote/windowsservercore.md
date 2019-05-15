## `python:windowsservercore`

```console
$ docker pull python@sha256:6c87ad819663b97209519f78083c0ca4eb280eec99472999690cfbc974dab186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64
	-	windows version 10.0.17763.437; amd64

### `python:windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull python@sha256:d690951387c3736c16ce96625dff6549f49ec2b44b9649ca0e7347459c4db386
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5761973438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cbe64ece36aaf6d40b19d0616f4ea33ab27bd1bd035ca5ec7f6d5085ae43e10`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 13:39:01 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 15 May 2019 13:39:02 GMT
ENV PYTHON_RELEASE=3.7.3
# Wed, 15 May 2019 13:41:46 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 13:41:47 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 15 May 2019 13:43:28 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 15 May 2019 13:43:29 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eabce9e82d658a5b4a2e70f2e7613af78952beb2fd6facaaaaf7afb177431e07`  
		Last Modified: Wed, 15 May 2019 14:07:14 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bfd83cb9d595e8ad658e58df188f10253209ad9ce6fc5d43c2b088e02027d5`  
		Last Modified: Wed, 15 May 2019 14:07:11 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fee37983e6d1d0c8fb16f72a0781a0e65c473fc28fc931eda67c104072adb4d`  
		Last Modified: Wed, 15 May 2019 14:07:34 GMT  
		Size: 49.8 MB (49848032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f1b8bc36acc0d905ba84b1ea71b94c2be848a14da91d81a5ee67dd9036c1c5`  
		Last Modified: Wed, 15 May 2019 14:07:11 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379db5cc780a4af4c58445e20c9c87f9423e011bc16314ab0faa1aef57cd5a04`  
		Last Modified: Wed, 15 May 2019 14:07:23 GMT  
		Size: 10.0 MB (9998480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acfa54dc153f6b5ded736017dd385783ebeb5823e1795b20f4892c16a839427`  
		Last Modified: Wed, 15 May 2019 14:07:11 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.17134.765; amd64

```console
$ docker pull python@sha256:8dcecfb428aa5d0b7188b4e2ae00b3d7018521896dda305a641fb9987c128612
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2356832655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fbd510cdc1753aefc2123e034b9aaead565aa908d721ca1dae8497b0afdf3d7`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 13:43:44 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 15 May 2019 13:43:46 GMT
ENV PYTHON_RELEASE=3.7.3
# Wed, 15 May 2019 13:45:59 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 13:46:01 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 15 May 2019 13:47:04 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 15 May 2019 13:47:05 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781e81add08a76a4a5c2495b441695a1ad13afd397a8380bfd05ab65b3001f19`  
		Last Modified: Wed, 15 May 2019 14:07:59 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12bf55835ca4c89cfe3e5fff65559093a971dc1c9e2f0c6e32d5f53d32b2dca`  
		Last Modified: Wed, 15 May 2019 14:07:55 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119adcf21b72723fa07ab012ba2bc2edb9f1df7a57b0b6b95ef074b5f9234320`  
		Last Modified: Wed, 15 May 2019 14:08:17 GMT  
		Size: 49.4 MB (49439374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87dc92171a15f5c8567b78b8fb45cc720d0c588f19801c1051149be657ddfee`  
		Last Modified: Wed, 15 May 2019 14:07:56 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40892d3ef2b20b5763b0882af2af4bace84a7156fd3d308441960522506d01`  
		Last Modified: Wed, 15 May 2019 14:08:05 GMT  
		Size: 5.1 MB (5137132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b381cc1207ebf5edfbed2e1ee70c9ccd40a2a22c5294d24787db361a7fa9d76`  
		Last Modified: Wed, 15 May 2019 14:07:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.17763.437; amd64

```console
$ docker pull python@sha256:02c57e11e6a1275fe7076c2a0d020c8b40226c528231a9a8af918942076fa6a2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (2028014401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:892f1096c4c3fd29434e23ecf7973d1d813115204711317dbf0f0b106313f524`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 11 Apr 2019 23:24:05 GMT
ENV PYTHON_VERSION=3.7.3
# Thu, 11 Apr 2019 23:24:06 GMT
ENV PYTHON_RELEASE=3.7.3
# Thu, 11 Apr 2019 23:26:19 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 08 May 2019 09:30:25 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 09:31:30 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 08 May 2019 09:31:31 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d415f1d8f804f1d718f312c2620837357085eb64ba360f0e165ce60570ec4fad`  
		Last Modified: Fri, 12 Apr 2019 00:07:42 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e604631340bfae75f1084374db235fe2a57df33ee50e88889391e3c216889cd9`  
		Last Modified: Fri, 12 Apr 2019 00:07:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90414e5c29a8266d7aadc531238ae97047c3631daf7a25334d98f8b85847f34`  
		Last Modified: Fri, 12 Apr 2019 00:08:03 GMT  
		Size: 49.0 MB (49003831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a2d9354e4793830d0b7e8a63c68c0872ddfdf2540092b6abeafd2f4d2f73b6`  
		Last Modified: Wed, 08 May 2019 10:16:38 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c688bfefc99986ff06699ccc55d1fb5dfbcdf464053411b9c6c8ff922831e877`  
		Last Modified: Wed, 08 May 2019 10:16:44 GMT  
		Size: 5.1 MB (5141267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e318e438712fcdadcfa53c02594c7c767462ba82ee39b2cdf9265d0e7911e8`  
		Last Modified: Wed, 08 May 2019 10:16:38 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
