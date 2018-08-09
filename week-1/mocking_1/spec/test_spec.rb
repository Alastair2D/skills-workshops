require 'test'

describe Test do
  subject(:test) { Test.new(Date.today, answers) }

  let(:mockAnswer) { double :answers, correct?: true }
    let(:answers) do 
    [ mockAnswer,
      mockAnswer,
      mockAnswer
    ]
    end

  describe '#pretty_date_taken' do
    it 'returns the date the test was taken, as a string' do
      expect(test.pretty_date_taken).to eq Date.today.to_s
    end
  end

  describe '#score' do
    it 'returns the number of correct answers' do
      expect(test.score).to eq 3
    end
  end
end
