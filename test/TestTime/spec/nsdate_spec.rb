describe "NSDate" do
  it "#timeIntervalSinceReferenceDate should work" do
    date = Time.at(-5000000000)
    date.timeIntervalSinceReferenceDate.should == -5978307200

    date = NSDate.alloc.initWithTimeIntervalSince1970(-5000000000)
    date.timeIntervalSinceReferenceDate.should == -5978307200
  end

  it "#initWithTimeIntervalSinceReferenceDate: should work" do
    date = NSDate.alloc.initWithTimeIntervalSinceReferenceDate(-5978307200)
    date.should == Time.at(-5000000000)
  end
end
