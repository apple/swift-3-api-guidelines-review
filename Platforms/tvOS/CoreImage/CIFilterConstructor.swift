
protocol CIFilterConstructor {
  @available(tvOS 5.0, *)
  func filter(withName name: String) -> CIFilter?
}
