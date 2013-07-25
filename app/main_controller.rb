class MainController < NSWindowController
  extend IB

  outlet :load_button, NSButton
  outlet :url_field, NSTextField
  outlet :webview, WebView

  def windowDidLoad
    url_field.setStringValue('http://www.google.com/')
  end

  def load(sender)
    request = NSURLRequest.requestWithURL(NSURL.URLWithString(url_field.stringValue))
    webview.mainFrame.loadRequest(request)
  end
end
