module AuthlogicEasyToken
  module ActsAsAuthentic
    # makes perishable tokens EASIER

    module PerishableToken
      def self.included(klass)
        klass.class_eval do
          extend Config
          add_acts_as_authentic_module(Methods)
        end
      end


      module Config
      end

      # All methods relating to the perishable token.
      module Methods
        def self.included(klass)
          return if !klass.column_names.include?("perishable_token")

          klass.class_eval do
            include InstanceMethods
          end
        end

        # Instance level methods for the perishable token.
        module InstanceMethods
          # Resets the perishable token to a EASY token.
          def reset_perishable_token
            self.perishable_token = Random.easy_token
          end
        end
      end
    end
  end
end