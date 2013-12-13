#
# Author:: Mat Davies (<ashmere@gmail.com>)
# Cookbook Name:: octopusdeploy
# Attribute:: default
#
# Copyright 2013, Mathew Davies
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
default['octopusdeploy']['tentacle_appdir']    = 'c:\\applications'
default['octopusdeploy']['tentacle_port']    = '10933'
#thumbprint for octopus server to trust
default['octopusdeploy']['octopus_trust']    = '47F0193CF8BC7E577017D1EE0851C444E0AD8F11'
#api of octopusdeploy server your API key, which you can get from the My Profile page in the Octopus web UI
default['octopusdeploy']['octopus_apikey']    = '13WWNCHDGLCC3NXGSTGADA2JQ1U'
default['octopusdeploy']['tentacle_environment']    = 'Development'
default['octopusdeploy']['server']    = 'http://127.0.0.1'