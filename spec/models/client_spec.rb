require "rails_helper"

RSpec.describe Client, type: :model do
    current_user = User.first_or_create!(email: "logovimike@gmail.com", password: "passez123", password_confirmation: "passez123")
    it "has a last_name" do
        client = Client.new(last_name: "", first_name: "client1",user_id : current_user.id)
        expect(client).to_not be_valid
        client.last_name = "last_name_of_client1"
        expect(client).to be_valid
    end

    it "has a last name with minimum 2 characters" do 
    end

    it "has a first_name" do
        client = Client.new(last_name: "last_name_of_client1", first_name: "",user_id : current_user.id)
        expect(client).to_not be_valid
        client.last_name = "client1"
        expect(client).to be_valid
    end

    it "has a first name with minimum 2 characters" do 
    end
end