Rails.application.routes.draw do
  root :to => "portfolio#index"
  get "work_portfolio" => "portfolio#work_portfolio"
  get "work_project_2" => "portfolio#work_project_2"
  get "work_project_3" => "portfolio#work_project_3"
  post "send_letter" => "portfolio#send_letter"
  get "send_letter" => "portfolio#send_letter"
  get "work_letter" => "portfolio#work_letter"
end
