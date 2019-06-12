## `python:rc-windowsservercore-1803`

```console
$ docker pull python@sha256:34ed79558cfad64799506a0bc4f3da806ef31ffb2fe287f31a841ea5c320bddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `python:rc-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull python@sha256:28a28560fd0642dc27668e00a068472706a8689dc59f0193de6992135e776737
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2364717646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32bf9aa2234a77e9fa16dbaa8d9ddbc2794253d332a8e82e20ae2ee4d6527770`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 13:59:17 GMT
ENV PYTHON_VERSION=3.8.0b1
# Wed, 12 Jun 2019 13:59:18 GMT
ENV PYTHON_RELEASE=3.8.0
# Wed, 12 Jun 2019 14:01:36 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:01:38 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:02:38 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:02:39 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee59832a5d42cb4c9f0e694cc4dc6c4c7fbed10470791cbebde0b9b1858e2001`  
		Last Modified: Wed, 12 Jun 2019 14:44:08 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308ac5777eb046520933285766ee30d8f0307e10040083168b204a12ec2a72e5`  
		Last Modified: Wed, 12 Jun 2019 14:44:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7531aef7a2b18dca9df960100f0cf00ecf01af5d84c02725e0a41a2f021b888`  
		Last Modified: Wed, 12 Jun 2019 14:44:30 GMT  
		Size: 51.3 MB (51346177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566f6fd580c253fac49faaacf37283ff4eb708f2c4240d9994233f4e71e57afc`  
		Last Modified: Wed, 12 Jun 2019 14:44:05 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0a50a2b1ba2bc93c98a60ca2eadb9defc9982fa6d1edd290a6a0729368c0c8`  
		Last Modified: Wed, 12 Jun 2019 14:44:15 GMT  
		Size: 5.2 MB (5158933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7875c6fd1124b9908e80f2c509938b027c932613a6691ec37b91bc55f6b2c5d3`  
		Last Modified: Wed, 12 Jun 2019 14:44:05 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
