
protocol GKPeerPickerControllerDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func peerPickerController(picker: GKPeerPickerController, didSelectConnectionType type: GKPeerPickerConnectionType)
  @available(iOS 3.0, *)
  optional func peerPickerController(picker: GKPeerPickerController, sessionForConnectionType type: GKPeerPickerConnectionType) -> GKSession
  @available(iOS 3.0, *)
  optional func peerPickerController(picker: GKPeerPickerController, didConnectPeer peerID: String, toSession session: GKSession)
  @available(iOS 3.0, *)
  optional func peerPickerControllerDidCancel(picker: GKPeerPickerController)
}
