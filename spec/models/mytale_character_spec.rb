require 'spec_helper'

describe MytaleCharacter do
  it { should be_instance_of(MytaleCharacter) }
  it { should belong_to(:mytale) }
  it { should belong_to(:gender) }
  it { should belong_to(:character) }
  it { should allow_mass_assignment_of(:name) }
  it { should allow_mass_assignment_of(:gender) }
  it { should allow_mass_assignment_of(:mytale) }
  it { should allow_mass_assignment_of(:character) }
  it { should validate_presence_of(:mytale) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:gender) }
  it { should validate_presence_of(:character) }
end
