# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Publisher, type: :model do
  let(:publisher) { described_class.new }

  describe '#pub_first_name' do
    before { publisher.update_attributes(pub_first_name: 'Josh') }
    specify { expect(publisher.pub_first_name).to eq 'Josh' }
  end

  describe '#pub_last_name' do
    before { publisher.update_attributes(pub_last_name: 'Walton') }
    specify { expect(publisher.pub_last_name).to eq 'Walton' }
  end

  describe '#pub_email' do
    before { publisher.update_attributes(pub_email: '123@abc.org') }
    specify { expect(publisher.pub_email).to eq '123@abc.org' }
  end

  describe '#pub_phone_number' do
    before { publisher.update_attributes(pub_phone_number: '987-654-3210') }
    specify { expect(publisher.pub_phone_number).to eq '987-654-3210' }
  end
end
