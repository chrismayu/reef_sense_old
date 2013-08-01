module ReefTanksHelper
  
  
 
  def status_powerhead(watcher)

#    if watcher !=nil

   if watcher.powerhead?     #home_address == false 
     content_tag(:div, content_tag(:span, "ON"), class: "label label-success")
   else
     content_tag(:div, content_tag(:span, "OFF"), class: "label label-warning")   
   end
   
 # else
 #  "no data"
#  end
#  
 end
  
  
  def status_mainpump(watcher)

    if watcher.main_pump?     #home_address == false 
      content_tag(:div, content_tag(:span, "ON"), class: "label label-success")
    else
      content_tag(:div, content_tag(:span, "OFF"), class: "label label-warning")   
    end
  end
 
  
  
  def status_atopump(watcher)

     if watcher.ato_pump?     #home_address == false 
       content_tag(:div, content_tag(:span, "ON"), class: "label label-success")
     else
       content_tag(:div, content_tag(:span, "OFF"), class: "label label-warning")   
     end
   end
  
  
  def status_heater(watcher)

    if watcher.heater?     #home_address == false 
      content_tag(:div, content_tag(:span, "ON"), class: "label label-success")
    else
      content_tag(:div, content_tag(:span, "OFF"), class: "label label-warning")   
    end
  end
  
  
  def status_waterlevelokay(watcher)

    if watcher.waterlevelokay?     
     content_tag(:div, content_tag(:span, "Okay"), class: "label label-success")  
    else
      
       content_tag(:div, content_tag(:span, "Water Level low"), class: "label label-warning") 
    end
  end
   
  
end
