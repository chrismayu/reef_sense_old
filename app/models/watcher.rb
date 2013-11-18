class Watcher < ActiveRecord::Base
  attr_accessible :ambeint_temp, :ato_pump,:waterlevelokay, :startingup, :chiller, :heater, :main_light, :main_pump, :params, :ph_level, :powerhead, :reef_tank_arduino_id, :reef_tank_id, :refuge_light, :skimmer, :temp, :updated_reason

 default_scope order: 'watchers.created_at DESC'

 
       belongs_to :reef_tank, :primary_key => :reef_tank_arduino_id , :foreign_key => :reef_tank_arduino_id
       has_many :update_codes, :foreign_key => :reef_tank_arduino_id, :primary_key =>  :reef_tank_arduino_id
       
       serialize :params
      
       after_create :analyze_newest_watcher

     private

      def analyze_newest_watcher
      
        newest_watcher = Notification.where(:reef_tank_arduino_id => self.reef_tank_arduino_id).all
         
         
         for data in newest_watcher.each 
  
                       if  data.check_parameter !=nil
                        
                        
                         if data.sign_type == "Greater Than"

                                              if data.check_parameter < self.temp

                                               if data.sent_email == true
                                                  puts "Hi There      Greater Than--------------sent email"
                                                end

                                              #history.create!(:arduino_id => data.arduino_id, :sign => data.type, alarm_value => data. :actual_value => params[:temp] :email_sent => data.send_email  )
                                             end
                            
  
                          elsif data.sign_type == "Less Than"

                                               if data.check_parameter > self.temp

                                                                    if data.sent_email == true
                                                                      puts "Hi There      Less Than--------------sent email"
                                                                    end

                                                                 # history.create!(:arduino_id => data.arduino_id, :sign => data.type, alarm_value => data. :actual_value => params[:temp] :email_sent => data.send_email  )
                                                                  end                          
                                             
                          end                   
                        
                        
                        
                        
                       end
                       
          end

      end      
      
      
      
      

end
