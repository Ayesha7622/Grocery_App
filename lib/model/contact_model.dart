class ContactsModel {
  String? boldText;
  String? normalText;
  String? items;
  String? number;
  String? price;
  String? no;
  String? text1;
  String? text2;
  String? text3;
  String? subText;
  String? subText2;
  String? date;
  String? date2;
  String? date3;
  String? date4;
  String? date5;
  String? date6;

  ContactsModel({
    required this.boldText,
    required this.normalText,
    required this.items,
    required this.number,
    required this.price,
    required this.no,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.subText,
    required this.subText2,
    required this.date,
    required this.date2,
    required this.date3,
    required this.date4,
    required this.date5,
  });
  List<ContactsModel> details = [
    ContactsModel(
        boldText: 'Order #90897',
        normalText: 'Placed On October 19 2021',
        items: 'items',
        number: '10',
        price: 'items',
        no: '16.9',
        text1: 'Order placed',
        text2: 'Order confirmed',
        text3: 'Order shipped',
        subText: 'Out for delivery',
        subText2: 'pending',
        date: 'October 19 2021',
        date2: 'October 19 2021',
        date3: 'October 20 2021',
        date4: 'October 20 2021',
        date5: 'pending'),
  ];
}
