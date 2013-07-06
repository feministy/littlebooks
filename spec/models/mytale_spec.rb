require 'spec_helper'

describe Mytale do
  it { should be_instance_of(Mytale) }
  it { should belong_to(:user) }
  it { should belong_to(:story) }
  it { should belong_to(:mytale_character) }
  it { should validate_presence_of(:content) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:story) }
  it { should validate_presence_of(:mytale_character) }
  it { should allow_mass_assignment_of(:title) }
  it { should allow_mass_assignment_of(:summary) }
  it { should allow_mass_assignment_of(:content) }
  it { should allow_mass_assignment_of(:user) }
  it { should allow_mass_assignment_of(:story) }
  it { should allow_mass_assignment_of(:mytale_character) }
end