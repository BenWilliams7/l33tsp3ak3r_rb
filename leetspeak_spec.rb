require "rspec"
require "./leetspeak.rb"


describe "String#leetspeak" do
  it("returns a string as is when no Leetspeak rules apply") do
    expect("happy".leetspeak).to(eq("happy"))
  end
  it("changes the letter e to the number 3") do
    expect("hey".leetspeak).to(eq("h3y"))
  end
  it("changes the letter o to the number 0") do
    expect("how".leetspeak).to(eq("h0w"))
  end
  it("changes the capital letter I to the number 1") do
    expect("Ian".leetspeak).to(eq("1an"))
  end
  it("does not change lower case 'i'") do
    expect("ian".leetspeak).to(eq("ian"))
  end
  it("changes the letter s to the letter z") do
    expect("assesses".leetspeak).to(eq("azz3zz3z"))
  end
  it("does not change the letter s to a z if it is the first letter in a word") do
    expect("session".leetspeak).to(eq("s3zzi0n"))
  end
  it("does all the things with multiple words") do
    expect("session six assesses".leetspeak).to(eq("s3zzi0n six azz3zz3z"))
  end
end
