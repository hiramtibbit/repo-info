## `python:2-windowsservercore-1809`

```console
$ docker pull python@sha256:8c62c29df5899ba83b4fda8faeacd925f6d59a31af876ff2a1048d1be4281636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.316; amd64

### `python:2-windowsservercore-1809` - windows version 10.0.17763.316; amd64

```console
$ docker pull python@sha256:3bed80b49f2a86bd1b3757612161c2f18d7264f055eda3c63135fdfe68f01def
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (1950783136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4077d7c127ec9608b55c1093889d25cb69447f4a5f7721feadfc8b22ee0fa7c8`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Fri, 08 Feb 2019 00:24:24 GMT
RUN Install update 1809-amd64
# Wed, 13 Feb 2019 11:45:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 22 Feb 2019 11:37:17 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 22 Feb 2019 11:37:18 GMT
ENV PYTHON_RELEASE=2.7.15
# Fri, 22 Feb 2019 12:09:22 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Fri, 22 Feb 2019 12:09:24 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 12:10:32 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 22 Feb 2019 12:11:01 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 22 Feb 2019 12:11:02 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9e2f2b17be7207dce6730ad64c630dc10b5b3f61a74545c7c1628d605e381297`  
		Last Modified: Tue, 12 Feb 2019 20:42:21 GMT  
		Size: 370.7 MB (370687536 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cd3ade6fc2a72f217b4055dbb0d08b2a25d881d592aeba426cc097b18d9795f7`  
		Last Modified: Wed, 13 Feb 2019 12:52:13 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c11a1d0cff3f40ab20dfe101c6f4bb685ad011883820637b1720815c6d217e`  
		Last Modified: Fri, 22 Feb 2019 12:22:20 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221057961e27af974034a067fba62a3f4e8b397e9342666911078fca10ebcacf`  
		Last Modified: Fri, 22 Feb 2019 12:22:20 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18eadef47e5701f19a442a3980a2f0607ea0ed723cef1e3f57ef9e3d691a9d7c`  
		Last Modified: Fri, 22 Feb 2019 12:23:11 GMT  
		Size: 38.2 MB (38181881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfedef60fb74a3ae815ce80938caef1f691c62cf28e50711a6692e649d7a3fa`  
		Last Modified: Fri, 22 Feb 2019 12:22:18 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d357d6cfb262ceb60db2b5e5ee76963c87b9627bff728713612d521fc770c0`  
		Last Modified: Fri, 22 Feb 2019 12:22:28 GMT  
		Size: 4.8 MB (4845078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267545599e9fc50830ca29608ec27d11111977c81feaa0e3acc4ea8c92138186`  
		Last Modified: Fri, 22 Feb 2019 12:22:21 GMT  
		Size: 2.4 MB (2377281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa3da48e3556c7d45be0befb36dad9bf636f4953b1a622b2bd40d9b69882c9`  
		Last Modified: Fri, 22 Feb 2019 12:22:18 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
