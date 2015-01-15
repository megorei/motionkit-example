class ExampleMotionKitLayout < MotionKit::Layout

  def layout
    root :root do
      add UIImageView, :love
      add UILabel, :we
      add UILabel, :rubymotion
    end
  end

  def root_style
    backgroundColor UIColor.blackColor
  end

  def love_style
    image UIImage.imageWithContentsOfFile("#{App.resources_path}/love.png")
    frame from_center w: 100, h: 90
  end

  def we_style
    text "We"
    font UIFont.systemFontOfSize(24)
    textColor UIColor.whiteColor
    frame above :love, up: 10, w: 100, h: 30
    textAlignment NSTextAlignmentCenter
  end

  def rubymotion_style
    text "RubyMotion"
    font UIFont.systemFontOfSize(24)
    textColor UIColor.whiteColor
    frame below :love, down: 10, left: 25, w: 150, h: 30 # the left offset is necessary because the below helper sets the x-origin of this element to the same value as the x-origin of :love
    textAlignment NSTextAlignmentCenter
  end
end