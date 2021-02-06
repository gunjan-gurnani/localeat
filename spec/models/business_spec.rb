# frozen_string_literal: true

describe Business do
  it { should have_one(:location) }
end
