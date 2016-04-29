module Validate
  module Controls
    module Validator
      module Specialized
        def self.example
          Example.new
        end

        class Example
          module Validator
            def self.some_specialized_validator
              SomeSpecialization
            end

            module SomeSpecialization
              def self.call(subject)
                :some_specialized_result
              end
            end
          end
        end
      end
    end
  end
end
