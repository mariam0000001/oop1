class Movie{
  late String title;
  late String studio;
  late String rating;


  Movie(this.title, this.studio, [this.rating = "PG"]);

  static List<String> getPG(List<Movie> l){
    List<String> result = [];
    for(int i=0;i<l.length;i++){
      if(l[i].rating == "PG"){
        result.add(l[i].title);
      }
    }
    return result;
  }

}

void main(){
  Movie m1 = Movie("Casino Royale" , "Eon Productions" , "PG13");
  Movie m2 = Movie("lion king" , "disney");
  Movie m3 = Movie("nemo" , "disney");

  List<Movie> l = [m1,m2,m3];

  print(Movie.getPG(l));


}