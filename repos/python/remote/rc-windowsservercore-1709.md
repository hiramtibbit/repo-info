## `python:rc-windowsservercore-1709`

```console
$ docker pull python@sha256:6b6f779c7e4b8d7f625b7242a63d6769dd96205aa89c683771def19aae9f1f11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.248; amd64

### `python:rc-windowsservercore-1709` - windows version 10.0.16299.248; amd64

```console
$ docker pull python@sha256:89436c97f0b3d7cab71f8d1c19fafe2e81317f68003162809ab7ce14defe2f36
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3071460578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89850f15a5b2a93f210004a4e3244f5fa7a546bd33b961a95eb4189ea08a74aa`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 17:31:25 GMT
ENV PYTHON_VERSION=3.7.0b1
# Wed, 14 Feb 2018 17:31:26 GMT
ENV PYTHON_RELEASE=3.7.0
# Wed, 14 Feb 2018 17:33:51 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 17:33:52 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Feb 2018 17:35:13 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 17:35:14 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c5e6ddd4e0c1ccbc43a8afdf2aebc6adf2a261f704583a2d30030987d9586a`  
		Last Modified: Wed, 14 Feb 2018 17:54:36 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc990456f2a07a4b4b463d2fa25094333fa51d0b209f30659f04c5fea59f77cb`  
		Last Modified: Wed, 14 Feb 2018 17:54:32 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7a64b55bbe87d629e19d9e69faf8213be735ae00de59556ac33ececc34dacf`  
		Last Modified: Wed, 14 Feb 2018 17:54:58 GMT  
		Size: 47.0 MB (46969974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb3e40f2e662d8a3cbd00033556ba10ae48a4a8200a72ffc5ab57dce5acb120`  
		Last Modified: Wed, 14 Feb 2018 17:54:32 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73ce55423350206b461ab9f045beab2f608cf9e3feebe60f2bf833e6b7b5f2b`  
		Last Modified: Wed, 14 Feb 2018 17:54:43 GMT  
		Size: 9.0 MB (9006181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b4f1095e7c5f75cb6389f7d179641aacd394c60ba9ffaad7aa6e487cdc6c44`  
		Last Modified: Wed, 14 Feb 2018 17:54:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
