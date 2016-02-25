
protocol NSValidatedUserInterfaceItem {
  func action() -> Selector
  func tag() -> Int
}
protocol NSUserInterfaceValidations {
  func validateUserInterfaceItem(_ anItem: NSValidatedUserInterfaceItem) -> Bool
}
