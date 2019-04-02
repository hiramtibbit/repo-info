#!/bin/bash
set -e

prep-env.sh
gather-dpkg.sh || :
gather-rpm.sh || :
