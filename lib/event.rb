require "pry"
require "time"

class Event
    attr_accessor :start_date

    def initialize(start_event_date, event_duration, title_event, lists_emails)
    @start_date = Time.parse(start_event_date)
    @duration = event_duration.to_i
    @title = title_event.to_s
    
    @attendees = lists_emails
    lists_emails = []
    end

    def postpone_24h
        @start_date += 24*60*60
    end 

    def end_date
        @start_date + @duration 
    end 
    
    def is_past?
        if @start_date <= Time.now
            true
        else
            false
        end
    end  

    def is_future?
        if @start_date >= Time.now
            true
        else
            false
        end
    end

    def is_soon?
        if @start_date - Time.now = 1800
            true
        else 
            false
        end 
    end 

    def to_s
        puts "Date de début : #{@start_date}"
        puts "Durée : #{@duration} minutes"
        puts "Titre : #{@title}"
        puts "Invités : #{@attendees.join(",")}"
    end


    
      
end

binding.pry
puts "end"
