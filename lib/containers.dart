class data {
  final int id;
  final String name;
  final String write;
  final String urlimage;
  data(
      {required this.id,
      required this.name,
      required this.write,
      required this.urlimage});
}

List<data> read = [
  data(
      id: 1,
      name: "Jeans",
      write: "2 Piece left",
      urlimage: "assets/jeans1.jpg"),
  data(
      id: 2,
      name: "Shirt",
      write: "5 Piece left",
      urlimage: "assets/shirt1.jpg"),
  data(
      id: 3,
      name: "Shoes",
      write: "3 Pairs left",
      urlimage: "assets/pic1.jpg"),
  data(
      id: 4,
      name: "T Shirt",
      write: "2 Piece left",
      urlimage: "assets/tshirt1.jpg"),
];

class data1 {
  final int id;
  final String name;
  final String write;
  final String urlimage;
 data1(
      {required this.id,
      required this.name,
      required this.write,
      required this.urlimage});
}

List<data1> read1 = [
  data1(id: 1, name: "Cargo Pants", write: "\$250", urlimage: "assets/cargo.jpg"),
  data1(id: 2, name: "Shirt", write: "\$400", urlimage: "assets/shirt2.jpg"),
  data1(id: 3, name: "Joggers", write: "\$150", urlimage: "assets/pic2.jpg"),
];