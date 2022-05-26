# typed: strict
# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :authenticate_user!

  sig { void }
  def new
  end

  sig { void }
  def create
    session[:user_token] = Session.create.token

    redirect_to root_path
  end

  sig { void }
  def destroy
    current_session&.destroy
    session[:user_token] = nil

    redirect_to login_path
  end
end
