def get_first_name_of_season_winner(data, season)
  #the method should return the first name of that seaosn's winner
  data[season].each do |contestant|
    #iterate thru each season's hash which includes all the key value pairs for the
    #data, each key value pair is a contestant's info
    if contestant["status"] == "Winner"
      #if the contestant's status (key) equals "Winner" (value)
      return contestant["name"].split(" ").first
      #then return that contestant's name (at this point it will be their full name)
      #use the .split(" ") method to split the first and last names in the array
      #then use the .first method to only return the first thing in the array (first name)
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
    #iterate thru the data hash, going thru each season and it's contestants
    contestants.each do |contestant_details|
      #iterate thru each contestant and check all their key/value pairs
      #that make up their details
      if contestant_details["occupation"] == occupation
        #if the "occupation" detail of the contestant is equal to what
        #occupation was entered
        return contestant_details["name"]
        #then return the name of that contestant
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  number_of_contestants = 0
  #set the counter to zero because when we start the iteration
  #no one lives in the hometown you entered
  data.each do |seasons, contestants|
    #iterate thru the data hash, going thru the seasons & all their contestants
    contestants.each do |contestant_details|
      #iterate thru all of the contestants and look thru all their key/value pairs (details)
      if contestant_details["hometown"] == hometown
        #if the hometown of that contestant is equal to the hometown entered
         number_of_contestants += 1
         #add them to the counter, every time a contestant is from that hometown
         #add them to the counter by 1
      end
    end
  end
  number_of_contestants
  #return the counter after the iteration is completed
end

def get_occupation(data, hometown)
  data.each do |seasons, contestants|
    #iterate thru the data hash, going thru all of the seasons & their contestants
    contestants.each do |contestant_details|
      #iterate thru all the contestants, checking all their key/value pairs (details)
      if contestant_details["hometown"] == hometown
        #if their hometown value is equal to what hometown was entered
        return contestant_details["occupation"]
        #return that contestant's occupation
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  #the age total is zero because we haven't started the iteration yet
  number_of_contestants = 0
  #to find the average, we are going to need to divide the NUMBER OF contestants
  #by the TOTAL of all of the contestants
  #this is also set at zero because we have not started the iteration yet
  data[season].each do |contestant_details|
    #iterate thru each season, checking all the key/value pairs that make up the
    #details for each contestant
    age_total += (contestant_details["age"]).to_i
    #thru this iteration, each time we come across a contestant's age, we add
    #that contestant's age to the age_total
    #+= says, do this and then add the next age each loop thru the iteration
    #to_i changes the value of "age" which is a string into a float
    number_of_contestants += 1
    #each time you do this, you also have to add by one the number of contestants
    #the first iteration, the age total will be from one contestant
    #the second, the age total will be from two contestants
    #etc
    end
(age_total/number_of_contestants.to_f).round(0)
#at the end of the iteration, take the age_total and divide it by the
#number of the contestants to get the average
#use to_f so that the number becomes a float so we can round up or down
#we use .round(0) because the problem asked to round UP
#.round(0) takes the float and rounds UP
end
