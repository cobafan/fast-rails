Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/count_vs_any_active_record_count" => "count_vs_any_active_record_count#index"
end
