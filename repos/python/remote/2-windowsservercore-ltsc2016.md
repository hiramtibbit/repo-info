## `python:2-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:8b2bdd03036297fbf3f62f669b76e140cb10a87f05794b8349a26541154e3ad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `python:2-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull python@sha256:866fcbbffae95de56d8ab2675a48d0f19415cce4e6f30fa739341b89e6fd0a26
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5766374202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:846d8da2e58e911f4be0b6d392341ce80bfe66f83d6418b49a24146db65c577d`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:29:57 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 12 Jun 2019 14:29:58 GMT
ENV PYTHON_RELEASE=2.7.16
# Wed, 12 Jun 2019 14:32:09 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:32:11 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:33:53 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:34:58 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 12 Jun 2019 14:35:00 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4295d2ab7590af23f03114c8b8499b36e70dca2e9042382eb6fda8657632ffe`  
		Last Modified: Wed, 12 Jun 2019 14:50:01 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6bf2cda79978e7361609d155d97d7691678a31e11c70420207421045200e78`  
		Last Modified: Wed, 12 Jun 2019 14:50:01 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1267a575885584f46cdce86d47a86ff079661e58dfc6e2bf54c993502e19a947`  
		Last Modified: Wed, 12 Jun 2019 14:50:20 GMT  
		Size: 39.3 MB (39264710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988ec6b834c3ada6e71ff9be2265c2fb2fe2a0a490c85f685a8d2a7116e86901`  
		Last Modified: Wed, 12 Jun 2019 14:49:58 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9a3c046fd5fa625e1e3fe654020f18a5c05a7db692534f55cb73aa1aa582a8`  
		Last Modified: Wed, 12 Jun 2019 14:50:12 GMT  
		Size: 9.8 MB (9815548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820b021be358d35a2a626ff2f75e2208021a8437e8233c340066391d34d822aa`  
		Last Modified: Wed, 12 Jun 2019 14:50:01 GMT  
		Size: 7.3 MB (7313291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125087425a819d9fa6f4ee35db822da9650dccea6fd1882045e0a88d8ae785be`  
		Last Modified: Wed, 12 Jun 2019 14:49:58 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
