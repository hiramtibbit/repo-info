## `python:2-windowsservercore-1709`

```console
$ docker pull python@sha256:a1f320a16084ab0b1f1b0e106a11e51bb2fba41180f6bbf82b3b02ed120332c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.492; amd64

### `python:2-windowsservercore-1709` - windows version 10.0.16299.492; amd64

```console
$ docker pull python@sha256:fc2bd4c07b2758c730014ee432f04f96b7d82e7f44f1b69a5feb44b7f5a15a3b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3152483172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497c561a31f18250dc4f503b50f414570c7df183b2702aa83a56a42d11254b82`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 11 Jun 2018 20:38:48 GMT
RUN Install update 10.0.16299.492
# Tue, 03 Jul 2018 00:32:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 04 Jul 2018 09:36:49 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 04 Jul 2018 09:36:50 GMT
ENV PYTHON_RELEASE=2.7.15
# Wed, 04 Jul 2018 09:38:49 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 04 Jul 2018 09:38:51 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 04 Jul 2018 09:40:15 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 04 Jul 2018 09:41:10 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 04 Jul 2018 09:41:11 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3b9c63e313c8b374d5767c602fd6f2b947a3f1df9a8f8c5fcecb2fa6b1cfa968`  
		Last Modified: Wed, 13 Jun 2018 01:11:53 GMT  
		Size: 823.6 MB (823576248 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3989f186f0fc841be4fd06c5f4d58afe814bf92ffa0940def6b8d21ea38c223f`  
		Last Modified: Tue, 03 Jul 2018 01:22:20 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a80ecd2ef936400a8fb34ca7116b4d54f489d63306717c553a711595678f79`  
		Last Modified: Wed, 04 Jul 2018 09:44:36 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c67fb8e5590bdf0ea8ee2a8f1c21deda2dc0ed81d72cd391835c8240c7d3672`  
		Last Modified: Wed, 04 Jul 2018 09:44:35 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd1fe22224413d78e0c068bc7665816defcb42a5754440e151b23d54d191599`  
		Last Modified: Wed, 04 Jul 2018 09:44:49 GMT  
		Size: 38.7 MB (38698137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf42aeea8cef6dae01b1d1af1869fc3faca2a031fe66b9450e3bd077d278facd`  
		Last Modified: Wed, 04 Jul 2018 09:44:31 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7403ec5d586b443e3089222a72004eda743d644325fe5c6824869122a961a82`  
		Last Modified: Wed, 04 Jul 2018 09:44:40 GMT  
		Size: 9.2 MB (9184580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf271a70081e062eb66ae353ff4dbfb51828b0f0f9a9ae5455632e4abcc11a32`  
		Last Modified: Wed, 04 Jul 2018 09:44:34 GMT  
		Size: 6.7 MB (6717647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a58a1c7dd4011c670bf4d2082a6b4d6e41254d074a1b7b3c37838a1f0801a50`  
		Last Modified: Wed, 04 Jul 2018 09:44:31 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
