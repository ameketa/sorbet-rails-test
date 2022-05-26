# typed: strict
# frozen_string_literal: true

class Session < ApplicationRecord
  extend T::Sig

  validates :token, presence: true

  before_validation :set_token

  private

  sig { void }
  def set_token
    self.token ||= SecureRandom.uuid
  end
end
