require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if (season == :winter)
      holidays.each do |keys,arrays|
        arrays.push(supply)
      end
    end
  end
holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if (season == :spring)
      holidays.each do |keys,arrays|
        arrays.push(supply)
      end
    end
  end
holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
 holiday_hash.each do |key, value|
    puts key.to_s.capitalize.insert(-1,":")
      value.each do |holiday,array|
        adjust_holiday = holiday.to_s.capitalize.insert(-1,": ").insert(0,"  ").split(/ |\_/).map(&:capitalize).join(" ").insert(-1," ")
       last_str = adjust_holiday.insert(-1,array.join(", "))
       puts last_str
    end
  end

end



def all_holidays_with_bbq(holiday_hash)
  empty_array = []
  holiday_hash.each do |season,data|
    data.each do |holiday,array|
      if array.include?("BBQ")
      empty_array << holiday
      end
    end
  end
empty_array

end







