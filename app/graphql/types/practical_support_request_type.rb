module Types
  class PracticalSupportRequestType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :name, String, null: false
    field :subject, String, null: false
  end
end
