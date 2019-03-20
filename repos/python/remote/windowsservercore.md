## `python:windowsservercore`

```console
$ docker pull python@sha256:5ce2a4bbf14deb61078c6dfa4006157555bd96ff5c21599c5ad45a667b0ce2ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2848; amd64
	-	windows version 10.0.16299.1029; amd64
	-	windows version 10.0.17134.648; amd64
	-	windows version 10.0.17763.379; amd64

### `python:windowsservercore` - windows version 10.0.14393.2848; amd64

```console
$ docker pull python@sha256:a759e2a8c116ccab3783aa834c5c86a46ed60955784c1fea08ad37985518725a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5698882232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:572fd355eecbd92327c5d70cdc4d44870f6edc27d70c3ffdf5925c2fb3da247c`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Mar 2019 20:57:18 GMT
RUN Install update 10.0.14393.2848
# Sat, 16 Mar 2019 09:25:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 20 Mar 2019 09:36:10 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 20 Mar 2019 09:36:11 GMT
ENV PYTHON_RELEASE=3.7.2
# Wed, 20 Mar 2019 09:39:04 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:39:06 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 20 Mar 2019 09:40:52 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:40:53 GMT
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
	-	`sha256:0c7fd7385d979184de25e8ceab75a116e0faf9ff77c77bede34569202bbca459`  
		Last Modified: Wed, 20 Mar 2019 11:06:03 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af7fc56b0dab0a7c659593ae8d4f7afdcdb8e5957175c73c7f583dcbd4c7418`  
		Last Modified: Wed, 20 Mar 2019 11:06:00 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d0ab196420469509206cca49bc7fc69cfe8753e918e716eb3efd111624f878`  
		Last Modified: Wed, 20 Mar 2019 11:06:30 GMT  
		Size: 49.8 MB (49796039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c656a455911eaceb72be591f62dcba98e7ac4d8495c921a4f4ff90fa9c7f32d6`  
		Last Modified: Wed, 20 Mar 2019 11:06:00 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4131070bfc5ff6cd67f9f9ab0e187544f3752f143825108e9fc54588c3f7c9`  
		Last Modified: Wed, 20 Mar 2019 11:06:15 GMT  
		Size: 10.0 MB (9961715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46edc000a9494f64d1d62175fc3215b6dc0022ff41d9e0eb4fffbd65eb8e457a`  
		Last Modified: Wed, 20 Mar 2019 11:06:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.16299.1029; amd64

