class Team < ApplicationRecord
  # Direct associations

  has_many   :coaches,
             :dependent => :destroy

  has_many   :poets,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
