require 'rails_helper'

RSpec.describe 'create friend mutation' do
  let(:result) do
    ApiServerSchema.execute(mutation).as_json
  end

  describe "without birthday" do
    let(:mutation) {
      %q(mutation {
          createPracticalSupportRequest(email: "x@y.com", name: "X", subject: "I need help") {
            email
            name
            subject
          }
        }
      )
    }
    
    it "works" do
      # call the asana api
      expect(result.dig("data", "createPracticalSupportRequest", "email")).to eq("x@y.com")
    end
  end

end
