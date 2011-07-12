module ApplicationHelper
  
  # methode qui affiche le logo pour chaque page
  def logo
    @logo = image_tag("logo.png", :alt => "Reseau Social ESMT", :class =>"round")
    #link_to logo, root_path
  end
  
  # Return a title on a per-page basis.
  def title
    base_title = "Reseau Social ESMT"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
