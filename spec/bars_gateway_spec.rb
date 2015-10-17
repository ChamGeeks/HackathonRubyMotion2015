require 'bars_gateway'
require 'vcr'
require 'fakeweb'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :fakeweb
  c.default_cassette_options = {
    record: :new_episodes
  }
  c.configure_rspec_metadata!
end

RSpec.describe BarsGateway, vcr: true do
  describe '#bars_list' do
    subject(:bars_list) { BarsGateway.new.bars_list }

    it { is_expected.to_not be_empty }
    it 'contains the expected attributes' do
      expect(bars_list[0]['name']).to eq('Monkey Bar')
    end
  end
end
