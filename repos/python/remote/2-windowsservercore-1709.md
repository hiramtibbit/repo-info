## `python:2-windowsservercore-1709`

```console
$ docker pull python@sha256:6d8912e9390afdf987f160beed05d14b16f3519fc61413f23764b366b8b30739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.967; amd64

### `python:2-windowsservercore-1709` - windows version 10.0.16299.967; amd64

```console
$ docker pull python@sha256:d3add0bb5e5eb9016a7a68598c50d645b60d184311598948da0dde8a47a2065e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3203035762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e87c0156fa5466597b6200d8bf78db8564cef9194541e985a40d3ed41591942`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Fri, 08 Feb 2019 07:16:29 GMT
RUN Install update 10.0.16299.967
# Wed, 13 Feb 2019 10:40:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Feb 2019 10:59:29 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 13 Feb 2019 10:59:31 GMT
ENV PYTHON_RELEASE=2.7.15
# Wed, 13 Feb 2019 11:01:35 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Fri, 22 Feb 2019 11:30:35 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 11:32:04 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 22 Feb 2019 11:32:55 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 22 Feb 2019 11:32:57 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:effca3ebc3a86f19a139eb7047c6e97d2fe4c941737e8d9698820d0491ccf530`  
		Last Modified: Mon, 11 Feb 2019 21:05:02 GMT  
		Size: 873.9 MB (873894336 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:731ba2742afc105cbc6ca69724a36a1b3dd4199873953d6581f5339a67939b09`  
		Last Modified: Wed, 13 Feb 2019 11:05:29 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f0de240a71718df908c74aff2694a1552e5539c252d915e4d8776375a57760`  
		Last Modified: Wed, 13 Feb 2019 11:08:05 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6568ccb339c698fa7f37710cb55fbadb4f38323655ca12c067f078aadcbcc5`  
		Last Modified: Wed, 13 Feb 2019 11:08:04 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d012b0e410f2cb42323f84b6fe12092ac31de58f9c825d875353a74c20356be`  
		Last Modified: Wed, 13 Feb 2019 11:08:28 GMT  
		Size: 38.7 MB (38731625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da348e8cecd49cb79aed22e2d49739910e2a8e22364552a9627f18877321d893`  
		Last Modified: Fri, 22 Feb 2019 12:21:16 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b085b98c2f337f390d26eb64316f6a1bea1f99022c6251ae8a7eda899e6e76`  
		Last Modified: Fri, 22 Feb 2019 12:21:25 GMT  
		Size: 9.3 MB (9292831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62c19dfa048fb6fc3a57f36f02d30edf82c722a8ddb0861c69e85a06c4e9fc`  
		Last Modified: Fri, 22 Feb 2019 12:21:19 GMT  
		Size: 6.8 MB (6810373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a1e86d869b951713aaf12f10a87e732c9577b3e188e94e28a9c442dab88fbc`  
		Last Modified: Fri, 22 Feb 2019 12:21:17 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
