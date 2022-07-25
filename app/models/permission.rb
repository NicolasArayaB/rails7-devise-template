class Permission < ApplicationRecord
  has_many :role_permissions
  has_many :role, through: :role_permissions
end
