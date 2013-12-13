OctopusDeploy Cookbook
=================================
Installs octopusdeploy tentacle using chocolatey as installer.

Requirements
------------
powershell
chocolatey


Attributes
----------

['octopusdeploy']['tentacle_appdir']    is the location applications will be installed to defaults to 'c:\\applications'
['octopusdeploy']['tentacle_port']   the port used by the server to communicate with the tentacle (agent) defaults to  '10933'
['octopusdeploy']['octopus_trust']    thumbprint of an octopus server to trust for deploys by the tentacle
['octopusdeploy']['octopus_apikey']    api key of octopusdeploy server used to register the tentacle with the server, which you can get from the My Profile page in the Octopus web UI
['octopusdeploy']['tentacle_environment']   environment to register the tentacle with
['octopusdeploy']['server']    octopus server to register the tentacle with defaults to 'http://127.0.0.1'


Usage
-----
#### octopusdeploy::tentacle


e.g.
Just include `octopusdeploy::tentacle` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[octopusdeploy::tentacle]"
  ]
}
```

Notes:
-----

The octopusdeploy::server recipe on ensures the package is installed there are manual steps needed to complete the setup.
for more information on octopus deploy  goto http://octopusdeploy.com/documentation/getting-started

TODO:
----
find a way to fully automate the install and setup of the octopus server


Contributing
------------
Open to pull requests.

License and Authors
-------------------
Authors: Mat Davies
Copyright 2013


 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.


