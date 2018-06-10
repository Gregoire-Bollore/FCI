class Sponsorship < ActiveRecord::Base
  belongs_to :son, counter_cache: :number_of_sponsorships
  belongs_to :family, counter_cache: :number_of_sponsorships
end
