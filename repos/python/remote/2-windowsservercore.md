## `python:2-windowsservercore`

```console
$ docker pull python@sha256:3034894d6555ca7a6a72300bd3f25fff7585e3b4fd931c4f6b628bc05abd13bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64
	-	windows version 10.0.16299.967; amd64

### `python:2-windowsservercore` - windows version 10.0.14393.2791; amd64

```console
$ docker pull python@sha256:3842c184dd00273fb0c184060d640cd54fce1a35f72fc7aca6734cd1d9eceb28
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5696041081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f5c16f848fb51f2afe9c76ea47336e5a40cc5a4febc01521bf566b11b0d03a`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Wed, 13 Feb 2019 10:35:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Feb 2019 10:54:01 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 13 Feb 2019 10:54:02 GMT
ENV PYTHON_RELEASE=2.7.15
# Wed, 13 Feb 2019 10:56:20 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 10:56:22 GMT
ENV PYTHON_PIP_VERSION=19.0.2
# Wed, 13 Feb 2019 10:58:09 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 10:59:12 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 13 Feb 2019 10:59:14 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b479a92ce115faf181c1196d762b00f05ec9aa83dc2fec2b7ca094c8d6e1bfff`  
		Last Modified: Mon, 11 Feb 2019 20:08:57 GMT  
		Size: 1.6 GB (1570061102 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d6be0e7f96b74f68be8ae9cde286b6108d09d939d8cb130d00bfb8519a6b7fbc`  
		Last Modified: Wed, 13 Feb 2019 11:04:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46adcd8d0d772d59ce133c3a4745ed1c7f813562b84330de01542e1036d4e3b7`  
		Last Modified: Wed, 13 Feb 2019 11:07:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa43bc5f43d38b9f68306ae2b6e651d9747814648e3c8cac89de28f3245da119`  
		Last Modified: Wed, 13 Feb 2019 11:07:26 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf673fa08557b7cad2080ef49ad14c829f4f3a28aff2914868f21c1c4c63ca7f`  
		Last Modified: Wed, 13 Feb 2019 11:07:46 GMT  
		Size: 39.1 MB (39108190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5685cd366177b86d59ecbe7b13bcb704b9bffff43ceaa7c528621789c024a9c5`  
		Last Modified: Wed, 13 Feb 2019 11:07:22 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754341e60414a23a4d66f6537c0305de02e0d0e198bcbca4964812af38a43417`  
		Last Modified: Wed, 13 Feb 2019 11:07:38 GMT  
		Size: 9.7 MB (9689985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b81e8cf1bfdd39c9dc6870519284b0f530bb479ba8843c0c65886e2823b5c5`  
		Last Modified: Wed, 13 Feb 2019 11:07:28 GMT  
		Size: 7.2 MB (7189858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fcb929be94b0fa9860b9993449f996809bf3160d923d802b91f7fdb48a3b75`  
		Last Modified: Wed, 13 Feb 2019 11:07:23 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-windowsservercore` - windows version 10.0.16299.967; amd64

```console
$ docker pull python@sha256:51ed3653041b0c2880de84aeb7cc77326359d95ae5ad17230566d7102a4b4303
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3202989404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c0c6f0c2f3f43b4d9e9eabe1c98bfd2846d7c624ab7cff7761fc3032692b34`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Fri, 08 Feb 2019 07:16:29 GMT
RUN Install update 10.0.16299.967
# Wed, 13 Feb 2019 10:40:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Feb 2019 10:59:29 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 13 Feb 2019 10:59:31 GMT
ENV PYTHON_RELEASE=2.7.15
# Wed, 13 Feb 2019 11:01:35 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 11:01:37 GMT
ENV PYTHON_PIP_VERSION=19.0.2
# Wed, 13 Feb 2019 11:03:12 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 11:04:04 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 13 Feb 2019 11:04:06 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:effca3ebc3a86f19a139eb7047c6e97d2fe4c941737e8d9698820d0491ccf530`  
		Last Modified: Mon, 11 Feb 2019 21:05:02 GMT  
		Size: 873.9 MB (873894336 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:731ba2742afc105cbc6ca69724a36a1b3dd4199873953d6581f5339a67939b09`  
		Last Modified: Wed, 13 Feb 2019 11:05:29 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f0de240a71718df908c74aff2694a1552e5539c252d915e4d8776375a57760`  
		Last Modified: Wed, 13 Feb 2019 11:08:05 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6568ccb339c698fa7f37710cb55fbadb4f38323655ca12c067f078aadcbcc5`  
		Last Modified: Wed, 13 Feb 2019 11:08:04 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d012b0e410f2cb42323f84b6fe12092ac31de58f9c825d875353a74c20356be`  
		Last Modified: Wed, 13 Feb 2019 11:08:28 GMT  
		Size: 38.7 MB (38731625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ff8ce1040c313a7d22e8319fe319f3697c236ea9bded8994f5da282a7e15f4`  
		Last Modified: Wed, 13 Feb 2019 11:08:01 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf57f66a1f9d819feb828359d5fa7de0b7426a05ce60ead7abe9e47cf7e0a4be`  
		Last Modified: Wed, 13 Feb 2019 11:08:17 GMT  
		Size: 9.3 MB (9265537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a305acf3c7f6460f7b516f9a99c05d3cbb88dce8e73b8b6a37deefee7ac018`  
		Last Modified: Wed, 13 Feb 2019 11:08:04 GMT  
		Size: 6.8 MB (6791302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c97a2435588efbd24f6971e0a39af94e73bf3b4b9d0070f1551b439e2818b3`  
		Last Modified: Wed, 13 Feb 2019 11:08:01 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
