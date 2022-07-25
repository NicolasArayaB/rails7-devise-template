# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    def initialize(user)
      user ||= User.new # guest user (not logged in)

      # Check roles abilitys.
      # To use can? method, you need to ask for the roles abilitys like: 
      #   current_user.curent_role can? :read, Operation.

      user.roles.first.permissions.each do |permission|
        if permission.subject_id.nil?
          can permission.action.to_sym, permission.subject.constantize
        else
          can permission.action.to_sym, permission.subject.constantize, id: permission.subject_id
        end
      end
    end
  end
end
