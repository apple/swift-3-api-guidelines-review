
protocol AUCocoaUIBase {
  func interfaceVersion() -> UInt32
  func uiView(forAudioUnit inAudioUnit: AudioUnit, with inPreferredSize: NSSize) -> NSView?
}
