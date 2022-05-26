# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Admin::CommentsController`.
# Please instead update this file by running `bin/tapioca dsl Admin::CommentsController`.

class Admin::CommentsController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::Turbo::DriveHelper
    include ::Turbo::FramesHelper
    include ::Turbo::IncludesHelper
    include ::Turbo::StreamsHelper
    include ::Turbo::Streams::ActionHelper
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::Importmap::ImportmapTagsHelper
    include ::Ransack::Helpers::FormHelper
    include ::ActionController::Base::HelperMethods
    include ::ApplicationHelper
    include ::ApplicationController::HelperMethods
    include ::InheritedResources::Base::HelperMethods
    include ::ActiveAdmin::ViewHelpers::ActiveAdminApplicationHelper
    include ::ActiveAdmin::ViewHelpers::AutoLinkHelper
    include ::ActiveAdmin::ViewHelpers::BreadcrumbHelper
    include ::ActiveAdmin::ViewHelpers::DisplayHelper
    include ::MethodOrProcHelper
    include ::ActiveAdmin::ViewHelpers::SidebarHelper
    include ::ActiveAdmin::ViewHelpers::FormHelper
    include ::ActiveAdmin::ViewHelpers::TitleHelper
    include ::ActiveAdmin::ViewHelpers::ViewFactoryHelper
    include ::ActiveAdmin::ViewHelpers::FlashHelper
    include ::ActiveAdmin::ViewHelpers::ScopeNameHelper
    include ::ActiveAdmin::Filters::ViewHelper
    include ::ActiveAdmin::ViewHelpers
    include ::ActiveAdmin::BaseController::HelperMethods

    sig { returns(T.untyped) }
    def current_scope; end

    sig { params(action: T.untyped).returns(T.untyped) }
    def renderer_for(action); end
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
