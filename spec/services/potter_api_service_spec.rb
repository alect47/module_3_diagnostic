require 'rails_helper'


describe 'potter api service' do
  it "gets character info" do

    service = PotterApiService.new('Gryffindor')
    raw_data = service.get_character_data

    # binding.pry
    expect(service).to be_a(PotterApiService)
    expect(raw_data).to be_a(Array)
    expect(raw_data.first).to have_key(:name)
    expect(raw_data.last).to have_key(:role)
    expect(raw_data.first).to have_key(:house)
    # expect(raw_data.first).to have_key(:patronus)
  end

end