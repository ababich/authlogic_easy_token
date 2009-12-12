require "authlogic_easy_token/acts_as_authentic/perishable_token"

if ActiveRecord::Base.respond_to?(:add_acts_as_authentic_module)
  ActiveRecord::Base.send(:include, AuthlogicEasyToken::ActsAsAuthentic::PerishableToken)
end