## `python:rc-windowsservercore-1809`

```console
$ docker pull python@sha256:a737572c47764a692da5dc9d6a1bcb780fbf4829a35ec0a1699967e2de656853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64

### `python:rc-windowsservercore-1809` - windows version 10.0.17763.504; amd64

```console
$ docker pull python@sha256:c8358a75f67857fafcb823de20e359d17976d523165a50658c1f3f0d3872c608
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2133810471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:426b7161c779b80c5786d470ad82b2613e756910d7f652936f1e432135eb0ef9`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 14:06:25 GMT
ENV PYTHON_VERSION=3.8.0a4
# Wed, 22 May 2019 14:06:26 GMT
ENV PYTHON_RELEASE=3.8.0
# Wed, 22 May 2019 14:08:51 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:08:53 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 22 May 2019 14:09:54 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:09:55 GMT
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
	-	`sha256:5df466ca3026c6daa162060b82d223d63ff6488398fed49ef0beec3fcf019d5a`  
		Last Modified: Wed, 22 May 2019 14:48:56 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47545e62b6f8543a4c2e195ecbc2846071a8d71e2cf7a7dc12b556e87efb536b`  
		Last Modified: Wed, 22 May 2019 14:48:53 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfb04ca7b013845375bbda01e8e54fe445aa5ba7722504d72640b4577752481`  
		Last Modified: Wed, 22 May 2019 14:49:17 GMT  
		Size: 49.5 MB (49527697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf8a5f23c8e9d1c064536e09291557e7c034e25f890463a98843026377db32b`  
		Last Modified: Wed, 22 May 2019 14:48:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a907d1d4e17d47e9d6120a4c4eee75fbe844cc8123923f56f9c3c6abf60f5d1`  
		Last Modified: Wed, 22 May 2019 14:49:06 GMT  
		Size: 5.2 MB (5150101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ab3bbca4d4cf2a449f766ff8476dfd245f1eb0aee97a3fb259f246fb73b025`  
		Last Modified: Wed, 22 May 2019 14:48:53 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
