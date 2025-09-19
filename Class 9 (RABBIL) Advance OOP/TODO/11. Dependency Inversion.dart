
void main() {

/* var  obj=SendNotification(Email());
 obj.send("Learn Flutter");*/

/* var  obj=SendNotification(SMS());
 obj.send("Learn Flutter");*/

/*
 var  obj=SendNotification(WhatsApp());
 obj.send("Learn Flutter");
*/

  var obj1=SendNotification(Email());
  var obj2=SendNotification(SMS());
  var obj3=SendNotification(WhatsApp());

}

// Email Interface
abstract class MessageSeder{
  void sendMessage(String msg);
}

class Email implements MessageSeder{
  @override
  void sendMessage(String msg) {
    // TODO: implement sendMessage
  }
}

class SMS implements MessageSeder{
  @override
  void sendMessage(String msg) {
    // TODO: implement sendMessage
  }
}

class WhatsApp implements MessageSeder{
  @override
  void sendMessage(String msg) {
    // TODO: implement sendMessage
  }
}

class SendNotification {
  final MessageSeder sender;
  SendNotification(this.sender);
  void send(String msg){
    sender.sendMessage(msg);
  }
}
