## `python:rc-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:e2c6ae37a70c64bc40c5ce8f3f4607c3770b3bc7b301c9c2ee77def0c1ee3cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2848; amd64

### `python:rc-windowsservercore-ltsc2016` - windows version 10.0.14393.2848; amd64

```console
$ docker pull python@sha256:9cf9f97c246414606723b611a553b6a6e5b97b8cc49801a5a7de3744c48f42fa
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5703613055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5842311ed2d5d02980d682ea325b6c0454b7991edece2ce7c49854e58df981c3`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Mar 2019 20:57:18 GMT
RUN Install update 10.0.14393.2848
# Sat, 16 Mar 2019 09:25:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 20 Mar 2019 09:17:15 GMT
ENV PYTHON_VERSION=3.8.0a2
# Wed, 20 Mar 2019 09:17:16 GMT
ENV PYTHON_RELEASE=3.8.0
# Wed, 20 Mar 2019 09:20:33 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:20:36 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 20 Mar 2019 09:22:32 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:22:34 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e0718b11f51220dd85c47a1d225be81c5ba343fbb45f9b43fe3d762c0a20300a`  
		Last Modified: Mon, 11 Mar 2019 20:57:18 GMT  
		Size: 1.6 GB (1569132556 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3c84f6ec9cf25e40329a2ab2c9fa1da3095d19cb67d4eacabcec0838b7e89729`  
		Last Modified: Sat, 16 Mar 2019 10:38:59 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d10a6a49e2e0558b67c2e6fecee566709f3ca8ea08f1fc48f7f8f72c781d0a`  
		Last Modified: Wed, 20 Mar 2019 11:02:56 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3dcde58deebb2e2b660e4b568d41be07b4bcbbd66156ee5e309d318e71cc70c`  
		Last Modified: Wed, 20 Mar 2019 11:02:54 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:881d91d4104f0e608d9842119cc1e1b77c5820bee88757af0d0d69b5b9b7db37`  
		Last Modified: Wed, 20 Mar 2019 11:03:25 GMT  
		Size: 54.5 MB (54505998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed94f4b5bcc4d4d62f9d5bf7288a8a8271b9eb79b57be16f9f33fedc6935a668`  
		Last Modified: Wed, 20 Mar 2019 11:02:54 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a60fc31ea276c060135e4f5299bca90bc5586ab9f74e49058c326b93d6c62c`  
		Last Modified: Wed, 20 Mar 2019 11:03:09 GMT  
		Size: 10.0 MB (9982563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b453512c97a156658a8b57349bb02a4e41152ec94130837181709a909d0f6a0e`  
		Last Modified: Wed, 20 Mar 2019 11:02:54 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
