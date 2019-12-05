class Cast{
  List<Actor> actores = new List();
  Cast.fromJsonList(List<dynamic> jsonList){
    if(jsonList == null) return;
    jsonList.forEach((item){
      final actor = Actor.fromJsonMap(item);
      actores.add(actor);
    });
  }
}

class Actor {
  int castId;
  String character;
  String creditId;
  int gender;
  int id;
  String name;
  int order;
  String profilePath;

  Actor({
    this.castId,
    this.character,
    this.creditId,
    this.gender,
    this.id,
    this.name,
    this.order,
    this.profilePath,
  });

  Actor.fromJsonMap(Map<String, dynamic> json){
    this.castId = json['cast_id'];
    this.character = json['character'];
    this.creditId = json['credit_id'];
    this.gender = json['gender'];
    this.id = json['id'];
    this.name = json['name'];
    this.order = json['order'];
    this.profilePath = json['profile_path'];
  }

    getFoto(){
    if(profilePath == null){
      return 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT79VFiIQHdxL5w8RM8t41Ec8rGuxksuXZN-mdvs0LujztybzqI&s';
    } else {
        return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }
  }
}



enum Department { DIRECTING, WRITING, PRODUCTION, ART, CAMERA, CREW, SOUND, COSTUME_MAKE_UP, EDITING, VISUAL_EFFECTS, LIGHTING }
