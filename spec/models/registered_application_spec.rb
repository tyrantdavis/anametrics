require 'rails_helper'

RSpec.describe RegisteredApplication, type: :model do
  let(:user) { User.create!( email: "email@exaple.com", password: "password" ) }
  let(:registeredapplication) { RegisteredApplication.create!( name: "App",
    url: "http://example.com" , registeredapplication: registeredapplication) }

  describe "attributes" do
    it "has name and url attributes" do
      expect(registeredapplication).to have_attributes( name: "App", url:  "http://example.com")
    end
  end
end
