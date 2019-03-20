## `python:3-windowsservercore-1803`

```console
$ docker pull python@sha256:e2d0c5523ed9ee043f364b3e71639829ab7d3cb6ff02b57c7a47f5f80802fcec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.648; amd64

### `python:3-windowsservercore-1803` - windows version 10.0.17134.648; amd64

```console
$ docker pull python@sha256:b76e05e9afd5060b7b520c6b956760b5b0b6de2d1e788008502e0ece2d6e3615
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2307374956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1baea57ddb6c591c5b144d70da56ee04c92a5d25073da370ca02bcd4f3c8e942`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 08 Mar 2019 23:20:01 GMT
RUN Install update 10.0.17134.648
# Sat, 16 Mar 2019 09:44:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 20 Mar 2019 09:45:36 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 20 Mar 2019 09:45:38 GMT
ENV PYTHON_RELEASE=3.7.2
# Wed, 20 Mar 2019 09:48:15 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:48:18 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 20 Mar 2019 09:49:31 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 09:49:32 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be86bca8de59067e592a8becc2e83ed2465a6d9bce324043e434aa4a15493b00`  
		Last Modified: Mon, 11 Mar 2019 21:17:02 GMT  
		Size: 593.3 MB (593288046 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:97db8a70a029fc0e25892873d5695bd2b9a1c93e4cd7dcd91fcddf338989a592`  
		Last Modified: Sat, 16 Mar 2019 10:43:05 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c019b1f3c1ec43ac39f43968ca74c7e019a54992b0be489a3a54074e20d6f468`  
		Last Modified: Wed, 20 Mar 2019 11:07:43 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59311641722e1f0ca08da93afb46f4d06d1a03726362fdfdbbfd821a38133a3b`  
		Last Modified: Wed, 20 Mar 2019 11:07:40 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001509541a490a0acb526b12981c312948fe1b57ecfc8facb398836cc220943c`  
		Last Modified: Wed, 20 Mar 2019 11:08:09 GMT  
		Size: 49.3 MB (49285656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c61bcc822b1aad32e5fbceca4f91073d3ca11b311d4b76785e892a513749bc`  
		Last Modified: Wed, 20 Mar 2019 11:07:41 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f544f6e4bc976623599f4403f81871869257ef5219da0960b9dc0955c7345b7`  
		Last Modified: Wed, 20 Mar 2019 11:07:54 GMT  
		Size: 5.1 MB (5106979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630e12c204c5e06629ddaa04cb36fd76fb2c14a98aefd1f1adf008bc9c0e3ef6`  
		Last Modified: Wed, 20 Mar 2019 11:07:41 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
