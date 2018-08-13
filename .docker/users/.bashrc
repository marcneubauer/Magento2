# Alias

alias n98='n98-magerun2.phar'
alias magerun='n98-magerun2.phar'
alias mage='php -d memory_limit=-1 -f bin/magento'
alias magento='php -d memory_limit=-1 -f bin/magento'
alias node='nodejs'

# NVM

export NVM_DIR="/var/www/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


alias mclean="rm -rf /var/www/html/magento2/pub/static/frontend/* /var/www/html/magento2/var/view_preprocessed/* /var/www/html/magento2/var/di/* /var/www/html/magento2/var/generation/* /var/www/html/magento2/var/*cache"
alias mroot="cd /var/www/html/magento2/"
alias mboom="mclean && magento cache:flush && clearAll && magento setup:upgrade && magento setup:di:compile && magento setup:static-content:deploy -f"
