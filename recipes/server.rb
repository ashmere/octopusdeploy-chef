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
include_recipe "iis"

#ensure aspnet 4.5 and the iis extensibility extensions for 4.5 installed
webpi_product "ASPNET45" do
  accept_eula node['iis']['accept_eula']
  action :install
end

webpi_product "NetFxExtensibility45" do
  accept_eula node['iis']['accept_eula']
  action :install
end

#use chocolatey to install a octopus deploy server
chocolatey "Hexter.octopus"

#Manual steps are need to configure and start the server this just ensure the package is install

