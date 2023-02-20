class Quote {
  String? text ;
  String? author ;

  //klasik constractor
  // Quote( String txt, String author) {this.text = txt;this.author = author;}

  //Klasik constractor yerine  Named parameter ( Thisa e tamaya gerek yok)
  Quote({this.text , this.author});
}