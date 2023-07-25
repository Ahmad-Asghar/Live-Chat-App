class MessageModel {
  final String name;
  final String sign;
  final String pic;
  final String lastMessage;

  MessageModel({
    required this.name,
    required this.sign,
    required this.pic,
    required this.lastMessage,

  });

  static  List<MessageModel> messagesList =[
    MessageModel(name: "Alica", sign: "images/sign1.png", pic: "images/call1.png", lastMessage: 'Call me',),
    MessageModel(name: "Sindrella", sign: "images/sign2.png", pic: "images/call2.png", lastMessage: 'See you soon!',),
    MessageModel(name: "Robina", sign: "images/sign3.png", pic: "images/call3.png", lastMessage: "No I can't",),
    MessageModel(name: "Charlotte", sign: "images/sign4.png", pic: "images/call4.png", lastMessage: 'ok',),
    MessageModel(name: "Peter", sign: "images/sign5.png", pic: "images/call4.png", lastMessage: 'i think so',),
    MessageModel(name: "Elizabeth", sign: "images/sign6.png", pic: "images/call5.png", lastMessage: 'Call me',),
    MessageModel(name: "Amelia", sign: "images/sign7.png", pic: "images/call6.png", lastMessage: 'See you soon!',),
    MessageModel(name: "Ava", sign: "images/sign1.png", pic: "images/call7.png", lastMessage: "No I can't",),
    MessageModel(name: "Evelyn", sign: "images/sign2.png", pic: "images/call8.png", lastMessage:  'ok',),
    MessageModel(name: "Sophia", sign: "images/sign3.png", pic: "images/call8.png", lastMessage: 'Call me',),
    MessageModel(name: "Mia", sign: "images/sign4.png", pic: "images/call6.png", lastMessage:"No I can't",),
    MessageModel(name: "Luna", sign: "images/sign5.png", pic: "images/call5.png", lastMessage: 'Call me',),
    MessageModel(name: "Anna", sign: "images/sign6.png", pic: "images/call4.png", lastMessage:'See you soon!',),
    MessageModel(name: "Sarah", sign: "images/sign7.png", pic: "images/call3.png", lastMessage: 'ok',),
    MessageModel(name: "Audrey", sign: "images/sign2.png", pic: "images/call2.png", lastMessage: 'Call me',),



  ];
}
