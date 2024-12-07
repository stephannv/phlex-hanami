module Phlex
  module Hanami
    module ContextHelper
      include ::Hanami::Helpers::AssetsHelper

      def assets(...) = context.assets

      def request(...) = context.request

      def routes(...) = context.routes

      def content_for(...) = context.content_for

      def csrf_token(...) = context.csrf_token

      def session(...) = context.session

      def flash(...) = context.flash
    end
  end
end
