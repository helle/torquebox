# Copyright 2014 Red Hat, Inc, and individual contributors.
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


module TorqueBox
  module Messaging
    # @api private
    module Helpers
      WB = org.projectodd.wunderboss.WunderBoss
      WBDestination = org.projectodd.wunderboss.messaging.Destination
      WBMessaging = org.projectodd.wunderboss.messaging.Messaging
      WBQueue = org.projectodd.wunderboss.messaging.Queue
      WBTopic = org.projectodd.wunderboss.messaging.Topic
      WBContext = org.projectodd.wunderboss.messaging.Context

      protected

      def default_broker
        WB.find_or_create_component(WBMessaging.java_class, 'default', nil)
      end
    end
  end
end
