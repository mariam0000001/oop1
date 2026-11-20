class Holiday{
  late String name;
  late int day;
  late String month;

  Holiday(this.name , this.day , this.month);

  bool inSameMonth(Holiday h2){
    if (month == h2.month){
      return true;
    }
    else{
      return false;
    }
  }

  static double avgDate(List<Holiday> l){
    int sum = 0;
    for(int i = 0; i<l.length ; i++){
      sum+= l[i].day;
    }
    double avg = sum/l.length;
    return avg;
  }
}

void main() {
  Holiday h1 = Holiday("Independence Day" , 4 , "july");
  Holiday h2 = Holiday("test" , 15 , "july");

  List<Holiday> l = [h1,h2];

  print(h1.inSameMonth(h2));
  print(Holiday.avgDate(l));
}