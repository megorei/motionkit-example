class ExampleController < UIViewController

  # NOTICE: only use ONE of the methods. If both are active, the MotionKit layout will be rendered inside the already completed ExampleView instance


  def loadView
    self.view = ExampleView.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    self.view
  end

  # def viewDidLoad
  #   @layout = ExampleMotionKitLayout.new(root: self.view).build
  # end

end