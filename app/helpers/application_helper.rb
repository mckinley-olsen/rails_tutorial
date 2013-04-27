module ApplicationHelper
  def fullTitle(pageTitle)
    baseTitle = "Mickey"
    returnVal = baseTitle
    if pageTitle == nil
      returnVal = pageTitle
    else
      returnVal = "#{returnVal} #{pageTitle}" 
    end
    return returnVal
  end
end
