## `python:2-windowsservercore-1709`

```console
$ docker pull python@sha256:d15073f794618ab163cfb83650efd1f980cfe59451196c85ba12dcfdabe1ae80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.431; amd64

### `python:2-windowsservercore-1709` - windows version 10.0.16299.431; amd64

```console
$ docker pull python@sha256:ec31a901d316b4e56194872d2fdc59fcfbd6c51f89d7ddd03dca6fc57f05347c
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3134766623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a18decfb9088fb8b9923f1007735b912ad0ed17761a8dfd6390fc59ff7932b`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 24 May 2018 09:39:42 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 24 May 2018 09:39:42 GMT
ENV PYTHON_RELEASE=2.7.15
# Thu, 24 May 2018 09:41:44 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Thu, 24 May 2018 09:41:45 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Thu, 24 May 2018 09:43:23 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 24 May 2018 09:44:24 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 24 May 2018 09:44:25 GMT
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
	-	`sha256:e97802b47cdb8590a8fdba60c612176de07cea1a9f0db9a442383ab1aa51c425`  
		Last Modified: Thu, 24 May 2018 09:49:21 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11d607860a599a80eb3a7b7faa2047fca09b6c3456d401c3eb0a0837745ddde`  
		Last Modified: Thu, 24 May 2018 09:49:21 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09942d7565c40e06feb7946cfc5ffe467c5b50329eb25a5b49b132a44698808`  
		Last Modified: Thu, 24 May 2018 09:49:38 GMT  
		Size: 38.7 MB (38668076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdcef41569738c9194aed9274abda0afc9cef9fd629fb512074b12e14be6e00`  
		Last Modified: Thu, 24 May 2018 09:49:17 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a9d3c561abf424b009a2700d053797f4087f45e1b7f87f13b6b14c45d38457`  
		Last Modified: Thu, 24 May 2018 09:49:26 GMT  
		Size: 9.2 MB (9157625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2ae2c8c31c2716baf5101885451cfa0205076789eaa367110b5083f0fcf596`  
		Last Modified: Thu, 24 May 2018 09:49:20 GMT  
		Size: 6.7 MB (6690175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206329f5a61797ccb7ed90421505325c549180fbff5c0ea42e8f1b40551bd963`  
		Last Modified: Thu, 24 May 2018 09:49:17 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
