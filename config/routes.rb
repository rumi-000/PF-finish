Rails.application.routes.draw do
  
# 利用者のログイン画面への遷移
#skipは後で必要であれば記載⇨devise_for :customers,skip: [:passwords], controllers: {
devise_for :customers, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者のログイン画面への遷移
#ログイン情報はメールアドレスとパスワードのみ
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

end