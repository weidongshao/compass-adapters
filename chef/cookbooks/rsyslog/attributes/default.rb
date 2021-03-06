#
# Cookbook Name:: rsyslog
# Attributes:: rsyslog
#
# Copyright 2009, Opscode, Inc.
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

default["rsyslog"]["log_dir"]     = "/srv/rsyslog"
default["rsyslog"]["server"]      = false
default["rsyslog"]["protocol"]    = "tcp"
default["rsyslog"]["port"]        = "514"
default["rsyslog"]["server_role"] = "loghost"
default["rsyslog"]["rhelloglist"] = { "dstat"=>"/var/log/dstat.log" }
default["rsyslog"]["debianloglist"] = { "dstat"=>"/var/log/dstat.log" }
