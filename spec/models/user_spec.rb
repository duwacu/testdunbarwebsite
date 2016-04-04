require 'spec_helper'

describe User do
    it "has a valid factory" do
        create(:user).should be_valid
    end
    
    it "is invalid without a username" do
        build(:user, username: nil).should_not be_valid
    end
    it "is invalid without an email" do
        build(:user, email: nil).should_not be_valid
    end
    it "is invalid without a password" do
        build(:user, password: nil).should_not be_valid
    end
 
    # describe '#new' do
    #     it 'should return a new user' do
    #         @user.should(be_an_instance_of(User))
    #     end
    # end
    
    # describe '#login' do
    #     it 'should check for valid credentials' do
    #         get login_path
    #         assert_template 'sessions/new'
    #         post login_path, session: { username: "", email: "", password: "" }
    #         assert_template 'sessions/new'
    #         assert_not flash.empty?
    #         get root_path
    #         assert flash.empty?
    #     end
    # end
end