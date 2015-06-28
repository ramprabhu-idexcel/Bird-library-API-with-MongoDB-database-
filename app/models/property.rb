class Property
  include Mongoid::Document
  field :name, type: Hash
  field :family, type: Hash
  field :continents, type: Hash
  field :added, type: Hash, default: -> { { date_today: Date.today } }
  field :visible, type: Hash, default: -> { { data: false } }
  field :created_at, type: DateTime, default: -> { DateTime.now }
  field :updated_at, type: DateTime, default: -> { DateTime.now }
  embedded_in :bird
end
