## `python:rc-windowsservercore-1803`

```console
$ docker pull python@sha256:28693d0d988a98d50c4be256335b8850ceefba8a3ce06a55722f0e164efe12ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `python:rc-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull python@sha256:24874ee9d16ba4ec12fb375fd71c11792f984924d7019457ba67cf292473f28f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2357386006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ea104e18cb2f5da7a8379c063237d65497b37c7d7d921982bb86f739c16f487`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 13:35:14 GMT
ENV PYTHON_VERSION=3.8.0a4
# Wed, 15 May 2019 13:35:15 GMT
ENV PYTHON_RELEASE=3.8.0
# Wed, 15 May 2019 13:37:34 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 13:37:35 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 15 May 2019 13:38:36 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 15 May 2019 13:38:38 GMT
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
	-	`sha256:fc6b266220f7a33c2665e07010ed13580dbeab1821ad2435c2e209a45163fba2`  
		Last Modified: Wed, 15 May 2019 14:06:34 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8a4a4414d86d465406fb06f7371bec5cba6f645f1334846c2ecef548911aaf`  
		Last Modified: Wed, 15 May 2019 14:06:31 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aa174455e065c16d44e08119119f37e1c08224bbb772fa247d5aa2bfef5fb8`  
		Last Modified: Wed, 15 May 2019 14:06:53 GMT  
		Size: 50.0 MB (49961960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c6bc156ea8397743134f948d0e5a858ee2346e074e451c659f4093433ba36a`  
		Last Modified: Wed, 15 May 2019 14:06:31 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1604b1a3138ff5837cd692c5af64543eaaeb1b322ae1711b7a987e1ad1f7dd23`  
		Last Modified: Wed, 15 May 2019 14:06:41 GMT  
		Size: 5.2 MB (5167894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03352fd6a8b8c360550d4596d3ce2be74716d790bdd108fb1685b50cd4459984`  
		Last Modified: Wed, 15 May 2019 14:06:32 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
