import 'package:flutter/material.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/widgets/components/components.dart';

class InChatScreen extends StatelessWidget {
  const InChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primaryBlue,
        title: Center(child: Text('Sara Gad')),
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back_ios_new_outlined),
      ),
      body: Stack(
        children:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(children: [
                Expanded(
                    child: textFormFailed(
                      suffixIcon:Icon( Icons.camera_alt,color: ColorManager.primaryBlue,),
                      color: Colors.grey[200],
                        hintText: 'Text message',
                        keyboardType: TextInputType.text,
                        textEditingController: TextEditingController(),
                        validator: (value){

                        })
                ),
                const SizedBox(
                  width: 12,
                ),
                Row(
                  children: [
                    buildContainerChat(iconData: Icons.mic),
                    SizedBox(width: 5,),
                    buildContainerChat(iconData: Icons.add),
                  ],
                )
              ]),
            ),
          )
        ],
      ),
    );
  }

  Container buildContainerChat({required IconData iconData}) {
    return Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:  Center(
                          child: Icon(
                            iconData,
                            color: ColorManager.primaryBlue,
                          )),
                    );
  }
}
