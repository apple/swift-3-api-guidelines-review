
protocol AUCocoaUIBase {
  func interfaceVersion() -> UInt32
  func uiViewFor(audioUnit inAudioUnit: AudioUnit, withSize inPreferredSize: Size) -> NSView?
}
