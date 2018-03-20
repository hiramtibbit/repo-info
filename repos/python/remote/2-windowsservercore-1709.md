## `python:2-windowsservercore-1709`

```console
$ docker pull python@sha256:9f713a84cf824439097ccca7795c0d8909f61260ec43381f268c6774029bc834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.309; amd64

### `python:2-windowsservercore-1709` - windows version 10.0.16299.309; amd64

```console
$ docker pull python@sha256:457073976bcffd1b80372605805c5ff48e2304ecb62b872217b974598f8b3d52
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3073138546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc96aa3008ca0d54857d3aadc40ae5192153c3ab7a7f6be9cc05b0ba11602617`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 05 Mar 2018 03:12:43 GMT
RUN Install update 10.0.16299.309
# Wed, 14 Mar 2018 02:30:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 16:49:36 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 14 Mar 2018 16:49:37 GMT
ENV PYTHON_RELEASE=2.7.14
# Wed, 14 Mar 2018 16:51:32 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Tue, 20 Mar 2018 16:37:25 GMT
ENV PYTHON_PIP_VERSION=9.0.2
# Tue, 20 Mar 2018 16:38:54 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 20 Mar 2018 16:39:54 GMT
RUN pip install --no-cache-dir virtualenv
# Tue, 20 Mar 2018 16:39:54 GMT
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
	-	`sha256:4372e03debd45d90eced2fc2ba908a4cd774080221fbb0649b0e902f9ba58d2b`  
		Last Modified: Wed, 14 Mar 2018 16:58:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981e2873b136bbf574756a436b18b1b0ea7f0ec29fa0020c46af499ff95d42d3`  
		Last Modified: Wed, 14 Mar 2018 16:58:09 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63dcad7bc68379603e5a2cba860cdd1b7f7ccbef72d836df911bd5feb0090746`  
		Last Modified: Wed, 14 Mar 2018 16:58:27 GMT  
		Size: 38.2 MB (38174728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75de938e07e17dd30eca9078772b7af0e7f8396499f2f077e49aa580a0a38f78`  
		Last Modified: Tue, 20 Mar 2018 16:42:29 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e9630054da2189437750a457e47b245dbf3fd9afa7a972a8a0f1c03decb0f3`  
		Last Modified: Tue, 20 Mar 2018 16:42:34 GMT  
		Size: 9.1 MB (9124882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a3bf7ba3f7b4d33eb3fc949b7a3d358efe5d8ede2e9c8eca976c96d80aeaa8`  
		Last Modified: Tue, 20 Mar 2018 16:42:31 GMT  
		Size: 6.5 MB (6528864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5da738cfdc7507e70bbf8034a0d4eee23faf776d55a86d439d6e1aeb2426aa`  
		Last Modified: Tue, 20 Mar 2018 16:42:28 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
