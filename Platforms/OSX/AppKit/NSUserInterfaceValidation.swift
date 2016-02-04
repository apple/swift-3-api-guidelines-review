
protocol NSValidatedUserInterfaceItem {
  func action() -> Selector
  func tag() -> Int
}
protocol NSUserInterfaceValidations {
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
}
