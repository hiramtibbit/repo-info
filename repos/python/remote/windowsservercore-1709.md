## `python:windowsservercore-1709`

```console
$ docker pull python@sha256:427a777f5f97962792fcec09e87b3df0f6124cfcc4bf9ea86e2488e86a9dd78d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.309; amd64

### `python:windowsservercore-1709` - windows version 10.0.16299.309; amd64

```console
$ docker pull python@sha256:b1407d192e274c0c2256591a984e58dbc0c52a8569bd445560b67a1ce3e5f3d9
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3076031002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2f023638ce597600fef7d624985b62a6566a9ec3221431bbcaa6158f9405af`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 05 Mar 2018 03:12:43 GMT
RUN Install update 10.0.16299.309
# Wed, 14 Mar 2018 02:30:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 16:40:09 GMT
ENV PYTHON_VERSION=3.6.4
# Wed, 14 Mar 2018 16:40:10 GMT
ENV PYTHON_RELEASE=3.6.4
# Wed, 14 Mar 2018 16:42:31 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Fri, 23 Mar 2018 16:33:14 GMT
ENV PYTHON_PIP_VERSION=9.0.3
# Fri, 23 Mar 2018 16:34:49 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 23 Mar 2018 16:34:51 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:85f53e48ded4065a2dbea91a8444ffe14a44776674c9e437439702f9982f045f`  
		Last Modified: Tue, 13 Mar 2018 01:07:51 GMT  
		Size: 745.0 MB (745003512 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1752d0f4f0a05997b1c402225ed814b05d5b6704edffd353a828a56dc79c64e5`  
		Last Modified: Wed, 14 Mar 2018 16:55:14 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8084da17f80705e9cddfd5bb4cf6a665c018b1e7d5aae00624083a22319f5d25`  
		Last Modified: Wed, 14 Mar 2018 16:56:49 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3739512b031bde8c82864ede2dee3e1e60e51c8ebaab38b4481bd2cafb40259e`  
		Last Modified: Wed, 14 Mar 2018 16:56:44 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7692244563a526a5b0f9bab3ab39873a82a590a428b49e9371c8040977518d8`  
		Last Modified: Wed, 14 Mar 2018 16:57:10 GMT  
		Size: 47.3 MB (47277935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23431107dda0e9799389c7a6ca8bf5735b883bc2b721c2eb53c2b104c8b250d4`  
		Last Modified: Fri, 23 Mar 2018 16:42:46 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fdbdd3a4b2f91ca8d0551db327563d07871eb402f47f9a45a560653c0d4def8`  
		Last Modified: Fri, 23 Mar 2018 16:42:54 GMT  
		Size: 9.4 MB (9443028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d640f73460c95fc22e2139a512a88b975c9ecc56f9628c666db82346ac831f`  
		Last Modified: Fri, 23 Mar 2018 16:42:45 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
