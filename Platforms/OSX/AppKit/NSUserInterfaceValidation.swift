
protocol NSValidatedUserInterfaceItem {
  func action() -> Selector
  func tag() -> Int
}
protocol NSUserInterfaceValidations {
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
}
