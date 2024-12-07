module Phlex
  module Hanami
    module Helpers
      def self.included(base)
        base.include AssetsHelper
        base.include ContextHelper
      end
    end
  end
end
