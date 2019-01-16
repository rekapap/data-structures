require 'stack'

describe Stack do
  let(:number1) { 1 }
  let(:number2) { 2 }

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

    it 'return the top element of the stack with multiple elements int he stack' do
      subject.push(number1)
      subject.push(number2)
      expect(subject.top).to eq(number2)
    end

    it 'raise error if stack is empty' do
      expect { subject.top }.to raise_error(Stack::EMPTY_STACK_ERROR)
    end
  end

  describe '#pop' do
    it 'removes the top element from the stack' do
      subject.push(number1)
      subject.pop
      expect(subject.empty?).to eq(true)
    end

    it 'raises en error if stack is empty' do
      expect { subject.pop }.to raise_error(Stack::EMPTY_STACK_ERROR)
    end
  end
end
