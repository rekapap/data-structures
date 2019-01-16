require 'stack'

describe Stack do
  describe '#empty?' do
    it 'starts empty' do
      expect(subject.empty?).to eq(true)
    end
  end
end
