
protocol CIFilterConstructor {
  @available(OSX 10.4, *)
  func filterWithName(name: String) -> CIFilter?
}
