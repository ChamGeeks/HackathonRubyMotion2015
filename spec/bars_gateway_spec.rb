require 'bars_gateway'

RSpec.describe BarsGateway do
  describe '#bars_list' do
    subject(:bars_list) { BarsGateway.new.bars_list }

    it { is_expected.to_not be_empty }
    it 'contains the expected attributes' do
      expect(bars_list[0]['name']).to eq('Monkey Bar')
    end
  end
end
