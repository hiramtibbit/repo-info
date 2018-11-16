## `python:windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:19a333da1ef7b828dffd748c71745573040ec3ab45772db474b09c7433b66cb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `python:windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull python@sha256:2636c9d696f718937c3e6cf54d956a561f7934ca8f57a1a7001ab3e011973a39
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5696956037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55894048539cca4507d25c545408778715c91b0cf2ffad7e1106cbb473e3b3d9`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Nov 2018 11:50:25 GMT
ENV PYTHON_VERSION=3.7.1
# Fri, 16 Nov 2018 11:50:26 GMT
ENV PYTHON_RELEASE=3.7.1
# Fri, 16 Nov 2018 11:54:14 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Fri, 16 Nov 2018 11:54:16 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 11:56:16 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 16 Nov 2018 11:56:17 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c671e09d7698c6b0cd688195cf022b9fcfecf8a31533e856bdcd6ccbb7032`  
		Last Modified: Fri, 16 Nov 2018 12:23:54 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d1231eb9e75f7e450c41a84c0be54522a904c93fe1c0454f4372fa54c496e3`  
		Last Modified: Fri, 16 Nov 2018 12:23:51 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adc7170b7e423b2af03da09918fe4fc18da75c9803b330bf76d22684ecd4141`  
		Last Modified: Fri, 16 Nov 2018 12:24:20 GMT  
		Size: 53.1 MB (53083085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df2e032d7243481a2fc1f93909bf57ab84e6a792e1626d306ae089eb874a327`  
		Last Modified: Fri, 16 Nov 2018 12:23:51 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649af3afa13655e3d42302bc79e02d4e9d6983f2f62b2de8328c4a2be3f5009c`  
		Last Modified: Fri, 16 Nov 2018 12:24:04 GMT  
		Size: 9.9 MB (9945936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fec4fc2e70224c5de626b96d2dc1701938da4e58df90c3e75a1199963435e6`  
		Last Modified: Fri, 16 Nov 2018 12:23:51 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
