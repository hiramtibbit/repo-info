## `python:2-windowsservercore`

```console
$ docker pull python@sha256:2c97a7c834ef7cef808e8fabbfb84f2aa292bccf29323180f635d0164bf7edca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64
	-	windows version 10.0.17763.504; amd64

### `python:2-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull python@sha256:5fa5cbd7f42cccb6493b678e978b4d8577d21f3a1551dd7f0549e4db56be60d7
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5755896724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:944da3097b671f10ad25d0a62e76b4e15469c26f9b55ef11cb9a7a4f3216b144`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 12:40:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 14:33:47 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 22 May 2019 14:33:49 GMT
ENV PYTHON_RELEASE=2.7.16
# Wed, 22 May 2019 14:36:03 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:36:06 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 22 May 2019 14:37:45 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:38:49 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 May 2019 14:38:51 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:238abb146382d28000f03a82c40be99cbfac99a1480f9d23f8a6420cafc6b083`  
		Last Modified: Wed, 22 May 2019 13:21:05 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8586ee327c09c75362f77b2599e626520be904f6c90717ad80dcdb0c1e17ab0`  
		Last Modified: Wed, 22 May 2019 14:55:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c148a6974569e107a5efc9b7499e9a22a31b1ce5b2bbdba8849c4cccd589e08`  
		Last Modified: Wed, 22 May 2019 14:55:33 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3b93ec15a9b362b95682c0778a85655f17c618080c48b0bd1cf45c6450db4b`  
		Last Modified: Wed, 22 May 2019 14:56:08 GMT  
		Size: 39.2 MB (39167727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f6de07f0cf5c5cb77609bc98ce92c82aa0d95591746ed30122cbeb86f705`  
		Last Modified: Wed, 22 May 2019 14:55:30 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b0bc722ccce1642fee92a01e2050b92e26fd3218e2226c36406e14e243f60e`  
		Last Modified: Wed, 22 May 2019 14:55:44 GMT  
		Size: 9.7 MB (9719460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4951b30d71368725424d524605a2f5ed390e39feb9a338c9d817a758b9a89d`  
		Last Modified: Wed, 22 May 2019 14:55:33 GMT  
		Size: 7.2 MB (7215368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d61044a9071125e72643c5210829a6384a97784f877a361b6cca0dbd55aaad7`  
		Last Modified: Wed, 22 May 2019 14:55:30 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-windowsservercore` - windows version 10.0.17134.766; amd64

```console
$ docker pull python@sha256:badd7bfd7240b6022f01a3129508301e813ed3ad9e9094f351c91d926f7fd451
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2349469831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce1a8256c5b2057116b2ef59a10213c20f11a4a60fe15e40db22f0d68204cad`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 12:50:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 14:39:02 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 22 May 2019 14:39:03 GMT
ENV PYTHON_RELEASE=2.7.16
# Wed, 22 May 2019 14:40:58 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:41:00 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 22 May 2019 14:42:02 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:42:34 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 May 2019 14:42:36 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:437e42e2c79862963e84efa4879b7522ff44416964747070df92412c08b9d147`  
		Last Modified: Wed, 22 May 2019 13:23:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715c3c84444f05e7c5d2e4b206b4091e018b1bfd0fb4e2a31c97a6472b5d7217`  
		Last Modified: Wed, 22 May 2019 14:56:31 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b56b57ca649470be3c810179be51aca100c5b2ba986891f9f75c7603e986303`  
		Last Modified: Wed, 22 May 2019 14:56:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5397f3bb1446d2e1cc652758ca05d29b2cd6e41ce9a287d3ad6fb3417b83c28c`  
		Last Modified: Wed, 22 May 2019 14:57:19 GMT  
		Size: 38.8 MB (38769735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce76e0e11bd3aab8338dfcb77732f01e46a1acdf4f9ddf8f2d14b2567cbe7d5c`  
		Last Modified: Wed, 22 May 2019 14:56:28 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ef7b390df3ffde2cb0935acc1b30a3765415b70e3c9fb596c8867f8b0db0b7`  
		Last Modified: Wed, 22 May 2019 14:56:38 GMT  
		Size: 4.9 MB (4860756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925d6291bfc8bce93ef7f2d0f33dee09942a2b0f77ca1440e3aba6a239080dcd`  
		Last Modified: Wed, 22 May 2019 14:56:31 GMT  
		Size: 2.4 MB (2376590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5efa6a99bd18eb5372669dbab27131d030073b2ce2cd11dd5deadacd07999e`  
		Last Modified: Wed, 22 May 2019 14:56:29 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-windowsservercore` - windows version 10.0.17763.504; amd64

```console
$ docker pull python@sha256:30ad2aed3b249487a07ce4f78e987733e7122fd17623e9b3dc92977f9d5a10a4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2124687270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c7328bcc6598c15f948f751e0201dd552cfa70615795cb387ffad0ebfb3fb19`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 14:42:46 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 22 May 2019 14:42:47 GMT
ENV PYTHON_RELEASE=2.7.16
# Wed, 22 May 2019 14:44:40 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:44:42 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 22 May 2019 14:45:48 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:46:19 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 May 2019 14:46:20 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94981e937484fec59d5fc0a429db37f7d4399577fa536c40f352e54a803ce60f`  
		Last Modified: Wed, 22 May 2019 14:57:42 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a60ac0dbbe39852ba4cad50e19c9d0981205ff1b2c0368c5e40e954a17dfea5`  
		Last Modified: Wed, 22 May 2019 14:57:41 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42c1fde6a395bb80faa482ec6b90f6efe79415c4d3b2fa1764f18c734ceef69`  
		Last Modified: Wed, 22 May 2019 14:58:00 GMT  
		Size: 38.3 MB (38344395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e31be28b245b8f633e65a089200f5a418cb920d1ca44bc2d9b1f89e6963f0d`  
		Last Modified: Wed, 22 May 2019 14:57:39 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0294b26795ca05c348d898778a8762e8c06247dc9a9c3a7e052c249c0324f9b`  
		Last Modified: Wed, 22 May 2019 14:57:51 GMT  
		Size: 4.8 MB (4846525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f9f442bef647a05c83d4deae675de8ae132589fc7c5e0ef001b5e0a5c5959f`  
		Last Modified: Wed, 22 May 2019 14:57:40 GMT  
		Size: 2.4 MB (2363666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07246d1dfeae11aba1abb0f547a99a8f29d58df7b97195bf44ae09d758c1fd2`  
		Last Modified: Wed, 22 May 2019 14:57:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
