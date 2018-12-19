# frozen_string_literal: true

# Class detailing a publisher and information about a single publisher.
class Publisher < ApplicationRecord
  validates :pub_first_name, presence: true
  validates :pub_last_name, presence: true
  validates :pub_email, presence: true
  validates :pub_phone_number, presence: true
end
