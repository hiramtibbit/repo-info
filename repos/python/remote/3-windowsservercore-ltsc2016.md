## `python:3-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:f2e6ac1ee52c73a1eeb92f5ee51f13fc5fb7a93b89eb661a2813c2d38df523b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `python:3-windowsservercore-ltsc2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull python@sha256:2db2af451b6b988f690b1d88614269e3de800d0ebf041ba0544054c934c6d445
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5574721639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e13a73eba526aee18e04035e654033b8d104f70a5cfefdc6e2d701ef03a0b030`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Aug 2018 09:51:42 GMT
ENV PYTHON_VERSION=3.7.0
# Thu, 23 Aug 2018 09:51:43 GMT
ENV PYTHON_RELEASE=3.7.0
# Thu, 23 Aug 2018 09:55:13 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 09:55:14 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 23 Aug 2018 09:57:18 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 09:57:19 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456b4db031d8cf5828abae9e4985e05853146225b038dfe9c894cb463e562b15`  
		Last Modified: Thu, 23 Aug 2018 10:24:55 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e478b04c353ef5de5e2ed70ed158ae247c762b305ccf74e467b224a25f3852`  
		Last Modified: Thu, 23 Aug 2018 10:24:51 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9429b8e567303cb428cb0ca42842c25a9a561d228a94bb3f8a495acf367ea2`  
		Last Modified: Thu, 23 Aug 2018 10:25:23 GMT  
		Size: 53.0 MB (53018174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173d4fc892a7c09740b4db8fdec80a4f9dac3a1ce8d3bcdc8a94ee4b3aebdc2a`  
		Last Modified: Thu, 23 Aug 2018 10:24:51 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfd4332db377a3af617b6f265034416818d1250df17f91aacd80a37ca60cc14`  
		Last Modified: Thu, 23 Aug 2018 10:25:06 GMT  
		Size: 9.8 MB (9806495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7715816bb385ab8707551ba02697741ae091adec08959580436480a60284cb2`  
		Last Modified: Thu, 23 Aug 2018 10:24:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
