## `python:2-windowsservercore`

```console
$ docker pull python@sha256:5ef657ebd6d0d69726f98cf0cd4f6f826f2ad175ba5681d9d6ca493349f43526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64
	-	windows version 10.0.16299.547; amd64

### `python:2-windowsservercore` - windows version 10.0.14393.2363; amd64

```console
$ docker pull python@sha256:86b58a27a67c315560af02db3ec7a9dbd996d0c698ff645290dba65f9481cf4b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5544723665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee16c69681b6969bcdf77c74e1b245617a5ead5611f425071b3c23a9425911f0`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:33 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 09:36:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 17 Jul 2018 10:08:57 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 10:08:58 GMT
ENV PYTHON_RELEASE=2.7.15
# Tue, 17 Jul 2018 10:11:11 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Thu, 26 Jul 2018 09:34:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 09:37:07 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 26 Jul 2018 09:38:34 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 26 Jul 2018 09:38:35 GMT
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
	-	`sha256:54b617006a7b00e758c30ca7964b5a20182f1ec8bcb455caf39b9e02f9140acc`  
		Last Modified: Tue, 17 Jul 2018 10:21:29 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd16b572d2d41317aa01bb6802b5590a70d002665c0d2dca49f60c92e446cc99`  
		Last Modified: Tue, 17 Jul 2018 10:21:28 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a9213ffbbd4053b43cbd6470783264fbd476ce0bceb0e2d36afdd6b5e3ab0b`  
		Last Modified: Tue, 17 Jul 2018 10:21:44 GMT  
		Size: 39.0 MB (38965025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44a59f9d1dae3e82ac47238a025012d756de381998c9f23a4d3f477c8d76f69`  
		Last Modified: Thu, 26 Jul 2018 09:44:01 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e09378055488a3db36bcf750842051ec94bd5fe03caa1631c6a5285abe927c`  
		Last Modified: Thu, 26 Jul 2018 09:44:09 GMT  
		Size: 9.5 MB (9475393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff972bd72fea6be68f250abd78fc87d52d3215a5654fe8b685e20764a141218`  
		Last Modified: Thu, 26 Jul 2018 09:44:05 GMT  
		Size: 7.0 MB (6993058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95afdd4005fc8b8a3bf7c86dd63c6f95ee569d589eac92172ba0543fb5e3a8cd`  
		Last Modified: Thu, 26 Jul 2018 09:44:02 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-windowsservercore` - windows version 10.0.16299.547; amd64

```console
$ docker pull python@sha256:315c9550336944833c0dab4848d1c02a38de7f5991d1003fef36923e49d615dc
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3159970623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefc2586939a649d40f726b6c263e5c5c64642cfd36cb56d6b8a89f4560c9c80`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Jul 2018 18:10:50 GMT
RUN Install update 10.0.16299.547
# Wed, 11 Jul 2018 09:41:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 17 Jul 2018 10:14:10 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 10:14:11 GMT
ENV PYTHON_RELEASE=2.7.15
# Tue, 17 Jul 2018 10:16:08 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Thu, 26 Jul 2018 09:38:45 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 09:40:38 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 26 Jul 2018 09:41:51 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 26 Jul 2018 09:41:52 GMT
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
	-	`sha256:69eee237b6e830e4f70bd6a807affb0a9c21ad8e9cf3b32e25198152bff91053`  
		Last Modified: Tue, 17 Jul 2018 10:22:07 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d602fe2dc4824eb9c37388012b5f77e9962c2fc34454244e7955f7d179fd51`  
		Last Modified: Tue, 17 Jul 2018 10:22:07 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba32695a35f121644322e4f22d0e947125acd62c1b4214e652e4facdbba65d0`  
		Last Modified: Tue, 17 Jul 2018 10:22:22 GMT  
		Size: 38.7 MB (38693184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc77cd9ce24b421dad045d006a1dd1a4cdcb6e8e8a003fc36afcf3004de470b4`  
		Last Modified: Thu, 26 Jul 2018 09:44:23 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4128f3eef76ff106882b38b4b38779e2481028fbe81e686f3d19ee7589937a`  
		Last Modified: Thu, 26 Jul 2018 09:44:30 GMT  
		Size: 9.2 MB (9177147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a180284178b95a7c6d79a1d273283aeab6cb367ffa5711df7746e48d00114`  
		Last Modified: Thu, 26 Jul 2018 09:44:26 GMT  
		Size: 6.7 MB (6674159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e533cef6ec5feef6e4c5a44b97e9bb071372a261298837b4597b9d5794bfef35`  
		Last Modified: Thu, 26 Jul 2018 09:44:23 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
