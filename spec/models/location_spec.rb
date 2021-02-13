# frozen_string_literal: true

describe Location do
  it { should belong_to :business }
  it { should validate_presence_of(:city) }
end
