
protocol GKSessionDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func session(session: GKSession, peer peerID: String, didChangeState state: GKPeerConnectionState)
  @available(iOS 3.0, *)
  optional func session(session: GKSession, didReceiveConnectionRequestFromPeer peerID: String)
  @available(iOS 3.0, *)
  optional func session(session: GKSession, connectionWithPeerFailed peerID: String, withError error: NSError)
  @available(iOS 3.0, *)
  optional func session(session: GKSession, didFailWithError error: NSError)
}
protocol GKVoiceChatClient : NSObjectProtocol {
  @available(iOS 3.0, *)
  func voiceChatService(voiceChatService: GKVoiceChatService, sendData data: NSData, toParticipantID participantID: String)
  func participantID() -> String
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, sendRealTimeData data: NSData, toParticipantID participantID: String)
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStartWithParticipantID participantID: String)
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didNotStartWithParticipantID participantID: String, error: NSError?)
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStopWithParticipantID participantID: String, error: NSError?)
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didReceiveInvitationFromParticipantID participantID: String, callID: Int)
}
