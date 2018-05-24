class WikiPolicy < ApplicationPolicy
  attr_reader :user, :wiki

  def initialize(user, wiki)
    @user = user
    @wiki = wiki
  end


  def update?
    user.present? && (wiki.user == user || user.admin?)
  end

  def destroy?
    wiki.user == user || user.admin?
  end

end
