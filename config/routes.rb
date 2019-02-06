Rails.application.routes.draw do
  root 'pages#menu'
  get 'pages/transactions'

  resources :pages
  # get 'gl_account/index'
  get 'reports/gl_accounts_html'
  get 'pages/create_chart_of_accounts_pdf'
  get 'reports/account_transactions'
  get 'reports/income_balance'
end
