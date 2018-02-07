## `python:rc-windowsservercore-1709`

```console
$ docker pull python@sha256:b078814f9b73c45f1be08f71c3b1acd5ad49836096ee8ef1ba2a957e3b766c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.192; amd64

### `python:rc-windowsservercore-1709` - windows version 10.0.16299.192; amd64

```console
$ docker pull python@sha256:70217f1e069fd94bf2d0d9f11747f9cd66a280e1040a45d6e96618c05d7680e7
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (3019892043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfdd339b33c0e7a7340ff5614fc9973fd6875fb1af5cd515fe74e7563e3ca229`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 03 Jan 2018 04:46:54 GMT
RUN Install update 10.0.16299.192
# Mon, 08 Jan 2018 17:27:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 07 Feb 2018 17:30:42 GMT
ENV PYTHON_VERSION=3.7.0b1
# Wed, 07 Feb 2018 17:30:43 GMT
ENV PYTHON_RELEASE=3.7.0
# Wed, 07 Feb 2018 17:33:40 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 07 Feb 2018 17:33:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 07 Feb 2018 17:35:23 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 07 Feb 2018 17:35:24 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f887ccb8077bdc1f1fedd2da6066bb3542c528f5d103b40659ac25785ba4b9b`  
		Last Modified: Fri, 05 Jan 2018 19:38:30 GMT  
		Size: 689.7 MB (689720734 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:189c9822c1fc60043703fa16f44b1cab80d3a786d35bd6b61628d2b3f1fb9635`  
		Last Modified: Mon, 08 Jan 2018 17:34:16 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb2229e3dbf51e26859d3a60834f919a5929f8d41c74ec3458fc6f07a20fb65`  
		Last Modified: Wed, 07 Feb 2018 17:42:25 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a87e94c1413d81df67b7c1a247e1f02b882781fbceece8b5b630f8e87360469`  
		Last Modified: Wed, 07 Feb 2018 17:42:21 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca131cd23dbd952c9e0057a4bd3840e475764a07ea800d654c01cc3f9fecd92`  
		Last Modified: Wed, 07 Feb 2018 17:42:49 GMT  
		Size: 46.9 MB (46915783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debd7b2be6bc25973694226ccce4306506c9ef717ac74e217e52f07ed212cc22`  
		Last Modified: Wed, 07 Feb 2018 17:42:21 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79046d8e98792dc72535fe0204531c129b10ad33d450c309e48370b5967d218a`  
		Last Modified: Wed, 07 Feb 2018 17:42:33 GMT  
		Size: 8.9 MB (8948972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869139025a436ca79fd06fdf96766d91df2f135f77ea7cbc9ed1001beb851e1e`  
		Last Modified: Wed, 07 Feb 2018 17:42:21 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
