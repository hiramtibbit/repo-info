## `python:windowsservercore-1803`

```console
$ docker pull python@sha256:3ff1e458dfe7a6a0d59b8d8472ed01f69faeea0f356ca9afd5318b6ae6bef045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `python:windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull python@sha256:d318744e4e0e83bf1822d5b0631ab031efd9d7642042515f9783893d9f177fe2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2310873965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9d9dec1cc3773f2369aaad57a995000c6b6aab5d8769ef031dab7f07c7da795`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 11 Apr 2019 23:20:22 GMT
ENV PYTHON_VERSION=3.7.3
# Thu, 11 Apr 2019 23:20:23 GMT
ENV PYTHON_RELEASE=3.7.3
# Thu, 11 Apr 2019 23:22:44 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 25 Apr 2019 09:22:53 GMT
ENV PYTHON_PIP_VERSION=19.1
# Thu, 25 Apr 2019 09:23:57 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 25 Apr 2019 09:23:59 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190158793be727f3b8f5ae272c9329b2a8363bd1548c96ce16629b8771c3db5b`  
		Last Modified: Fri, 12 Apr 2019 00:06:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49532e7e7f5583b8058169477af16b7055f0f5b15ea64851c913b0bdd062c0f`  
		Last Modified: Fri, 12 Apr 2019 00:06:54 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b159a5b2f82edd09fd72f95c068acdd9b54a68b88388ef30523d3b851a153678`  
		Last Modified: Fri, 12 Apr 2019 00:07:19 GMT  
		Size: 49.4 MB (49388168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf9516d0138958ea6953037b60088a27c99db4b2b7d3541dad490471b3b04db`  
		Last Modified: Thu, 25 Apr 2019 09:39:14 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5058945caab351527b26b96fc8f0e0eb07039b66942831f4eec959dadc157ae3`  
		Last Modified: Thu, 25 Apr 2019 09:39:20 GMT  
		Size: 5.1 MB (5129153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d0bcdba5290b90873915a659fc6f0c9e0183c26d05613d3c377eeb035ff1be`  
		Last Modified: Thu, 25 Apr 2019 09:39:14 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
