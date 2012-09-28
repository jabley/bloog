module ExhibitsHelper
  def exhibit(model, context)
    # String-based comparison to avoid Rails class-reloading issues
    case model.class.name
    when "Post" 
      if model.picture?
        PicturePostExhibit.new(model, context)
      else
        TextPostExhibit.new(model, context)
      end
    else
      model
    end
  end
end
