module Actualize
  require "./employee1.rb"
  require "./reportable.rb"

  class Intern < Employee
    include Reportable
  end
end

