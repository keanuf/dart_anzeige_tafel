import 'dart:html';

void main() {
  Element heim_anzeige = query("#heim_anzeige");
  Element heim_minus = query('#heim_minus');
  Element heim_plus = query('#heim_plus');
  Element ausw_minus = query('#ausw_minus');
  Element ausw_plus = query('#ausw_plus');
  Element ausw_anzeige = query('#ausw_anzeige');
  
  heim_minus.on.click.add((e) {
    heim_anzeige.text = anzeigeMinus(heim_anzeige.text);
  });
  heim_plus.on.click.add((e){
    heim_anzeige.text = anzeigePlus(heim_anzeige.text);
  });
  ausw_minus.on.click.add((e){
    ausw_anzeige.text = anzeigeMinus(ausw_anzeige.text);
  });
  ausw_plus.on.click.add((e) {
    ausw_anzeige.text = anzeigePlus(ausw_anzeige.text);
  });
}

String anzeigeMinus(String er) {
  if(int.parse(er) == 0){
    return 0.toString();
  }
  var ret = int.parse(er) - 1;
  return ret.toString();
}

String anzeigePlus(String er){
  var ret = int.parse(er) + 1;
  return ret.toString();
}

