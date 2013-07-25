class MainController < NSWindowController
  extend IB

  outlet :load_button, NSButton
  outlet :webview, WebView

  def load(sender)
    request = NSURLRequest.requestWithURL(NSURL.URLWithString('http://www.google.com/'))
    webview.mainFrame.loadRequest(request)
  end
end
