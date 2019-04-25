## `python:2-windowsservercore-1809`

```console
$ docker pull python@sha256:dfbcd6407b57605b109afe44bfae5a36bc9ea542dfa188cd39796a71e84293ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.437; amd64

### `python:2-windowsservercore-1809` - windows version 10.0.17763.437; amd64

```console
$ docker pull python@sha256:84ff141245d8d078d77834bd8d9168ee1e82e921dfa4f7fe31f68f6f8dfaa3db
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (2019463454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19a567f06f431ef8559a08a10205e827303b26d705503dfa37724d72607e7fe`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 11 Apr 2019 23:57:23 GMT
ENV PYTHON_VERSION=2.7.16
# Thu, 11 Apr 2019 23:57:24 GMT
ENV PYTHON_RELEASE=2.7.16
# Thu, 11 Apr 2019 23:59:16 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Thu, 25 Apr 2019 09:34:56 GMT
ENV PYTHON_PIP_VERSION=19.1
# Thu, 25 Apr 2019 09:35:58 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 25 Apr 2019 09:36:28 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 25 Apr 2019 09:36:29 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ecacfd9723eb987b1ef34881a5297d53e3d5b3fc9228af4475a5cd56b9b33d`  
		Last Modified: Fri, 12 Apr 2019 00:12:57 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b69d7e0b6315b5e235b02f58889e6e226e1431c06e41f0dcf0a7d741f644c`  
		Last Modified: Fri, 12 Apr 2019 00:12:57 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78762e4e6d7917115500984d5337b0bd33c30fc7c7f5b483be45b953cb433fc`  
		Last Modified: Fri, 12 Apr 2019 00:13:16 GMT  
		Size: 38.3 MB (38347254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063d63b5245fa9fef84166a05cb16b2299da3d3476bb2ba186d2bd06976a84bf`  
		Last Modified: Thu, 25 Apr 2019 09:41:54 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339707a2769497828cb5007edb97cb9aba5920d3b9e994c26598f763d5274e3c`  
		Last Modified: Thu, 25 Apr 2019 09:42:01 GMT  
		Size: 4.9 MB (4870157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f4c9d6b678aad3f43ed5a4e93e2bb92c8eef927de78aa63abdb8efdf899f64`  
		Last Modified: Thu, 25 Apr 2019 09:41:56 GMT  
		Size: 2.4 MB (2376767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657971f08a9b56416a1a069bcfca171b306451024b5ada6c5b67fdc9b1255f08`  
		Last Modified: Thu, 25 Apr 2019 09:41:54 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
