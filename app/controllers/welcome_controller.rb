class WelcomeController < ApplicationController
  def index
    return unless current_user.present?

    redirect_to current_user_categories_path
  end

  def info
    return unless current_user.present?

    redirect_to current_user_categories_path
  end

  def start
    return unless current_user.present?

    redirect_to current_user_categories_path
  end
end
