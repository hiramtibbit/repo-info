## `python:2-windowsservercore-1709`

```console
$ docker pull python@sha256:5e5a77375d6380f4f804d9e92d27c4833fa9daaaae1844afb8c4e4a158779cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.547; amd64

### `python:2-windowsservercore-1709` - windows version 10.0.16299.547; amd64

```console
$ docker pull python@sha256:73a32a2e0201f007dcb2e73a6b9c1d2b891578621f1d1db5a3d8cdf1ed6cce4a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3160034124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e6951f515c09abbd6776fbd910c1c4850a18d6ddadabde46e3517cedac8200`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Jul 2018 18:10:50 GMT
RUN Install update 10.0.16299.547
# Wed, 11 Jul 2018 09:41:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 17 Jul 2018 10:14:10 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 10:14:11 GMT
ENV PYTHON_RELEASE=2.7.15
# Tue, 17 Jul 2018 10:16:08 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Tue, 17 Jul 2018 10:16:09 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 10:17:34 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 17 Jul 2018 10:18:29 GMT
RUN pip install --no-cache-dir virtualenv
# Tue, 17 Jul 2018 10:18:31 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a01c2a39b5bdf158508b424626efbcede4aa9da21f2d4f6ffbd5bff4deb0fb01`  
		Last Modified: Tue, 10 Jul 2018 23:36:17 GMT  
		Size: 831.1 MB (831119569 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5c935a79e71d79bf144e02b94352e10d483d43e5c3f4a3491874c5d6d72deda3`  
		Last Modified: Wed, 11 Jul 2018 09:55:02 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69eee237b6e830e4f70bd6a807affb0a9c21ad8e9cf3b32e25198152bff91053`  
		Last Modified: Tue, 17 Jul 2018 10:22:07 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d602fe2dc4824eb9c37388012b5f77e9962c2fc34454244e7955f7d179fd51`  
		Last Modified: Tue, 17 Jul 2018 10:22:07 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba32695a35f121644322e4f22d0e947125acd62c1b4214e652e4facdbba65d0`  
		Last Modified: Tue, 17 Jul 2018 10:22:22 GMT  
		Size: 38.7 MB (38693184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12b34a532a62fac13bd52adc1944f6bace74f680905a94ab37159e895c2292f`  
		Last Modified: Tue, 17 Jul 2018 10:22:04 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3537bf68479a39c007aa4b481005aa52788b18b502d86e2cca814ef69e525137`  
		Last Modified: Tue, 17 Jul 2018 10:22:13 GMT  
		Size: 9.2 MB (9193924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d717292083b26ba07570a8fbc74e8804d5e361704a1a8f372335e645ec9eaa72`  
		Last Modified: Tue, 17 Jul 2018 10:22:06 GMT  
		Size: 6.7 MB (6720937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164753af4feec4f8b7a136ebc9e4b40e7d55726e620a47fd5d37ba8f9cea51a2`  
		Last Modified: Tue, 17 Jul 2018 10:22:04 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
