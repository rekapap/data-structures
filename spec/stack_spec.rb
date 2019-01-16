require 'stack'

describe Stack do
  let(:number1) { 1 }
  describe '#empty?' do
    it 'starts empty' do
      expect(subject.empty?).to eq(true)
    end
  end

  describe '#push' do
    it 'check stack is not empty after adding an element' do
      subject.push(number1)
      expect(subject.empty?).to eq(false)
    end
  end

  describe '#top' do
    it 'returns the top element on the stack' do
      subject.push(number1)
      expect(subject.top).to eq(number1)
    end
  end
end
