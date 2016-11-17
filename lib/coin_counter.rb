class Fixnum
  define_method(:coin_counter) do
    coin_value = {25 => "quarter", 10 => "dime", 5 =>"nickle", 1 => "penny"}
    user_input = self
    total_change = 0
    quarter_count = 0
    dime_count = 0
    nickle_count = 0
    penny_count = 0
    until total_change == user_input
      if user_input >= 25
        quarter_count += 1
        user_input -= 25
      elsif user_input >= 10
        dime_count += 1
        user_input -= 10
      elsif user_input >= 5
        nickle_count += 1
        user_input -= 5
      else
        penny_count += 1
        user_input -= 1
      end
    end
  "#{quarter_count} Quarters, #{dime_count} Dimes, #{nickle_count} Nickles, #{penny_count} Pennies"
  end
end
