
protocol CIFilterConstructor {
  @available(OSX 10.4, *)
  func filter(name name: String) -> CIFilter?
}
