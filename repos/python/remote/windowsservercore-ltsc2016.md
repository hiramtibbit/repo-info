## `python:windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:72deb3db7e64735dcb496e5bb90e97c7831649819fc22426c717f3d7c8f8f5cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64

### `python:windowsservercore-ltsc2016` - windows version 10.0.14393.2791; amd64

```console
$ docker pull python@sha256:4a7972f1ddc0f57876c06e0f1724b43255c38185cbbaaeafe641b1310ade0a1b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5699711836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2137b5b813847be0bca5933a6d94d0230e65dff43767a76e35de7e398082f95f`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Wed, 13 Feb 2019 10:35:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Feb 2019 10:35:08 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 13 Feb 2019 10:35:09 GMT
ENV PYTHON_RELEASE=3.7.2
# Wed, 13 Feb 2019 10:38:21 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 10:38:23 GMT
ENV PYTHON_PIP_VERSION=19.0.2
# Wed, 13 Feb 2019 10:40:06 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 10:40:07 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b479a92ce115faf181c1196d762b00f05ec9aa83dc2fec2b7ca094c8d6e1bfff`  
		Last Modified: Mon, 11 Feb 2019 20:08:57 GMT  
		Size: 1.6 GB (1570061102 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d6be0e7f96b74f68be8ae9cde286b6108d09d939d8cb130d00bfb8519a6b7fbc`  
		Last Modified: Wed, 13 Feb 2019 11:04:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e98b948ce4d850b7e65cd3be46e15acbfccb7d7ab97695161ff1020af43d40`  
		Last Modified: Wed, 13 Feb 2019 11:04:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b8861842386fe1290c2b09e1d10c5f536c89dcc10d3f0492da26eb58f81686`  
		Last Modified: Wed, 13 Feb 2019 11:04:42 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae8c36e4cde68e43f37435d46fb5cf97faca5a3b235059b3cd4c8bfb5139aab`  
		Last Modified: Wed, 13 Feb 2019 11:05:08 GMT  
		Size: 49.7 MB (49709025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d1057a87e0d28b50bdaa183b74764fd5f160bfd37667df88740061d5a65b6b`  
		Last Modified: Wed, 13 Feb 2019 11:04:42 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d612e02164b6dcc5d1c8d900dff22860bbf2e9dde5ce1bdbe230af302a826e58`  
		Last Modified: Wed, 13 Feb 2019 11:04:55 GMT  
		Size: 9.9 MB (9949753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0a8ea4d6bef8ebbdf0f358b84afdb0bfb1592d923d92ca7d3b1d192447c976`  
		Last Modified: Wed, 13 Feb 2019 11:04:42 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
