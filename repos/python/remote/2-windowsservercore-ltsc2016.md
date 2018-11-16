## `python:2-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:f5ef6fbfa622dd02241ac91222f5d0170733e1ae2056f6d5945e98c13b9ce110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `python:2-windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull python@sha256:d6b437e6c18008761b9e3d358af0f4f1b6e718749634fc73e31f08a260c4d5ac
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5689835687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85c323119b3a7c58c86624b87d09561873dde248e95027413711d5cb35ee11f`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Nov 2018 12:11:32 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 12:11:33 GMT
ENV PYTHON_RELEASE=2.7.15
# Fri, 16 Nov 2018 12:14:15 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Fri, 16 Nov 2018 12:14:16 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 12:16:19 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 16 Nov 2018 12:17:41 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 16 Nov 2018 12:17:42 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349026efad113a95c6437205e2f37f4a5e959d866b7863cfdec9972217ae24f9`  
		Last Modified: Fri, 16 Nov 2018 12:26:54 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a1f2fd15ce5a8ab4d8ab7b16395e5be85c8a8f49723f4c665f7e1f53b5e065`  
		Last Modified: Fri, 16 Nov 2018 12:26:54 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04eba8687784b4bded7447d0dcc5f8df88a2bbed0dfd2a538484e5e9c95e8bdf`  
		Last Modified: Fri, 16 Nov 2018 12:27:19 GMT  
		Size: 39.1 MB (39124916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e49706813275641899de7e49e7f234bbeb4962dd5a8090e9eeb822b5a7e345`  
		Last Modified: Fri, 16 Nov 2018 12:26:50 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf764c154a5dc30e5d2f1e34dc8858e883d4c34d0047104fe52318f14ed4332`  
		Last Modified: Fri, 16 Nov 2018 12:26:59 GMT  
		Size: 9.6 MB (9624090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700a1f097105ecf9cedb2fe7a5524766075a1a15b9bfa2c408315ce661713a53`  
		Last Modified: Fri, 16 Nov 2018 12:26:53 GMT  
		Size: 7.2 MB (7159677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7cbf32b02b64c4e62d4531a4aa9b9b2b33f71ff481eaf84ec499132b8bf182`  
		Last Modified: Fri, 16 Nov 2018 12:26:50 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
