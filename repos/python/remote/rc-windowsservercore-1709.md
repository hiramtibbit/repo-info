## `python:rc-windowsservercore-1709`

```console
$ docker pull python@sha256:2b7315576940cf214e241814614898d577df1bfd627e6fea4b0f18fe7e6b9b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `python:rc-windowsservercore-1709` - windows version 10.0.16299.371; amd64

```console
$ docker pull python@sha256:2d81970917641865bd4372298407ed90054d4ffacb0a6393d2d9880713357422
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3093371227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279a3249d00ab619cf3676e2ed8fcb470eea7b9154ac49305018498576414624`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 27 Apr 2018 09:32:37 GMT
ENV PYTHON_VERSION=3.7.0b3
# Fri, 27 Apr 2018 09:32:37 GMT
ENV PYTHON_RELEASE=3.7.0
# Fri, 27 Apr 2018 09:34:59 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Fri, 27 Apr 2018 09:35:00 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 27 Apr 2018 09:36:22 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 27 Apr 2018 09:36:23 GMT
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
	-	`sha256:c0a2439d9532c805f58bf45f7b2e175c28ed7668272edaaefec255c6f3722c6d`  
		Last Modified: Fri, 27 Apr 2018 09:55:13 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d81ab482e8ca9d5db2385c2aefbd02c891e66c18d423a5e4559e5b82746969`  
		Last Modified: Fri, 27 Apr 2018 09:55:09 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a99a1557a4f4a5a6ed3648787fa444590fa9a6499e8344598bfbe128cea4093`  
		Last Modified: Fri, 27 Apr 2018 09:55:33 GMT  
		Size: 48.1 MB (48085217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319c865e2f0f699f345a4ebbc22025459377433f96d93d573aeb8822c3f9db3e`  
		Last Modified: Fri, 27 Apr 2018 09:55:10 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8263c791a380176e34a32ab06a26bda00e7af59c0f497e808414c500d659c6f6`  
		Last Modified: Fri, 27 Apr 2018 09:55:20 GMT  
		Size: 9.4 MB (9429798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff30fc201383c7b214f1963226a1c04ba17a592c99c883b6c266bf32ee55f38a`  
		Last Modified: Fri, 27 Apr 2018 09:55:10 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
