## `python:windowsservercore-1709`

```console
$ docker pull python@sha256:2dc52c4581aa34af28eed56a4c5b1778fdfb46257ab4b82103f9fe5500037f9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.431; amd64

### `python:windowsservercore-1709` - windows version 10.0.16299.431; amd64

```console
$ docker pull python@sha256:6798b2df2ad7d7864c7023d4311147dfcaead2be536e0aad56fa7d6c4be6c467
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3137496738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b814d9fa3b8cd172d2bd1651c5cba756aaa97bea1361c7f39ad554b249b937cd`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 24 May 2018 09:29:47 GMT
ENV PYTHON_VERSION=3.6.5
# Thu, 24 May 2018 09:29:48 GMT
ENV PYTHON_RELEASE=3.6.5
# Thu, 24 May 2018 09:32:14 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 24 May 2018 09:32:15 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Thu, 24 May 2018 09:33:48 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 24 May 2018 09:33:49 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94866220bdabc0481f1a035ee670aaf0bf751cf46f6f611c1468764393572fd`  
		Last Modified: Thu, 24 May 2018 09:48:01 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f5faac0f01cbef2c22c8d8083925079c6d691134cd37fdf10abc85a7b056ee`  
		Last Modified: Thu, 24 May 2018 09:47:57 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13fcbe4d358806fec18a35e59b66765f9c5f6747d7ebea90751576662c7f9f1`  
		Last Modified: Thu, 24 May 2018 09:48:23 GMT  
		Size: 47.8 MB (47754262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c3f0c2db90d0dc00ac76086a25c662f60019294d2ae59b7e828f2c1b498292`  
		Last Modified: Thu, 24 May 2018 09:47:57 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960ca8eb5a839956b9d87b3b686ec611375216e9c378c6390b3a6abf1cc67fe6`  
		Last Modified: Thu, 24 May 2018 09:48:10 GMT  
		Size: 9.5 MB (9491750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b94609b553c022bdebb72c409612babe73ba7575253405301ae38b990683ff4`  
		Last Modified: Thu, 24 May 2018 09:47:59 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
