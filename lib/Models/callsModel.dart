class CallsModel {
  final String name;
  final String sign;
  final String pic;
  final String response;
  final String lastCall;

  CallsModel({
    required this.name,
    required this.sign,
    required this.pic,
    required this.response,
    required this.lastCall,
  });
  
 static  List<CallsModel> callsList =[
    CallsModel(name: "Alica", sign: "images/sign1.png", pic: "images/call1.png", response: "Reject Call", lastCall: "1h ago"),
    CallsModel(name: "Cute", sign: "images/sign2.png", pic: "images/call2.png", response: "Reject Call", lastCall: "2h ago"),
    CallsModel(name: "Preduance", sign: "images/sign3.png", pic: "images/call3.png", response: "Reject Call", lastCall: "3h ago"),
    CallsModel(name: "Onela Habi", sign: "images/sign4.png", pic: "images/call4.png", response: "Reject Call", lastCall: "4h ago"),
    CallsModel(name: "Amanda", sign: "images/sign5.png", pic: "images/call5.png", response: "Reject Call", lastCall: "5h ago"),
    CallsModel(name: "Alyma", sign: "images/sign6.png", pic: "images/call6.png", response: "Reject Call", lastCall: "6h ago"),
    CallsModel(name: "Malibu", sign: "images/sign7.png", pic: "images/call7.png", response: "Reject Call", lastCall: "7h ago"),
    CallsModel(name: "Andas", sign: "images/sign1.png", pic: "images/call8.png", response: "Reject Call", lastCall: "8h ago"),
    CallsModel(name: "Cute", sign: "images/sign3.png", pic: "images/call9.png", response: "Reject Call", lastCall: "9h ago"),
    CallsModel(name: "Preduance", sign: "images/sign4.png", pic: "images/call1.png", response: "Reject Call", lastCall: "10h ago"),
  ];
}
