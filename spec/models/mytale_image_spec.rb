require 'spec_helper'

describe MytaleImage do
  it { should be_instance_of(MytaleImage) }
  it { should belong_to(:mytale) }
  it { should belong_to(:people_image) }
  it { should validate_presence_of(:mytale_id) }
  it { should validate_presence_of(:people_image_id) }
  it { should allow_mass_assignment_of(:mytale_id) }
  it { should allow_mass_assignment_of(:people_image_id) }
end
