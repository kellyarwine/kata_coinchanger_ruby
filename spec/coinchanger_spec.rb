require 'coinchanger'

describe CoinChanger do

  it "returns [1] when $.01 is input" do
    subject.make_change(1).should == [1]
  end

  it "returns [1, 1] when 2 is input" do
    subject.make_change(2).should == [1, 1]
  end

  it "returns [1, 1, 1] when 3 is input" do
    subject.make_change(3).should == [1, 1, 1]
  end

  it "returns [5] when 5 is input" do
    subject.make_change(5).should == [5]
  end

  it "returns [5, 1] when 6 is input" do
    subject.make_change(6).should == [5, 1]
  end

  it "returns [5, 1, 1] when 7 is input" do
    subject.make_change(7).should == [5, 1, 1]
  end

  it "returns [10] when 10 is input" do
    subject.make_change(10).should == [10]
  end

  it "returns [11] when 11 is input" do
    subject.make_change(11).should == [10, 1]
  end

  it "returns [10, 1, 1] when 12 is input" do
    subject.make_change(12).should == [10, 1, 1]
  end

  it "returns [10, 5] when 15 is input" do
    subject.make_change(15).should == [10, 5]
  end

  it "returns [10, 5, 1] when 16 is input" do
    subject.make_change(16).should == [10, 5, 1]
  end

  it "returns [25, 1] when 26 is input" do
    subject.make_change(26).should == [25, 1]
  end

  it "returns [25, 25, 25, 10, 10, 1, 1, 1, 1] when 99 is input" do
    subject.make_change(99).should == [25, 25, 25, 10, 10, 1, 1, 1, 1]
  end
end
