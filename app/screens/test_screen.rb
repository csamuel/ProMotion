class TestScreen < ProMotion::Screen
  title "Test Screen"
  
  def on_load
    @label = add_element UILabel.alloc.initWithFrame(CGRectMake(5, 5, 320, 30)), {
      text: "This is awesome!",
      font: UIFont.systemFontOfSize(18)
    }
    @button = add_element UIButton.alloc.initWithFrame([[5,45], [300, 40]]), {
      title: "Button",
      "addTarget:action:forControlEvents:" => [self, :hello, UIControlEventTouchUpInside],
      backgroundColor: UIColor.whiteColor
    }
    @button.addSubview(@label)
  end

  def hello
    puts "hello"
  end
end