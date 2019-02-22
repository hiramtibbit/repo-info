## `python:rc-windowsservercore`

```console
$ docker pull python@sha256:72b4ba6fa3efdfad8107dfe7663669671639ec85e6e292830cf8d73f690ba79d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64
	-	windows version 10.0.16299.492; amd64

### `python:rc-windowsservercore` - windows version 10.0.14393.2312; amd64

```console
$ docker pull python@sha256:8503ebbbcda83fa32c9320ef35b80eba161d82b021568c9a2db65b62e81e2aae
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5547000044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116e98d18d106814d8b428a11e2894c6e208bc6ca6d532ea960bb13d0bb103b0`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:30 GMT
RUN Install update 10.0.14393.2312
# Sat, 16 Jun 2018 10:18:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Jun 2018 10:39:10 GMT
ENV PYTHON_VERSION=3.7.0b5
# Thu, 28 Jun 2018 10:39:11 GMT
ENV PYTHON_RELEASE=3.7.0
# Thu, 28 Jun 2018 10:43:50 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 28 Jun 2018 10:43:51 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Thu, 28 Jun 2018 10:45:40 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 28 Jun 2018 10:45:41 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8e9da9bbe3af2118a0b5eef7a3d649367557d0d3992ed0213c79857b23b4140e`  
		Last Modified: Tue, 18 Sep 2018 18:55:37 GMT  
		Size: 1.4 GB (1414319443 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2f081cda9e78f379ae3f7a2238f310ca91bbbac2c32d6e990eb6b15df6c2df4b`  
		Last Modified: Sat, 16 Jun 2018 10:42:21 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844c4ccb882a8368faa7ee9610e0b64146558b17c5bba064da5d8be252f98d59`  
		Last Modified: Thu, 28 Jun 2018 11:11:50 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c16e02f6f50e0b6b35c1e059913a1a2c84b28592a5fafd1f85fc960219e5ff`  
		Last Modified: Thu, 28 Jun 2018 11:11:47 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47a3a6a885a1d83167e03e97ddf09b4578f53d9c09de34aafa79a93387b84f9`  
		Last Modified: Thu, 28 Jun 2018 11:12:23 GMT  
		Size: 52.9 MB (52918259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c296ab25f983876232852bc942ec2e18aeaab17dbed342d9da3c4c3526fe4951`  
		Last Modified: Thu, 28 Jun 2018 11:11:47 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbfa6bb9d9186d8aa7227d9bccc12efb6469c07bf20c19157f99b137ddf667b`  
		Last Modified: Thu, 28 Jun 2018 11:12:02 GMT  
		Size: 9.8 MB (9770521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f21d5ae9baaa0d50d5297eb67a9b7e7845c275a057648289849bfe91881d9b`  
		Last Modified: Thu, 28 Jun 2018 11:11:47 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-windowsservercore` - windows version 10.0.16299.492; amd64

```console
$ docker pull python@sha256:f250c078b3475edbad4fab08f5b567131cd4bbb26ae2f30412640fa7ebb90ae8
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3155533515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4fb37ff319494a191abef2d1566a9d205f62803049f0133dd2b99385bbff3d0`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 11 Jun 2018 20:38:48 GMT
RUN Install update 10.0.16299.492
# Sat, 16 Jun 2018 10:25:10 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Jun 2018 10:45:54 GMT
ENV PYTHON_VERSION=3.7.0b5
# Thu, 28 Jun 2018 10:45:54 GMT
ENV PYTHON_RELEASE=3.7.0
# Thu, 28 Jun 2018 10:49:47 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 28 Jun 2018 10:49:48 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Thu, 28 Jun 2018 10:51:19 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 28 Jun 2018 10:51:20 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3b9c63e313c8b374d5767c602fd6f2b947a3f1df9a8f8c5fcecb2fa6b1cfa968`  
		Last Modified: Tue, 18 Sep 2018 22:40:22 GMT  
		Size: 823.6 MB (823576248 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c64dfe6152b178e35770ab15c53bfcc70f8dd47d8a0551e325ccfa665416b738`  
		Last Modified: Sat, 16 Jun 2018 10:43:33 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ca6a3cfd4163b1c97b751fe61cbc6b9aa2655d565f5d229f10638c9160cfbd`  
		Last Modified: Thu, 28 Jun 2018 11:12:40 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c2083847976b6d6a28f2ab70800f7f5f4a282d76d88e9de661d50fec752e13`  
		Last Modified: Thu, 28 Jun 2018 11:12:37 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ee16b5fecedc797d2f10229107f642805a44bd73851f77da60eb87ba49e6e3`  
		Last Modified: Thu, 28 Jun 2018 11:13:11 GMT  
		Size: 48.2 MB (48190226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899454b4691de8939db432681e15304a9947f547f0ead9d1096e0a730e180dd0`  
		Last Modified: Thu, 28 Jun 2018 11:12:37 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9341350483b2734f3888d1b75f792eecb3ad43a0ae11642d5d83b69a41fde223`  
		Last Modified: Thu, 28 Jun 2018 11:12:52 GMT  
		Size: 9.5 MB (9460496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55daba92e0647650d5e6b478db279096e85f64c1f31f404482659780e7ac407b`  
		Last Modified: Thu, 28 Jun 2018 11:12:37 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
