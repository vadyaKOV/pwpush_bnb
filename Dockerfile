FROM pglombardo/pwpush:latest

WORKDIR /opt/PasswordPusher

COPY bnb.css app/assets/stylesheets/themes/default.css
COPY logo-transparent-sm-dark-bare.png app/assets/images/logo-transparent-sm-dark-bare.png
COPY logo-transparent-sm-bare.png app/assets/images/logo-transparent-sm-bare.png

ENV PWP__THEME=default
ENV PWP_PRECOMPILE=true
ENV PWP__BRAND__SHOW_FOOTER_MENU=false

RUN SECRET_KEY_BASE_DUMMY=1 bundle exec rails assets:precompile
