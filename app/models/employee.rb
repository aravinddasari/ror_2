class Employee < ApplicationRecord

  # NOTE: we are overridding the default acitve record method here
  ## we will want to remove this in the next session
  ## the goal of this mehtod is to explain the absraction without the knowledge of model
  def self.all
    return [
      {
        name: 'Ashok Varma',
        designation: 'CEO',
        age: '45', # :P
        date_of_joining: '01-04-2011'
      },
      # TODO: add more people here
    ]
  end
end
