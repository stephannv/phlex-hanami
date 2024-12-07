# frozen_string_literal: true

require "phlex"
require_relative "hanami/version"

module Phlex
  module Hanami
    autoload :AssetsHelper, "phlex/hanami/assets_helper"
    autoload :ContextHelper, "phlex/hanami/context_helper"
    autoload :Helpers, "phlex/hanami/helpers"

    ::Hanami::View::HTML::SafeString.include SGML::SafeObject
  end
end
