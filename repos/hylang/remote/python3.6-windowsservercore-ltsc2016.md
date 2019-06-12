## `hylang:python3.6-windowsservercore-ltsc2016`

```console
$ docker pull hylang@sha256:c9ec273b2924e0994307fcdc9d5fa8ea3a4e1e7aa9d6d379952519f2f11f27c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `hylang:python3.6-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull hylang@sha256:e1a8de2a2abccb61a6da9c8a9098517945323122693b1b1b1f6ae0e58fd3cfb3
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5774933425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137bf43b568dd229e01fcf393679242f1a95bf2be1bb0d659a39ba17f5ade5ab`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:18:30 GMT
ENV PYTHON_VERSION=3.6.8
# Wed, 12 Jun 2019 14:18:31 GMT
ENV PYTHON_RELEASE=3.6.8
# Wed, 12 Jun 2019 14:21:06 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:21:08 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:22:50 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:22:52 GMT
CMD ["python"]
# Wed, 12 Jun 2019 18:01:32 GMT
ENV HY_VERSION=0.17.0
# Wed, 12 Jun 2019 18:32:57 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION)
# Wed, 12 Jun 2019 18:32:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b15a7aba34492304d4914c7183385367130dd6362d7a4d8c4138d28f31559f`  
		Last Modified: Wed, 12 Jun 2019 14:48:09 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489402c94ac77d7e9041ab80dbc8efa3df1e4ce311f297b6b154f5969ce7f0fd`  
		Last Modified: Wed, 12 Jun 2019 14:48:06 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb09166109fedaafea6f4485dded8a550bcdd7d302d578ec4d593ccf4f66f3a7`  
		Last Modified: Wed, 12 Jun 2019 14:48:29 GMT  
		Size: 48.7 MB (48708118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1bf8f265643573b63175b53cbf31aea5ee14b418bea489c7a0955a10232299`  
		Last Modified: Wed, 12 Jun 2019 14:48:06 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d519daa4fbbbad6aa9da9d166af1150365aad0bc51e0f318bef0708e75b16462`  
		Last Modified: Wed, 12 Jun 2019 14:48:17 GMT  
		Size: 10.1 MB (10136430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2f011a54bf6a751020e5210dd6587d942f048f40688bfe739e9c84902897da`  
		Last Modified: Wed, 12 Jun 2019 14:48:06 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3136018234196216b8929e387c5ee444fff2556d7275905a5507c654fb4f6d77`  
		Last Modified: Wed, 12 Jun 2019 19:11:08 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23daa7ceb49357b34382aa8cbb64d03eb1c4f788a2ac84cf5f84ba7bbd3364d9`  
		Last Modified: Wed, 12 Jun 2019 19:11:11 GMT  
		Size: 6.1 MB (6105921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360cad231a94287ec547b71b64ab34b7a31bd2687be8ec638487f7c1fbd57726`  
		Last Modified: Wed, 12 Jun 2019 19:11:08 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
