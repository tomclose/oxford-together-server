module Mutations
  class CreatePracticalSupportRequest < BaseMutation
    argument :email, String, required: true
    argument :name, String, required: true
    argument :subject, String, required: true

    type Types::PracticalSupportRequestType

    def resolve(email: , name: , subject: )
      {email: email, name: name, subject: subject}
    end
  end
end