```console
$ docker pull python@sha256:f221687b4d4ccdd419ba80d8d9b7a03cd84fede72f4dca8c2cec0c56fc5b4ecb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3269763459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e04659633a93c19476f8ceaf1a547dcb88389159b9f49951d4833edf1392429`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Sat, 16 Mar 2019 09:35:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 20 Mar 2019 09:41:06 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 20 Mar 2019 09:41:08 GMT
ENV PYTHON_RELEASE=3.7.2
# Wed, 20 Mar 2019 09:43:48 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:43:50 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 20 Mar 2019 09:45:22 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:45:24 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7f4a716683dc03db3521ed040924c24ea9bd17c7f134c09bf22e33f6af33ade8`  
		Last Modified: Mon, 11 Mar 2019 21:13:17 GMT  
		Size: 936.6 MB (936551125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:81856e9377a060d58cb8798fbc456fc8414158afec682bdd098149edc0a7d1fc`  
		Last Modified: Sat, 16 Mar 2019 10:41:06 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91e82dd469b529e30ea91c40de9f20bb367b98f2e5f8e3747a1f77aa1f085b7`  
		Last Modified: Wed, 20 Mar 2019 11:06:55 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9adb7ddbc20e7834b9ce05bd9c29fc3a9ce9272f9243c87268296f63299be4`  
		Last Modified: Wed, 20 Mar 2019 11:06:53 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8702142c142cb812995d2391b661bd6c8d71ba817ed98b2cbe7fcb6e8be68fd`  
		Last Modified: Wed, 20 Mar 2019 11:07:21 GMT  
		Size: 49.4 MB (49364339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a5fa918ef9c418d7a13a17cb708040eaccb02bc83b1f875a0164e01938a311`  
		Last Modified: Wed, 20 Mar 2019 11:06:53 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c371949d3514c58a2b258c56874fdb371803b63611c17976b4cc84e1edf6bf`  
		Last Modified: Wed, 20 Mar 2019 11:07:08 GMT  
		Size: 9.5 MB (9541442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc772b430b7d548573ad7f365c00ebe47c5ad9f89a2d888a7c75bcdec5988f5e`  
		Last Modified: Wed, 20 Mar 2019 11:06:52 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.17134.648; amd64

```console
$ docker pull python@sha256:b76e05e9afd5060b7b520c6b956760b5b0b6de2d1e788008502e0ece2d6e3615
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2307374956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1baea57ddb6c591c5b144d70da56ee04c92a5d25073da370ca02bcd4f3c8e942`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 08 Mar 2019 23:20:01 GMT
RUN Install update 10.0.17134.648
# Sat, 16 Mar 2019 09:44:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 20 Mar 2019 09:45:36 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 20 Mar 2019 09:45:38 GMT
ENV PYTHON_RELEASE=3.7.2
# Wed, 20 Mar 2019 09:48:15 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:48:18 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 20 Mar 2019 09:49:31 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:49:32 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be86bca8de59067e592a8becc2e83ed2465a6d9bce324043e434aa4a15493b00`  
		Last Modified: Mon, 11 Mar 2019 21:17:02 GMT  
		Size: 593.3 MB (593288046 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:97db8a70a029fc0e25892873d5695bd2b9a1c93e4cd7dcd91fcddf338989a592`  
		Last Modified: Sat, 16 Mar 2019 10:43:05 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c019b1f3c1ec43ac39f43968ca74c7e019a54992b0be489a3a54074e20d6f468`  
		Last Modified: Wed, 20 Mar 2019 11:07:43 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59311641722e1f0ca08da93afb46f4d06d1a03726362fdfdbbfd821a38133a3b`  
		Last Modified: Wed, 20 Mar 2019 11:07:40 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001509541a490a0acb526b12981c312948fe1b57ecfc8facb398836cc220943c`  
		Last Modified: Wed, 20 Mar 2019 11:08:09 GMT  
		Size: 49.3 MB (49285656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c61bcc822b1aad32e5fbceca4f91073d3ca11b311d4b76785e892a513749bc`  
		Last Modified: Wed, 20 Mar 2019 11:07:41 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f544f6e4bc976623599f4403f81871869257ef5219da0960b9dc0955c7345b7`  
		Last Modified: Wed, 20 Mar 2019 11:07:54 GMT  
		Size: 5.1 MB (5106979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630e12c204c5e06629ddaa04cb36fd76fb2c14a98aefd1f1adf008bc9c0e3ef6`  
		Last Modified: Wed, 20 Mar 2019 11:07:41 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.17763.379; amd64

```console
$ docker pull python@sha256:11494727c55b4bd14cf5ffa411af7bc13009e56a32c788d0df5cc67a8541d0e7
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2209403753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a176bc6ea78a2ccdd0735a4fd6d69658cedf7a2ebd1752997ad473cb771dc11e`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 09 Mar 2019 03:10:13 GMT
RUN Install update 1809-amd64
# Sat, 16 Mar 2019 09:52:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 20 Mar 2019 09:49:49 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 20 Mar 2019 09:49:50 GMT
ENV PYTHON_RELEASE=3.7.2
# Wed, 20 Mar 2019 09:52:17 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:52:18 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 20 Mar 2019 09:53:27 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:53:28 GMT
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
	-	`sha256:5de2c033b83311cf83caa07408c58655ea0da3e0ad7b6fef06b2bc2253874e6a`  
		Last Modified: Wed, 20 Mar 2019 11:08:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c15fabfecc033c86797263f23707dd69679ff3c56c37a141035afffbded978`  
		Last Modified: Wed, 20 Mar 2019 11:08:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f932f222154b3b1129477a2437d3949b1d5d32ac74e9fb766e41c311ed08de`  
		Last Modified: Wed, 20 Mar 2019 11:08:57 GMT  
		Size: 48.8 MB (48844444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc68c4450ed3888e83664d48f9fa5fc0a8ec8b22340cc61905fcdcd96a5dc7af`  
		Last Modified: Wed, 20 Mar 2019 11:08:29 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f7c99e2e6f4ed133b379774241f6163c12c357bbfd270a15fcec870801146a`  
		Last Modified: Wed, 20 Mar 2019 11:08:43 GMT  
		Size: 5.1 MB (5112519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883d1b9908af64e4e1336f309f51000e8b0bf537f6a2817810734a8f1098c4ad`  
		Last Modified: Wed, 20 Mar 2019 11:08:29 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
