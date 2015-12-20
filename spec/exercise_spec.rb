require 'spec_helper'

describe Exercise do

  before do
    @exercise = Exercise.new
  end

  describe '#invalid_inputs' do

    context 'when passing a fixnum value' do
      it "should return an empty array" do
        @exercise.flatten(1).should == []
      end
    end

    context 'when passing a null value' do
      it "should return an empty array" do
        @exercise.flatten(nil).should == []
      end
    end

  end

  describe '#empty_array_inputs' do

    context 'when passing an empty array' do
      it "should return an empty array" do
        @exercise.flatten([]).should == []
      end
    end

    context 'when passing an array of nested arrays without integers' do
      it "should return an empty array" do
        @exercise.flatten([[], []]).should == []
      end
    end

  end

  describe '#valid_inputs' do

    context 'when passing an array of nested array of integers' do
      it "should return the expected flat array" do
        input = [[1,2,[3]],4, 5, [[[[[[6]]]]]]]
        expected_output = [1,2,3,4,5,6]

        @exercise.flatten(input).should == expected_output
      end
    end

    context 'when mixing empty arrays and valid arrays' do
      it "should return the expected flat array" do
        input = [[1], []]
        expected_output = [1]

        @exercise.flatten(input).should == expected_output
      end
    end

  end
end
