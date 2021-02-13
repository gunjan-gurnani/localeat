# frozen_string_literal: true

describe Business do
  it { should have_one(:location) }
  it { should validate_presence_of(:name) }
end
