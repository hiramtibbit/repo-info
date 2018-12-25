## `python:2-windowsservercore-1709`

```console
$ docker pull python@sha256:20330186298853615b62d6edbb401a0a707493ebacae51a39d1ce890be73c7d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `python:2-windowsservercore-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull python@sha256:53a164cb8c21ac5f389773363fd3f8b4c5f9b13ed01149d230bd450ab664d708
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3206938197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c668bbffea4d657055defe68549d45d0bfd2e0e3233dc7f72706a01219d468e2`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 17:23:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 17:45:27 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 25 Dec 2018 17:45:29 GMT
ENV PYTHON_RELEASE=2.7.15
# Tue, 25 Dec 2018 17:47:52 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 17:47:53 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 25 Dec 2018 17:49:36 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 17:50:37 GMT
RUN pip install --no-cache-dir virtualenv
# Tue, 25 Dec 2018 17:50:39 GMT
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
	-	`sha256:d4e9ddb6c8151496aa4e227bb0e7538a2ef684254c3e2f17473e9bba8912513a`  
		Last Modified: Tue, 25 Dec 2018 17:54:43 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288450c100c9a791ae615761c1ffb274e33b88d201a6be953911f7cc1c774c4c`  
		Last Modified: Tue, 25 Dec 2018 17:54:43 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120451ad334a40e20bf53b911498a70446ef95ba5f7d44a555cba444c693163d`  
		Last Modified: Tue, 25 Dec 2018 17:55:03 GMT  
		Size: 38.8 MB (38764793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9c9e2e82dd130acb04a3ddd82a740b2e93579e9258dbeb8efa37d32af994e4`  
		Last Modified: Tue, 25 Dec 2018 17:54:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b2a06f8c7d2e85c8c2733bcbd7b384a6fd969ee4987d3caf0de74c26fc5830`  
		Last Modified: Tue, 25 Dec 2018 17:54:54 GMT  
		Size: 9.2 MB (9238683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c318d2a5f3e4304e573416298e8f74da00b64fda95ff95a3aa0ebd8c89593222`  
		Last Modified: Tue, 25 Dec 2018 17:54:42 GMT  
		Size: 6.8 MB (6791099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fa65d427b52f0703787cfdfb54b9cdecf2ecf29dcaebeb5e8c3b3fe47fedce`  
		Last Modified: Tue, 25 Dec 2018 17:54:39 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
