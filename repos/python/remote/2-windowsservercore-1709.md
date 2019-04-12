## `python:2-windowsservercore-1709`

```console
$ docker pull python@sha256:450ba8e3147493faf4964e807d427a64f4f49b771a628304314f0987447188dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.1087; amd64

### `python:2-windowsservercore-1709` - windows version 10.0.16299.1087; amd64

```console
$ docker pull python@sha256:29b5f8c2ccf180948b66a65c43ed3bf38d34dfa5239869e60bf7eb15686a9fa4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3255869963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb362fc761a7b178a96a5ffbc21111e685ce3f0c819a7b4c0a69caef9a9c9268`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 1709-RTM-amd64
# Thu, 04 Apr 2019 00:21:24 GMT
RUN Install update 1709-amd64
# Thu, 11 Apr 2019 22:58:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 11 Apr 2019 23:48:41 GMT
ENV PYTHON_VERSION=2.7.16
# Thu, 11 Apr 2019 23:48:42 GMT
ENV PYTHON_RELEASE=2.7.16
# Thu, 11 Apr 2019 23:50:44 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Thu, 11 Apr 2019 23:50:45 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Thu, 11 Apr 2019 23:52:12 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 11 Apr 2019 23:53:03 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 11 Apr 2019 23:53:05 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8c7d1531260f1f41cc711bfb3c8ab8efac981758fd7943518b863803f0b31552`  
		Last Modified: Tue, 09 Apr 2019 18:39:54 GMT  
		Size: 926.6 MB (926563180 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:59e24a9056c00889763abd79b000344468ace59ae58ae7d17acdfcbaadd1f6e8`  
		Last Modified: Fri, 12 Apr 2019 00:03:19 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24fb8e058b5a97483a1d4302b738413f7ef60f23a5f8d5788bed6fec27a0f112`  
		Last Modified: Fri, 12 Apr 2019 00:11:38 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36aadc3de1d042ab366e7d1146abf9b52d80aa4017c893a6203bb92837130379`  
		Last Modified: Fri, 12 Apr 2019 00:11:37 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd3c866bdbc0388edaf3e900a16255a110269447aa5600037cce08dd0f3c920`  
		Last Modified: Fri, 12 Apr 2019 00:11:59 GMT  
		Size: 38.8 MB (38822995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0083b67829ec774ef0c3ea475c75d47d85265b6c45c7c71769633ded6e36ed67`  
		Last Modified: Fri, 12 Apr 2019 00:11:34 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c7daffb810f3b97a3bd9c717a2c0f0096c3fd04f23add9f18abce633625008`  
		Last Modified: Fri, 12 Apr 2019 00:11:51 GMT  
		Size: 9.3 MB (9330078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7636c4e5e7ab4e1f99971fefc74b412359a05f4d8b0b7de601bc98585bed06`  
		Last Modified: Fri, 12 Apr 2019 00:11:37 GMT  
		Size: 6.8 MB (6847114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2336ec8ec565087232c6d4229f711cbc5b910a02db86a02a93b3a0c4a753d39b`  
		Last Modified: Fri, 12 Apr 2019 00:11:34 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
