class MainController < NSWindowController
  extend IB

  outlet :load_button, NSButton
  outlet :url_field, NSTextField
  outlet :webview, WebView

  def windowDidLoad
    url_field.setStringValue('http://www.yahoo.co.jp/')
    load(self)
  end

  def load(sender)
    request = NSURLRequest.requestWithURL(NSURL.URLWithString(url_field.stringValue))
    webview.mainFrame.loadRequest(request)
  end

  # WebView delegate methods
  def webView(webview, didFinishLoadForFrame: frame)
    puts "\e[31m======================================================\e[0m"
    puts webview.mainFrameURL
    puts "\e[31m======================================================\e[0m"
    puts webview.stringByEvaluatingJavaScriptFromString("document.getElementsByTagName('html')[0].innerHTML").split(/\n/)[30..50]
    puts "\e[32m======================================================\e[0m"
  end
  # // WebView delegate methods

end
