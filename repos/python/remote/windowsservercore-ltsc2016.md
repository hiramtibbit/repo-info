## `python:windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:4a53800f8db8841e4aa175e8673210d7fd6e065a66f83466b065e51b384a6efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `python:windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull python@sha256:4d2f40dc41769010e6e2203e9a74501d3ece9f90b3f1a3d3afe63181df6e1d94
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5702200035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0409cc0c626177d244f82481d2471527dab2f644de541385d779f079c760f334`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 11 Apr 2019 23:11:25 GMT
ENV PYTHON_VERSION=3.7.3
# Thu, 11 Apr 2019 23:11:26 GMT
ENV PYTHON_RELEASE=3.7.3
# Thu, 11 Apr 2019 23:14:04 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 11 Apr 2019 23:14:05 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Thu, 11 Apr 2019 23:15:52 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 11 Apr 2019 23:15:53 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1aac0897bbf76e49edb075edaa7f42c0bb3d2259584141487b5b9422d3ad6f4`  
		Last Modified: Fri, 12 Apr 2019 00:05:25 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf7110b9edfcc0756d229a50253d7e6f7c6dc8c5351bacc5b0e4749f49fbb01`  
		Last Modified: Fri, 12 Apr 2019 00:05:22 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c472f676bbd79e99a9b8321ccf6925b0205a063968a970219caddc52618524ec`  
		Last Modified: Fri, 12 Apr 2019 00:05:47 GMT  
		Size: 49.8 MB (49843478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f0dde4e23772d62037e461da2283fc3015a94175ed4ba09da7db5d0098aaca`  
		Last Modified: Fri, 12 Apr 2019 00:05:23 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3c39892d8a108f3cea25c0047e1d73406f018560aa9e4f0bd4ad5ae2a90b8d`  
		Last Modified: Fri, 12 Apr 2019 00:05:35 GMT  
		Size: 10.0 MB (9980816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9778750d70d6ad3fa3536c2bd822df28b09f285087f4a252d981b5c7cf9f569d`  
		Last Modified: Fri, 12 Apr 2019 00:05:22 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
