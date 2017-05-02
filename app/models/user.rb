# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :lines
  has_many :votes

  def self.admin?(user)
    admin_emails = ['jimsmoody@gmail.com']
    admin_emails.any? { |e| e == user[:email] }
  end
end
