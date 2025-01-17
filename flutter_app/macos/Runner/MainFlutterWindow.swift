import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
    override func awakeFromNib() {
        let flutterViewController = FlutterViewController()
        let windowFrame = self.frame
        self.contentViewController = flutterViewController
        self.setFrame(windowFrame, display: true)

        self.setFrame(NSRect(x: 0, y: 0, width: 1024, height: 628), display: true)
        self.contentMinSize = NSSize(width: 1024, height: 628)
        self.contentMaxSize = NSSize(width: 1024, height: 628)
        self.styleMask.remove(.resizable)

        RegisterGeneratedPlugins(registry: flutterViewController)

        super.awakeFromNib()
    }
}
