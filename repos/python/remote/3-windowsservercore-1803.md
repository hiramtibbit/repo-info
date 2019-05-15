## `python:3-windowsservercore-1803`

```console
$ docker pull python@sha256:171bf22528063c87ba0a9ebe1100862f7dc7c27e9638bfed2e7e2be15ee6581d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `python:3-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull python@sha256:8dcecfb428aa5d0b7188b4e2ae00b3d7018521896dda305a641fb9987c128612
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2356832655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fbd510cdc1753aefc2123e034b9aaead565aa908d721ca1dae8497b0afdf3d7`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 13:43:44 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 15 May 2019 13:43:46 GMT
ENV PYTHON_RELEASE=3.7.3
# Wed, 15 May 2019 13:45:59 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 13:46:01 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 15 May 2019 13:47:04 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 15 May 2019 13:47:05 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781e81add08a76a4a5c2495b441695a1ad13afd397a8380bfd05ab65b3001f19`  
		Last Modified: Wed, 15 May 2019 14:07:59 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12bf55835ca4c89cfe3e5fff65559093a971dc1c9e2f0c6e32d5f53d32b2dca`  
		Last Modified: Wed, 15 May 2019 14:07:55 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119adcf21b72723fa07ab012ba2bc2edb9f1df7a57b0b6b95ef074b5f9234320`  
		Last Modified: Wed, 15 May 2019 14:08:17 GMT  
		Size: 49.4 MB (49439374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87dc92171a15f5c8567b78b8fb45cc720d0c588f19801c1051149be657ddfee`  
		Last Modified: Wed, 15 May 2019 14:07:56 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40892d3ef2b20b5763b0882af2af4bace84a7156fd3d308441960522506d01`  
		Last Modified: Wed, 15 May 2019 14:08:05 GMT  
		Size: 5.1 MB (5137132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b381cc1207ebf5edfbed2e1ee70c9ccd40a2a22c5294d24787db361a7fa9d76`  
		Last Modified: Wed, 15 May 2019 14:07:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
