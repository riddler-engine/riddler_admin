require "active_model_serializers"
require "acts_as_list"
require "bootstrap"
require "jquery-rails"
require "jquery-ui-rails"
require "ksuid"

require "riddler_admin/engine"
require "riddler"

module RiddlerAdmin
  def self.table_name_prefix
    "riddler_"
  end
end
