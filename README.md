# Automatically slow down all Core Animation animations when the Shift key is down

Many OS X apps, including both Finder and Dock, will slow down animations when you trigger them with the Shift key held down.

Unfortunately, this behavior is not automatic. If you want to be able to temporarily slow down animations (e.g., to test interruption or redirection), you must implement it yourself.

This test app includes an NSApplication subclass that implements the slow-on-shift behavior automatically. Whenever the shift key is down, any Core-Animation-based animations that use the default duration are slowed down tenfold. (If you set a custom duration, or use NSAnimation or some other animation technique, this won't help you.)

To use this subclass, add it to your project and set your application's principal class to it.

This is made for Cocoa applications; it will not work in Cocoa Touch. If you were hoping for something that would implement the same behavior in an iOS app when a USB, Dock-connector, or Bluetooth keyboard is present, you will still need to implement that yourself. (But feel free to draw inspiration from this code!)
