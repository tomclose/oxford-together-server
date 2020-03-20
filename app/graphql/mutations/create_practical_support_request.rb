module Mutations
  class CreatePracticalSupportRequest < BaseMutation
    argument :email, String, null: false
    argument :name, String, null: false
    argument :subject, String, null: false

    type Types::CreatePracticalSupportRequestType

    def resolve(email: , name: , subject: )
      puts("Request: #{email}, #{name}, #{subject}")
    end
  end
end
