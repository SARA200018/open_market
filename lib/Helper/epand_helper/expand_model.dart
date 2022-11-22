class FAQModel {
  FAQModel(this.questionNum,this.title, this.body, [this.isExpanded = false]);

  String questionNum;
  String title;
  String body;
  bool isExpanded;
}

List<FAQModel> getCommonQustion() {
  return [
    FAQModel(
        'Q1',
        'What is store ?',
        'Contrary to popular belief, Lorem Ipsdnvndvnm  nghhhot te. It has roots in a piece of classical Latin literature making .'
    ),
    FAQModel(
        'Q2',
        'What is store ?',
        'Contrary to popular belief, Lorem Ipsdnvndvnm  nghhhot te. It has roots in a piece of classical Latin literature making .'
    ),
    FAQModel(
        'Q3',
        'What is store ?',
        'Contrary to popular belief, Lorem Ipsdnvndvnm  nghhhot te. It has roots in a piece of classical Latin literature making .'
    ),
    FAQModel(
        'Q4',
        'What is store ?',
        'Contrary to popular belief, Lorem Ipsdnvndvnm  nghhhot te. It has roots in a piece of classical Latin literature making .'
    ),

  ];
}
