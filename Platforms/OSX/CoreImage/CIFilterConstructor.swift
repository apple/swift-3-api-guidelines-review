
protocol CIFilterConstructor {
  @available(OSX 10.4, *)
  func filterWithName(_ name: String) -> CIFilter?
}
