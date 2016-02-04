
protocol GKPeerPickerControllerDelegate : ObjectProtocol {
  @available(iOS 3.0, *)
  optional func peerPickerController(picker: GKPeerPickerController, didSelect type: GKPeerPickerConnectionType)
  @available(iOS 3.0, *)
  optional func peerPickerController(picker: GKPeerPickerController, sessionFor type: GKPeerPickerConnectionType) -> GKSession
  @available(iOS 3.0, *)
  optional func peerPickerController(picker: GKPeerPickerController, didConnectPeer peerID: String, to session: GKSession)
  @available(iOS 3.0, *)
  optional func peerPickerControllerDidCancel(picker: GKPeerPickerController)
}
