require 'stack'

describe Stack do
  describe 'Stack' do
    it 'can add multiple numbers and pop the last one, then top returns the last one' do
      subject.push(1)
      subject.push(2)
      subject.push(3)
      subject.pop
      expect(subject.top).to eq(2)
    end
  end
end
