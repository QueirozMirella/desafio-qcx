require 'rails_helper'

RSpec.describe Event, type: :model do
  it { should belong_to(:issue) }
  it { should validate_presence_of(:action) }
end