module Mutations
  class CreatePracticalSupportRequest < BaseMutation
    argument :email, String, required: true
    argument :name, String, required: true
    argument :subject, String, required: true

    type Types::PracticalSupportRequestType

    def resolve(email: , name: , subject: )

      client = Asana::Client.new do |c|
        c.authentication :access_token, ENV['ASANA_API_KEY']
      end

      client.tasks.create(
        projects: ["1167559196211825"],
        name: subject,
        notes: "Submitted by: #{name} (#{email})"
      )


      {email: email, name: name, subject: subject}
    end
  end
end
