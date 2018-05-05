## `python:rc-windowsservercore-1709`

```console
$ docker pull python@sha256:f40fdcd6e42c2f429b073305a9a5fbba0ff06161b5459ed1b0df4a82c2773102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `python:rc-windowsservercore-1709` - windows version 10.0.16299.371; amd64

```console
$ docker pull python@sha256:c365c279b49ebf1ca50ba631c89151df2d2ce31d15d3297087aa4deee3ce49c7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3093581819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ae36850caef994b73d06c344d834c62bff773918b0a425e812ee55f9fbe6366`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 05 May 2018 09:19:53 GMT
ENV PYTHON_VERSION=3.7.0b4
# Sat, 05 May 2018 09:19:54 GMT
ENV PYTHON_RELEASE=3.7.0
# Sat, 05 May 2018 09:22:45 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Sat, 05 May 2018 09:22:46 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 09:24:06 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Sat, 05 May 2018 09:24:07 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953d020d131191a2c29256f4a99e89951be12600d55dc42b87b7afc7cd6cd767`  
		Last Modified: Sat, 05 May 2018 09:35:09 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4afe5e2ec5ef33d6c22b340a1efa99a6a1033caf8edc71b120df01f0d38d13`  
		Last Modified: Sat, 05 May 2018 09:35:06 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfe6d47ae749efc07f9de464c5ea1566062c9f938377d97537d9a596950d78d`  
		Last Modified: Sat, 05 May 2018 09:35:30 GMT  
		Size: 48.3 MB (48302159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0905b3a4817d2175caa8a8da8fd5ee876c0fecf2f25c9baad4a2ebf89fb03bdf`  
		Last Modified: Sat, 05 May 2018 09:35:06 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e05c880898ed6b036c1bfa10453dadd7c7b2395cd1f621e861874b332b44a3`  
		Last Modified: Sat, 05 May 2018 09:35:16 GMT  
		Size: 9.4 MB (9423459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aae40b318e172a1daa887f04fdbaf2926a573e227329a738b1ba471ef5418f4`  
		Last Modified: Sat, 05 May 2018 09:35:05 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
