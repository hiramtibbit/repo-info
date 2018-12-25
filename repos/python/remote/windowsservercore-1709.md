## `python:windowsservercore-1709`

```console
$ docker pull python@sha256:167612f55a23a49bb5fd905e4fdc578ff4d6887baf77782b7610ee66899c153f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `python:windowsservercore-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull python@sha256:db5958b688730469016a72205ff343332fd1506647f09a43a3f952e01569cedf
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3209890044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31fd52bdeec67eb8600c9aa7acb3ce0e7d4e757e8a1cfe7b391078a3160a2662`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 17:23:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 17:23:39 GMT
ENV PYTHON_VERSION=3.7.1
# Tue, 25 Dec 2018 17:23:41 GMT
ENV PYTHON_RELEASE=3.7.1
# Tue, 25 Dec 2018 17:26:52 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 17:26:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 25 Dec 2018 17:28:32 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 17:28:33 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7c1b47cffe80520ef16d931d598cdadd371f9cb1e4ca9304d9c7532bb19c9721`  
		Last Modified: Tue, 25 Dec 2018 17:52:11 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baaa5f0f744ebe995a5a9dd65ad57e46c2e390c758e864c158481806483acf1b`  
		Last Modified: Tue, 25 Dec 2018 17:52:10 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08daf6bf7aa8046ead90ea989b3df38e6cc13298d43968daf989d419163a4fd2`  
		Last Modified: Tue, 25 Dec 2018 17:52:07 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b425d8454dc1e5070cfda2a9f20618dbaa7e333b40536551da33256163d9602`  
		Last Modified: Tue, 25 Dec 2018 17:52:32 GMT  
		Size: 48.2 MB (48222754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeab074d30c73a0e04701c24b27620d7137f1bf3001f6ed7e3ec2203be903382`  
		Last Modified: Tue, 25 Dec 2018 17:52:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fa9100ddb39210e29a2c23dc7f7e63b19561c76e8cc2d0f9a7544cb7e7deab`  
		Last Modified: Tue, 25 Dec 2018 17:52:20 GMT  
		Size: 9.5 MB (9523666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9480b40916e9edd0ae11a21d389bac67cd29cc90d2de10922389c4fe00b30fb`  
		Last Modified: Tue, 25 Dec 2018 17:52:07 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
