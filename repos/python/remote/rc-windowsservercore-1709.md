## `python:rc-windowsservercore-1709`

```console
$ docker pull python@sha256:0c206a340e15c54fb5651b971f63c3f3ec48b15c96855f1da0aa5047df4115c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.1029; amd64

### `python:rc-windowsservercore-1709` - windows version 10.0.16299.1029; amd64

```console
$ docker pull python@sha256:7bc06dd99e0f9a05fd24bc92efdf8e176397671f9d9290a4aa290cbc68c1cc02
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3270077453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec82a8ac8c2de538228ac0ce8952f1e78baadb9cf209e938af1d5dcf7c5d0fcb`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Sat, 16 Mar 2019 09:35:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 20 Mar 2019 09:22:43 GMT
ENV PYTHON_VERSION=3.8.0a2
# Wed, 20 Mar 2019 09:22:45 GMT
ENV PYTHON_RELEASE=3.8.0
# Wed, 20 Mar 2019 09:25:46 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:25:47 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 20 Mar 2019 09:27:20 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:27:22 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7f4a716683dc03db3521ed040924c24ea9bd17c7f134c09bf22e33f6af33ade8`  
		Last Modified: Mon, 11 Mar 2019 21:13:17 GMT  
		Size: 936.6 MB (936551125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:81856e9377a060d58cb8798fbc456fc8414158afec682bdd098149edc0a7d1fc`  
		Last Modified: Sat, 16 Mar 2019 10:41:06 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c22b45567b13aff3cce06e6e0b90a6fac2f02d1eb02545b240ef82322af24ef`  
		Last Modified: Wed, 20 Mar 2019 11:03:42 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fdeb81ecad5d84588a7ef5162cb13a2da561de0a4f5893e520615bb93d5356`  
		Last Modified: Wed, 20 Mar 2019 11:03:40 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc513317be9b39c5f8b53bdd9eb1026ff21a02d0395ea73e0c26bfe7db3ddd55`  
		Last Modified: Wed, 20 Mar 2019 11:04:11 GMT  
		Size: 49.7 MB (49657364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758644e2d2085c73d9f0cdbddebf7820be78c8210ab318f505c572b808aac7fc`  
		Last Modified: Wed, 20 Mar 2019 11:03:40 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5338d99608ab4c6f867825c21ef0bbeb744f3a92053485dcf62d1b928e75bc34`  
		Last Modified: Wed, 20 Mar 2019 11:03:56 GMT  
		Size: 9.6 MB (9562353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc0a80027442e378371d1b5a7e34557dc32e9f8543f744b8749d5e990e06fae`  
		Last Modified: Wed, 20 Mar 2019 11:03:40 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
