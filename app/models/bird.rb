class Bird
  include Mongoid::Document
  embeds_one :property
  field :schema, type: String, default: -> { "http://json-schema.org/draft-04/schema#" }
  field :title, type: String
  field :description, type: String
  field :type, type: String
  field :required, type: Array
  field :additionalProperties, type: Boolean, default: -> { false }
  field :created_at, type: DateTime, default: -> { DateTime.now }
  field :updated_at, type: DateTime, default: -> { DateTime.now }
end
