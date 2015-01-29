# Copyright 2014-2015 Samsung Electronics Co., Ltd.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/bin/bash

BASE=./third-party/tools/cppcheck

if [ ! -x $BASE/$(uname -m)/cppcheck ]
then
  exit 1;
fi

$BASE/$(uname -m)/cppcheck "$@" "--exitcode-suppressions=$BASE/cfg/suppressions-list"
status_code=$?

exit $status_code
