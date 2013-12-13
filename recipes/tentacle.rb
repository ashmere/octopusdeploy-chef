#
# Author:: Mat Davies (<ashmere@gmail.com>)
# Cookbook Name:: octopusdeploy
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
include_recipe "chocolatey"

#use chocolatey to install a tentacle
chocolatey "Hexter.octopus.tentacle"

batch "tentacle_configure" do
  code <<-EOH
  "%PROGRAMFILES(X86)%\\Octopus Tentacle\\Agent\\tentacle.exe" configure --appdir=#{node[:octopusdeploy][:tentacle_appdir]} --port=#{node[:octopusdeploy][:tentacle_port]} --trust=#{node[:octopusdeploy][:octopus_trust]}
  "%PROGRAMFILES(X86)%\\Octopus Tentacle\\Agent\\tentacle.exe" new-certificate
  "%PROGRAMFILES(X86)%\\Octopus Tentacle\\Agent\\tentacle.exe" install
  "%PROGRAMFILES(X86)%\\Octopus Tentacle\\Agent\\tentacle.exe" register-with --server=#{node[:octopusdeploy][:server]} --environment=#{node[:octopusdeploy][:tentacle_environment]} --apikey=#{node[:octopusdeploy][:octopus_apikey]}
  netsh advfirewall firewall add rule name="OctopusTentacle" dir=in action=allow protocol=TCP localport=#{node[:octopusdeploy][:tentacle_port]}
  EOH
  action :run
end
