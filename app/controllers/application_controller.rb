# typed: strict
# frozen_string_literal: true

class ApplicationController < ActionController::Base
  extend T::Sig

  before_action :authenticate_user!

  sig { void }
  def authenticate_user!
    unless current_session
      redirect_to login_path
    end
  end

  sig { returns(T.nilable(Session)) }
  def current_session
    @current_session = T.let(@current_session, T.nilable(Session))
    @current_session ||= Session.find_by(token: session[:user_token])
  end
end
