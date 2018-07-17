## `python:windowsservercore`

```console
$ docker pull python@sha256:6a6c564fa52b1c523a355853d716c906c83886d18ccdf8bc1eb69219c9539b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64
	-	windows version 10.0.16299.547; amd64

### `python:windowsservercore` - windows version 10.0.14393.2363; amd64

```console
$ docker pull python@sha256:3899050ada978460765f3b0def31d6466d60869083bae27c3e6c3f97a1b7fc45
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5552059859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73bd2d7b3fed58e240d68a79fee2197760f32b6f82e3915d4dd312b9309b9e4a`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:33 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 09:36:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 17 Jul 2018 09:51:08 GMT
ENV PYTHON_VERSION=3.7.0
# Tue, 17 Jul 2018 09:51:09 GMT
ENV PYTHON_RELEASE=3.7.0
# Tue, 17 Jul 2018 09:53:55 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Tue, 17 Jul 2018 09:53:56 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 09:55:34 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 17 Jul 2018 09:55:35 GMT
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
	-	`sha256:394b335e0ef92a6dd70bb2dc5c22b5a2a33777cfa19b10c1aceb8c2de849d479`  
		Last Modified: Tue, 17 Jul 2018 10:19:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0854e29c185f02ff30e576a708b26472ecf20e1ba23738446b83dcea4c106286`  
		Last Modified: Tue, 17 Jul 2018 10:18:58 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c81f5e4d48f604e9874b536ed428c28a349d0e0e5039f476d3251b935de0a2d`  
		Last Modified: Tue, 17 Jul 2018 10:19:22 GMT  
		Size: 53.0 MB (52971403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e12fa8f9f90cb78219321d2179c55fcba37f893e5ebcafefd234584404b2b32`  
		Last Modified: Tue, 17 Jul 2018 10:18:58 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf750e95bc9700dc6eae6d3fc87f4146ae2bae813292e528a0c7988a62b70b6`  
		Last Modified: Tue, 17 Jul 2018 10:19:09 GMT  
		Size: 9.8 MB (9798273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af524cf4cb2650cceb5630ae15043fcc55b42199b3e87fa33d2d90b022d886c`  
		Last Modified: Tue, 17 Jul 2018 10:18:58 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.16299.547; amd64

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
