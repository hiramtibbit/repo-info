## `python:rc-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:b1ee33832d7eb13090bdb8bd3079514752450479c3aafab0b707bffb754d6a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `python:rc-windowsservercore-ltsc2016` - windows version 10.0.14393.2312; amd64

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
