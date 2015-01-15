class ExampleView < UIView

  def initWithFrame(frame)
    super.tap do |v|
      v.backgroundColor = UIColor.blackColor
      v.addSubview(we)
      v.addSubview(love)
      v.addSubview(rubymotion)
    end
  end

  def we
    UILabel.alloc.init.tap do |l|
      l.text = "We"
      l.font = UIFont.systemFontOfSize(24)
      l.textColor = UIColor.whiteColor
      l.frame = [[0, screen_height/2 - 90], [screen_width, 30]] # You can define frames like this (first sub-array is the origin, second is the size)
      l.textAlignment = NSTextAlignmentCenter
    end
  end

  def love
    image = UIImage.imageWithContentsOfFile("#{App.resources_path}/love.png")
    UIImageView.alloc.initWithImage(image).tap do |i|
      i.frame = CGRectMake(
        screen_width/2 - 50,  # x-origin
        screen_height/2 - 45, # y-origin
        100,                  # width
        90                    # height
      )
    end
  end

  def rubymotion
    UILabel.alloc.init.tap do |l|
      l.text = "RubyMotion"
      l.font = UIFont.systemFontOfSize(24)
      l.textColor = UIColor.whiteColor
      l.frame = CGRectMake(0, screen_height/2 + 60, screen_width, 30)
      l.textAlignment = NSTextAlignmentCenter
    end
  end


  # --- Helper Methods ---

  def screen_width
    UIScreen.mainScreen.bounds.size.width
  end

  def screen_height
    UIScreen.mainScreen.bounds.size.height
  end

end