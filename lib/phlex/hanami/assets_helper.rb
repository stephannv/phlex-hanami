module Phlex
  module Hanami
    module AssetsHelper
      include ::Hanami::Helpers::AssetsHelper

      def self.included(base)
        base.alias_method :_context, :context
      end

      def javascript_tag(...) = raw(super)

      def stylesheet_tag(...) = raw(super)

      def image_tag(...) = raw(super)

      def favicon_tag(...) = raw(super)

      def video_tag(...) = raw(super)

      def audio_tag(...) = raw(super)
    end
  end
end
