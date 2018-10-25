## `python:3-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:b909eda248d20ae9c58add9fa5a504752604fb8a2a94624b8baeab85c97d98d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `python:3-windowsservercore-ltsc2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull python@sha256:f9205ef8487f98eeb705a78882c96bd0dc58d95d629068fe1f79bf0477c36a9c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5659926199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85df789ca4bf9c83ea215c2ee1227e4ba35d5b12aeef97355b4522b1f62b14f0`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Wed, 10 Oct 2018 09:36:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 25 Oct 2018 09:29:38 GMT
ENV PYTHON_VERSION=3.7.1
# Thu, 25 Oct 2018 09:29:39 GMT
ENV PYTHON_RELEASE=3.7.1
# Thu, 25 Oct 2018 09:32:57 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 25 Oct 2018 09:32:58 GMT
ENV PYTHON_PIP_VERSION=18.1
# Thu, 25 Oct 2018 09:34:58 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 25 Oct 2018 09:34:59 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d41004b1d809eac4e77c97920984b278977d36627024ab085d0dd8ccc941ddeb`  
		Last Modified: Wed, 10 Oct 2018 10:08:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a394c749cc601d6d436f62e33cd039f082378fc3b2bd11a1d1b20f8c0317aea`  
		Last Modified: Thu, 25 Oct 2018 20:21:41 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10ab09c1041e719fd3a325e722bc1aab6944cc1580758a63ab7311d3c838c63`  
		Last Modified: Thu, 25 Oct 2018 20:21:39 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f590bd8091d747d2614c1c9f57d3d4339936f42cde8c0f97b9f5dc4d6b4fd7`  
		Last Modified: Thu, 25 Oct 2018 20:22:08 GMT  
		Size: 53.0 MB (52968802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faec7d6b8f35b0d12a2630e7a78043a13df1febdb69a8f968fa18415b00ee5d3`  
		Last Modified: Thu, 25 Oct 2018 20:21:39 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9833a22feda66cbe668cb45b0c4149a1055beb6d90d1a8ea0f9b9168db5e9455`  
		Last Modified: Thu, 25 Oct 2018 20:22:02 GMT  
		Size: 9.8 MB (9840485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c189ab484c790b5773e4569923bee534faf8c07c6f0ff4c0f19dc85487d3a1f`  
		Last Modified: Thu, 25 Oct 2018 20:21:39 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
