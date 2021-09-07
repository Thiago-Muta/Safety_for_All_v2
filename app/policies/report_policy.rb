class ReportPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def show_map?
    # quem pode entrar na pagina de edit ?
    # user =>   quem esta tentando acessar a pagina   (current_user)
    # record => restaurante da pagina                 (@report)
    true
  end

  def close?
    user.admin?
  end

  def destroy?
    user.admin?
  end

end
