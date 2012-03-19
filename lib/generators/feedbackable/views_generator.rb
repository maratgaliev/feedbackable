require 'rails/generators'

module Feedbackable
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../app/views', __FILE__)

      def copy_or_fetch
        filename_pattern = File.join self.class.source_root, "*"
        Dir.glob(filename_pattern).map {|f| File.basename f}.each do |f|
          directory f.to_s, "app/views/#{f}"
        end
      end      

    end
  end
end