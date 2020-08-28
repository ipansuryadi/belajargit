void main() {
  var x = null;
  var checkBoxList = [
    CheckBoxUIModel(checkBoxName: 'Modal', selected: false),
    CheckBoxUIModel(checkBoxName: 'Belanja', selected: false),
    CheckBoxUIModel(checkBoxName: 'Peluang Usaha', selected: false),
  ];
  final list = convertStringToCheckBoxList(x, checkBoxList);
  final y = convertCheckBoxListToString(list);
  print(y);
  var map = {
    "name":"ipan",
    "phone":"0809090"
  };
  map.remove("name");
  print(map);
}

String convertCheckBoxListToString(List<CheckBoxUIModel> checkBoxList) {
  List<String> nameList = [];
  for (var item in checkBoxList) {
    if(item.selected){
      nameList.add(item.checkBoxName);
    }
  }
  return nameList.join(', ');
}

class CheckBoxUIModel {
  String checkBoxName;
  bool selected;
  CheckBoxUIModel({this.checkBoxName, this.selected});
}

List<CheckBoxUIModel> convertStringToCheckBoxList(
    String value, List<CheckBoxUIModel> checkBoxList) {
  List<CheckBoxUIModel> newCheckBoxList = List<CheckBoxUIModel>();
  for (var item in checkBoxList) {
    if (value!=null&&value.contains(item.checkBoxName)) {
      item.selected = true;
    }
    newCheckBoxList.add(item);
  }
  return newCheckBoxList;
}
