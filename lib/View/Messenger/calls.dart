import 'package:flutter/material.dart';
import 'package:livechat/Models/callsModel.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFDF56),
        onPressed: () {},
        child: Container(
          height: 56.0,
          width: 56.0,
          child: CircleAvatar(
            backgroundColor: Colors.yellow[400],
            backgroundImage: AssetImage("images/coin.png"),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: CallsModel.callsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(CallsModel.callsList[index].pic),
                      ),
                      title: Row(
                        children: [
                          Image(
                              image:
                                  AssetImage(CallsModel.callsList[index].sign)),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            CallsModel.callsList[index].name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      trailing: Text(
                        CallsModel.callsList[index].lastCall,
                        style: TextStyle(color: Colors.grey),
                      ),
                      subtitle: Text(
                        CallsModel.callsList[index].response,
                        style: TextStyle(color: Colors.red),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
