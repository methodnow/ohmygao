class Admin::AdminController < ApplicationController
  before_filter :is_admin

  def is_admin
    redirect_to root_path unless current_user.has_role?(:admin)
  end
end
