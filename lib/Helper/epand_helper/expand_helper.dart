import 'package:flutter/material.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/Helper/epand_helper/expand_model.dart';

class ExpandList extends StatefulWidget {
  const ExpandList({Key? key}) : super(key: key);
  @override
  State<ExpandList> createState() => _ExpandListState();
}

class _ExpandListState extends State<ExpandList> {
  final List<FAQModel> _FAQ = getCommonQustion();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _renderQuestion(),
      ),
    );
  }
  Widget _renderQuestion() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _FAQ[index].isExpanded = !isExpanded;
        });
      },
      children:_FAQ.map<ExpansionPanel>((FAQModel faqModel) {
        return ExpansionPanel(
          backgroundColor: ColorManager.offWhite,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(faqModel.questionNum,style: TextStyle(fontSize: 20,color: ColorManager.primaryBlue)),
                  SizedBox(height: 10,),
                  Text(faqModel.title,style: TextStyle(fontSize: 18),),
                ],
              ),
            );
          },
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(faqModel.body),
            ),
          ),
          isExpanded: faqModel.isExpanded,
        );
      }).toList(),
    );
  }

}