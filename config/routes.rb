Rails.application.routes.draw do
  root 'pages#menu'

  # get 'gl_account/index'
  get 'reports/gl_chart_of_accounts'
  get 'reports/account_transactions'
  get 'reports/income_balance'
end
