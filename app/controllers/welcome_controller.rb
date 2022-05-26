# typed: strict
# frozen_string_literal: true

class WelcomeController < ApplicationController
  sig { void }
  def index
    @current_session = current_session
  end
end
