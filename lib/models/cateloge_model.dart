class CatelogeModel{
 static final  items=[
  Item(id: 1, name:  "iphone", desc: "desc", price: 120000, color: "color", image: "image")
 ];

}

class  Item{
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});


}

