
protocol CIFilterConstructor {
  @available(OSX 10.4, *)
  func filter(withName name: String) -> CIFilter?
}
