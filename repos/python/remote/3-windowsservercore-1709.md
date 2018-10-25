## `python:3-windowsservercore-1709`

```console
$ docker pull python@sha256:9337e2906c44e8ae7b44720fe358cc4b7eede79bcb211405c33e1f1879f19deb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.726; amd64

### `python:3-windowsservercore-1709` - windows version 10.0.16299.726; amd64

```console
$ docker pull python@sha256:b490604d1de3714185d735d5b8d96936d940dfcf4f18346f2027407b4c7f8c54
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3198459071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0400bb4cf43f4e1cd317281f9c3102d6f50d706ec4c95330ba2f331327fd2fe`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 01 Oct 2018 22:02:14 GMT
RUN Install update 10.0.16299.726
# Wed, 10 Oct 2018 09:42:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 25 Oct 2018 20:07:01 GMT
ENV PYTHON_VERSION=3.7.1
# Thu, 25 Oct 2018 20:07:02 GMT
ENV PYTHON_RELEASE=3.7.1
# Thu, 25 Oct 2018 20:09:44 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 25 Oct 2018 20:09:44 GMT
ENV PYTHON_PIP_VERSION=18.1
# Thu, 25 Oct 2018 20:11:19 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 25 Oct 2018 20:11:20 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd7a4737dfbb59b49c30480146e7f0a61842409755bd479b63004c5643d0ed3`  
		Last Modified: Mon, 08 Oct 2018 19:38:11 GMT  
		Size: 866.5 MB (866458210 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cf0d3e1d36b0cda001b50a29a3b2898c0f456696a4491b2d5536e4af41eed468`  
		Last Modified: Wed, 10 Oct 2018 10:08:52 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375c2aae74fc167ee6b0ff89df352e994b2af5a81db92685cf624a16d2f05b19`  
		Last Modified: Thu, 25 Oct 2018 20:22:31 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203d309e2d0837528b5bec41721d9d1c1f11b8291e39f94d4ca1f8530fcc0d2a`  
		Last Modified: Thu, 25 Oct 2018 20:22:28 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce0e75c5c24f6e56759505b4d777ff37a0dfbaa95dc4cd185b4ca611a79c11c`  
		Last Modified: Thu, 25 Oct 2018 20:22:55 GMT  
		Size: 48.2 MB (48199282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf2dc0dfad6a3982d5db57e58bbc05e49471ad29a8abbe5b2674e623dbf1aa8`  
		Last Modified: Thu, 25 Oct 2018 20:22:29 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2012a30d0e5c5821c420c7ae969d481cd1e41a4ad9f4ddf6fb70bcac6c3c1fc`  
		Last Modified: Thu, 25 Oct 2018 20:22:42 GMT  
		Size: 9.5 MB (9495025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2977f4d6eb24f553105b8ff7013141d0fcc57b47376e2b93e90e5f988e12728a`  
		Last Modified: Thu, 25 Oct 2018 20:22:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
