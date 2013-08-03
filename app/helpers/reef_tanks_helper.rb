module ReefTanksHelper
  
  
 
  def status_powerhead(watcher)

    if watcher.powerhead !=nil

   if watcher.powerhead?     #home_address == false 
     content_tag(:div, content_tag(:span, "ON"), class: "label label-success")
   else
     content_tag(:div, content_tag(:span, "OFF"), class: "label label-warning")   
   end
   
   else
   content_tag(:div, content_tag(:span, "No Data"), class: "label label-default")  
  end
  
 end
  
  
  def status_mainpump(watcher)

    if watcher.main_pump !=nil
      
    if watcher.main_pump?
      content_tag(:div, content_tag(:span, "ON"), class: "label label-success")
    else
      content_tag(:div, content_tag(:span, "OFF"), class: "label label-warning")   
    end
    
      else
        
      content_tag(:div, content_tag(:span, "No Data"), class: "label label-default")  
   end
  
  end
 
  
  def status_skimmer(watcher)

   if watcher.skimmer !=nil
    
         if watcher.skimmer?     #home_address == false 
           content_tag(:div, content_tag(:span, "ON"), class: "label label-success")
         else
           content_tag(:div, content_tag(:span, "OFF"), class: "label label-warning")   
         end
  
  
      else
        
      content_tag(:div, content_tag(:span, "No Data"), class: "label label-default")  

     
   end
    
    
  end
  
  
  def status_atopump(watcher)


    if watcher.ato_pump !=nil

     if watcher.ato_pump?     #home_address == false 
       content_tag(:div, content_tag(:span, "ON"), class: "label label-success")
     else
       content_tag(:div, content_tag(:span, "OFF"), class: "label label-warning")   
     end
     
     
       else
       content_tag(:div, content_tag(:span, "No Data"), class: "label label-default")  
      end
   end
  
  
  def status_heater(watcher)
    
    
    if watcher.heater !=nil

    if watcher.heater?     #home_address == false 
      content_tag(:div, content_tag(:span, "ON"), class: "label label-success")
    else
      content_tag(:div, content_tag(:span, "OFF"), class: "label label-warning")   
    end
    
      else
      content_tag(:div, content_tag(:span, "No Data"), class: "label label-default")  
     end
  end
  
  
  def status_waterlevelokay(watcher)


    if watcher.waterlevelokay !=nil

    if watcher.waterlevelokay?     
     content_tag(:div, content_tag(:span, "Okay"), class: "label label-success")  
    else
      
       content_tag(:div, content_tag(:span, "Water Level low"), class: "label label-warning") 
    end
    
      else
      content_tag(:div, content_tag(:span, "No Data"), class: "label label-default")  
     end
  end
  
  def status_ph_level(watcher)
    
    
    if watcher.ph_level !=nil

    if watcher.ph_level?    
      content_tag(:div, content_tag(:span, "not setup"), class: "label label-success")
    else
      content_tag(:div, content_tag(:span, "not setup"), class: "label label-warning")   
    end
    
      else
      content_tag(:div, content_tag(:span, "No Data"), class: "label label-default")  
     end
  end
  
  
  def status_chiller(watcher)
    
    
    if watcher.chiller !=nil

    if watcher.chiller?     #home_address == false 
      content_tag(:div, content_tag(:span, "ON"), class: "label label-success")
    else
      content_tag(:div, content_tag(:span, "OFF"), class: "label label-warning")   
    end
    
      else
      content_tag(:div, content_tag(:span, "No Data"), class: "label label-default")  
     end
  end
  
  def status_refuge_light(watcher)
    
    
    if watcher.refuge_light !=nil

    if watcher.refuge_light?     #home_address == false 
      content_tag(:div, content_tag(:span, "ON"), class: "label label-success")
    else
      content_tag(:div, content_tag(:span, "OFF"), class: "label label-warning")   
    end
    
      else
      content_tag(:div, content_tag(:span, "No Data"), class: "label label-default")  
     end
  end
  
  def status_temp(watcher)
    
    
    if watcher.temp !=nil 
 
      content_tag(:p, "#{number_with_precision(watcher.temp, :precision => 1)}#{176.chr(Encoding::UTF_8)}f") 
     
      else
   
      content_tag(:div, content_tag(:span, "No Data"), class: "label label-default")  
     end
  end
  
   def status_ambeint_temp(watcher)


     if watcher.ambeint_temp !=nil 
        content_tag(:p, "#{number_with_precision(watcher.ambeint_temp, :precision => 1)}#{176.chr(Encoding::UTF_8)}f") 
      
       else
       content_tag(:div, content_tag(:span, "No Data"), class: "label label-default")  
      end
   end
   
   def status_last_updated(watcher)

  
     if watcher.created_at !=nil
      content_tag(:p, "#{time_ago_in_words(watcher.created_at)} ago") 
       else
       content_tag(:div, content_tag(:span, "No Data"), class: "label label-default")  
      end
   end
 
   def status_send_email_okay(watcher)


     if watcher.send_email.okay !=nil

     if watcher.send_email.okay?     #home_address == false 
       content_tag(:div, content_tag(:span, "ON"), class: "label label-success")
     else
       content_tag(:div, content_tag(:span, "OFF"), class: "label label-warning")   
     end

       else
       content_tag(:div, content_tag(:span, "No Data"), class: "label label-default")  
      end
   end
 
 
 
 
 
end
