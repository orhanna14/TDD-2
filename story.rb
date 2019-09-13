##Example from Fundamentals of TDD

##Try not to use before blocks and let(:whatever you want to return)

##In tests, we want to write code that is easy to be changed. 


describe "#promote_to_admin" do

  it "makes a regular membership an admin membership" do
      membership = Membership.new(admin: false)
      #This piece here is 'telling a good story'
      membership.promote_to_admin

      expect(membership.admin?).to eq(true)
  end
end
