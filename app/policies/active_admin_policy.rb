class ActiveAdminPolicy < ApplicationPolicy
  def initialize(user, record)
    raise Pundit::NotAuthorizedError, I18n.t("active_admin.demo_mode") if Flipper.enabled? :demo_mode
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end

  def destroy_all?
    true
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end
end
