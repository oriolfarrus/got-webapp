module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def get_universes
    Universe.all
  end

  def get_remaining_universes
    arr = []
    Universe.all.each do |universe|
      arr << universe
    end

    if !current_user.nil? && !current_user.admin?
        current_user.houses.each do |house|
            arr.delete(house.universe)
        end
    end

    arr
  end

end
