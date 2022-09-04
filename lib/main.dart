import 'package:diffie/dhk_communication.dart';

void main() {
  //  Generate Alice Private Key
  String alicePrivateHex = DHKCommunicationChannel.generatePrivate();
  print(alicePrivateHex);

  String alicePublicHex = DHKCommunicationChannel.generatePublicKey(alicePrivateHex);
  print(alicePublicHex);

  String bobPrivateHex = DHKCommunicationChannel.generatePrivate();
  String bobPublicHex = DHKCommunicationChannel.generatePublicKey(bobPrivateHex);

  String aliceSharedKey = DHKCommunicationChannel.calculateSharedKey(bobPublicHex, alicePrivateHex);

  String bobSharedKey = DHKCommunicationChannel.calculateSharedKey(alicePublicHex, bobPrivateHex);

  print(aliceSharedKey == bobSharedKey);
}
