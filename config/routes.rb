Rails.application.routes.draw do
  get 'services/currency_rates',to:"services#currency_rates",as:"currency_rates"

  get 'fmt/index',to:"fmt#index",as:"fmts"
  get 'fmt/show',to:"fmt#show",as:"fmt_show"
  get 'branches/index'

  get 'branches/:id',to:"branches#show", as: "branches_show"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'main/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
