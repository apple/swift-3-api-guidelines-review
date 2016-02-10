
protocol CIFilterConstructor {
  @available(OSX 10.4, *)
  func filterWith(name name: String) -> CIFilter?
}
