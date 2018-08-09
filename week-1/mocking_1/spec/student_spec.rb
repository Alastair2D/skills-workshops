require 'student'
require 'test'
require 'feedback'

describe Student do
  subject(:student) { Student.new }
  let(:student) { Student.new } #alternative
  let(:feedback)  { Feedback.new }
  let(:mockFeedback) { double :feedback, :happiness => 4 }
  let(:mockFeedback) { double :feedback, happiness: 4 } #newer option 
  let(:anotherMockFeedback) { double :feedback, :happiness => 7 } 
  let(:mockTest) { double :test, pretty_date_taken: Date.today.to_s, score: 1 }
  let(:mockTest2) { double :test, pretty_date_taken: Date.today.to_s, score: 2 }

  #this is what doubles effectively do 
  #step1. create a mock class
  #step2. give the mock class a happiness method.  
  #step3.  stub the answer to e.g. 4 as this is what the test expects
# class mockFeedback
#   def happiness
#     4
#   end
# end
# class mockTest
# end

  describe '#full_name' do
    it 'returns the student first name and last name' do
      student = Student.new(first_name: "Sian", last_name: "McAvoy")

      expect(student.full_name).to eq "Sian McAvoy"
    end

    it 'defaults to "Joe Bloggs"' do
      expect(student.full_name).to eq "Joe Bloggs"
    end
  end

  describe '#happiness' do
    it 'returns the average happiness reported' do
      feedback_1 = mockFeedback
      feedback_2 = Feedback.new(4, Date.today)
      student = Student.new(feedbacks: [feedback_1, feedback_2])

      expect(student.happiness).to eq 4
    end

    it 'defaults to zero' do
      expect(student.happiness).to eq 0
    end
  end

  describe '#test_scores' do
    it 'returns all test scores' do
      # test1 = mockTest.new
      # test2 = mockTest.new
      # student = Student.new(tests: [test_1, test_2])
      student = Student.new(tests: [mockTest, mockTest2])
      expect(student.test_scores).to eq({ "#{ Date.today.to_s }" => [1, 2] })
    end

    it 'defaults to being empty' do
      expect(student.test_scores).to be_empty
    end
  end

  describe '#attendance' do
    it 'describes the student attendance' do
    end
  end
end
