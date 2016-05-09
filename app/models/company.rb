class Company < ActiveRecord::Base
  enum kind: { pf: 1,
              pj: 2 }
  has_many :users
end
