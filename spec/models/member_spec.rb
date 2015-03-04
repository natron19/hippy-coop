require 'rails_helper' 

describe 'member' do 

  describe 'member/create' do 
    let(:member) { create :member }

    it "should be a valid member" do 
      expect(member).to be_valid
    end 
  end 

  describe 'member/create without a firstname' do 
    let(:member) { build :member, first_name: nil }

    it "should not be a valid" do 
      expect(member).to_not be_valid
    end 
  end 

end 