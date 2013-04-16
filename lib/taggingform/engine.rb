require "taggingform"
require "rails"
require "action_controller"

module TaggingForm
  module Rails
    class Engine < ::Rails::Engine
      
      initializer "taggingform.helper_and_builder" do
        ActiveSupport.on_load :action_view do
          ActionView::Base.send(:include, TaggingForm::Helper)
          ActionView::Helpers::FormBuilder.send(:include, TaggingForm::Builder)
        end
      end
      
    end
  end
end
