class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildMenu
    buildWindow
  end

  def buildWindow
    @main_controller = MainController.alloc.initWithWindowNibName('MainWindow')
    @main_controller.window.makeKeyAndOrderFront(self)
  end
end
