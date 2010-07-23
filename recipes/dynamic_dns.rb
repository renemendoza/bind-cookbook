#
# Cookbook Name:: bind
# Recipe:: dynamic_dns
#
# Copyright 2010, Zefiro Networks LLC
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
#
include_recipe "bind"

template "/tmp/ddns_update" do 
  source "ddns_update.erb"
  mode 0644
  variables( :ddns_name => "clon.zefironetworks.com." 
  )
end

