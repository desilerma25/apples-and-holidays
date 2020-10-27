require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # holiday_supplies = {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

# shovel the supply you want into both NYE & Xmas, which are within winter
def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday| # iterate through each season and holiday
    if season == :winter # we are looking at the winter holidays
      holiday.each do |holiday, supplies| # go throrugh these holidays & supplies
        supplies << supply # shovel any new supply into the supplies array
      end
    end
  end
end



def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash[season][holiday_name] = supply_array # this will take in the season and holiday name and adds the supply_array
  # remember to return the updated hash
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten # call winter from holiday_hash, use .values to get the supplies and flatten so we have one array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday_details| # iterate through each season and its details
    puts "#{season.to_s.capitalize}:" # convert to string, capitalize the 1st ltr of each season
    holiday_details.each do |holiday, supplies| # now, iterate through the holiday and their supplies
      formatted_list = holiday.to_s.split("_").map(&:capitalize).join(" ")
      # create a new vari. assign it. convert to string, split holidays to capitalize each word in the holiday name,
      # collect and join back to array, with a space to separate
      puts "  #{formatted_list}: #{supplies.join(", ")}"
      # print the list of holidays w/ the supplies (joined by a comma) following
      # don't forget the extra space before the list
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  formatted_list = []
  holiday_hash.each do |season, holiday_details|
    holiday_details.each do |holiday, supply|
      if supply.include?("BBQ")
        formatted_list << holiday
    end
  end
end
formatted_list
end







