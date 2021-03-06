#
# Copyright 2011 Red Hat, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

CORE_DIR = "#{File.dirname(__FILE__)}/../../core"
$LOAD_PATH << "#{CORE_DIR}/lib"
require "#{CORE_DIR}/spec/spec_helper"

require 'torquebox-caching'

def random_string(length = 20)
  chars = ('a'..'z').to_a + ('A'..'Z').to_a
  (0...length).map { chars[Kernel.rand(chars.length)] }.join
end
