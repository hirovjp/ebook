module WordlistsHelper
  def select_category
    ["All"] + Category.all.collect{|cate| [cate.name, cate.id]}
  end
end
