## `python:windowsservercore-1709`

```console
$ docker pull python@sha256:591ef691ef897eb8178c6d96a3afcafbc3b0bab8504cd0e1b934951a66e72e30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.547; amd64

### `python:windowsservercore-1709` - windows version 10.0.16299.547; amd64

```console
$ docker pull python@sha256:33a277f308524c16af0654d30ad8dc859fc3035fffda4bfe53ac36863ab49d56
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3163123680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340689b75c397cf759bca9745f809e4e1bd5a470cc90955ea67921e865747f77`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Jul 2018 18:10:50 GMT
RUN Install update 10.0.16299.547
# Wed, 11 Jul 2018 09:41:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 17 Jul 2018 09:55:50 GMT
ENV PYTHON_VERSION=3.7.0
# Tue, 17 Jul 2018 09:55:51 GMT
ENV PYTHON_RELEASE=3.7.0
# Tue, 17 Jul 2018 09:58:35 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Tue, 17 Jul 2018 09:58:36 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 09:59:59 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 17 Jul 2018 10:00:00 GMT
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
	-	`sha256:d0eaaf21b01b1666587db8f5159adc4351e926c8dba7152f02efe141b4e07c19`  
		Last Modified: Tue, 17 Jul 2018 10:19:41 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadf6612df80e70ea0d1be11c2507dfd87567456807f6554257c9722b1f86b21`  
		Last Modified: Tue, 17 Jul 2018 10:19:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2470fed5acf1058393aeada288d1f2f947d2b9124c993766411960daa3df9d`  
		Last Modified: Tue, 17 Jul 2018 10:20:01 GMT  
		Size: 48.2 MB (48235297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aacb01256d6f7d7d5c00a6a2d249ba7e709307c947e689ca7eedc3fab3bcbeb`  
		Last Modified: Tue, 17 Jul 2018 10:19:38 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29c7c2f90744047e64ca5f7ac5a3d318dddf433754765dc96a5f2618fab80ab`  
		Last Modified: Tue, 17 Jul 2018 10:19:49 GMT  
		Size: 9.5 MB (9462257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76671b3c501f736576baa02be8812fe2af6e5e222d7b142de2234a849158c408`  
		Last Modified: Tue, 17 Jul 2018 10:19:38 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
