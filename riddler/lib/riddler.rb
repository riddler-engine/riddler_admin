require "riddler/version"

require "liquid"

require "riddler/drops/hash_drop"

require "riddler/configuration"

require "riddler/context_builder"
require "riddler/context_director"
require "riddler/context"

require "riddler/element"
require "riddler/elements/text"
require "riddler/elements/heading"
require "riddler/elements/image"
require "riddler/elements/link"
require "riddler/elements/variant"

require "riddler/step"
require "riddler/steps/content"

require "riddler/use_cases/admin_preview_step"
require "riddler/use_cases/preview_context"
require "riddler/use_cases/preview_step"
require "riddler/use_cases/show_content_definition"
require "riddler/use_cases/show_step"
require "riddler/use_cases/show_slug"

module Riddler
  class Error < StandardError; end

  def self.configure
    yield configuration
  end

  def self.configuration
    @configuration ||= ::Riddler::Configuration.new
  end
end
