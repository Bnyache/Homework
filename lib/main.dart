import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class cartConstant {
  static int hotelCount, hotelTotal;
}

 class MyApp extends StatelessWidget {
   /*void refreshTotal() {    //to refresh total price
     setState(() {});
   }*/
   @override
   Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hotel Booking',
        theme: ThemeData(
          primaryColor: Colors.cyan,
        ),
       home: Scaffold(
          appBar: AppBar(centerTitle: true, title: Text('Hotel Booking', style: TextStyle(color: Color(0xffffffff)))),
          body: BodyLayout(),
          bottomNavigationBar: _buildTotalContainer(),
        ),
     );
   }

   Widget _buildTotalContainer() {
     return Container(
       height: 120.0,
       padding: EdgeInsets.only(
         left: 10.0,
         right: 10.0,
       ),
       child: Column(
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.only(top: 20),
             child: Row(
               mainAxisSize: MainAxisSize.max,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Text(
                   "    Total",
                   style: TextStyle(
                       color: Color(0xFF9BA7C6),
                       fontSize: 16.0,
                       fontWeight: FontWeight.bold),
                 ),
                 Text(
                     cartConstant.hotelTotal.toString(),
                   style: TextStyle(
                       color: Color(0xFF6C6D6D),
                       fontSize: 16.0,
                       fontWeight: FontWeight.bold),
                 ),
                 Text(
                   "Baht    ",
                   style: TextStyle(
                       color: Color(0xFF6C6D6D),
                       fontSize: 16.0,
                       fontWeight: FontWeight.bold),
                 ),
               ],
             ),
           ),
           SizedBox(
             height: 15,
           ),
           GestureDetector(
             onTap: () {
//              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
             },
             child: Container(
               height: 50.0,
               decoration: BoxDecoration(
                 color: Colors.cyan,
                 borderRadius: BorderRadius.circular(35.0),
               ),
               child: Center(
                 child: Text(
                   "PAY NOW",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 18.0,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
             ),
           ),
         ],
       ),
     );
   }
 }

class BodyLayout extends StatelessWidget {

  int _counter = 0;
  int getPrice(int i, int priceC) {
    cartConstant.hotelCount = i * priceC;
    return cartConstant.hotelCount;
  }
  getTotal(){

  }
  @override
   Widget build(BuildContext context) {
      return _myListView(context);
   }

   Widget _myListView(BuildContext context) {
     return ListView(
       children: <Widget>[
         ListTile(
           leading: ConstrainedBox(
             constraints: BoxConstraints(
               minWidth: 100,
               minHeight: 260,
               maxWidth: 104,
               maxHeight: 264,
             ),
             //backgroundImage: AssetImage('assets/images/soneva.jpg'), size: 72.0
             child: Image.asset('assets/images/soneva.jpg',
                 width: 600,
                 height: 450,
                 fit: BoxFit.cover),
           ),
           title: Text('Soneva Kiri'),
           subtitle: Text('5 Bedroom Beach Pool Reserve Price: \฿326,984'),
           trailing: Icon(Icons.add_circle),
           onTap: () {
             print('Soneva Kiri');
               _counter++;
               if (_counter > 6) {
                 _counter = 6;
               }

             getPrice(_counter, 326984).toString();
           },
         ),

         ListTile(
           leading: ConstrainedBox(
             constraints: BoxConstraints(
               minWidth: 100,
               minHeight: 260,
               maxWidth: 104,
               maxHeight: 264,
             ),
             child: Image.asset('assets/images/twinpalms.jpg',
                 width: 600,
                 height: 450,
                 fit: BoxFit.cover),
           ),
           title: Text('Twinpalms Phuket'),
           subtitle: Text('Family Loft  \nPrice: \฿8,999'),
           trailing: Icon(Icons.add_circle),
           onTap: () {
             print('Twinpalms Phuket');
             _counter++;
             if (_counter > 6) {
               _counter = 6;
             }

             getPrice(_counter, 8999).toString();
           },
         ),
         ListTile(
           leading: Container(
             constraints: BoxConstraints(
               minWidth: 100,
               minHeight: 260,
               maxWidth: 104,
               maxHeight: 264,
             ),
             child: Image.asset('assets/images/sala.jpg',
                 width: 600,
                 height: 450,
                 fit: BoxFit.cover),
           ),
           title: Text('Sala Phuket'),
           subtitle: Text('Sala Pool Villa  \nPrice: \฿41,284'),
           trailing: Icon(Icons.add_circle),
           onTap: () {
             print('Sala Phuket');
             _counter++;
             if (_counter > 6) {
               _counter = 6;
             }

             getPrice(_counter, 41284).toString();
           },
         ),
         ListTile(
           leading: ConstrainedBox(
             constraints: BoxConstraints(
               minWidth: 100,
               minHeight: 260,
               maxWidth: 104,
               maxHeight: 264,
             ),
             child: Image.asset('assets/images/keemala.jpg',
                 width: 600,
                 height: 450,
                 fit: BoxFit.cover),
           ),
           title: Text('Keemala Phuket'),
           subtitle: Text('Bird\'s Nest  Pool Villa  \nPrice: \฿19,540'),
           trailing: Icon(Icons.add_circle),
           onTap: () {
             print('Keemala Phuket');
             _counter++;
             if (_counter > 6) {
               _counter = 6;
             }

             getPrice(_counter, 19540).toString();
           },
         ),
         ListTile(
           leading: ConstrainedBox(
             constraints: BoxConstraints(
               minWidth: 100,
               minHeight: 260,
               maxWidth: 104,
               maxHeight: 264,
             ),
             child: Image.asset('assets/images/siam.jpg',
                 width: 600,
                 height: 450,
                 fit: BoxFit.cover),
           ),
           title: Text('The Siam, Bangkok'),
           subtitle: Text('Riverview Suite  \nPrice: \฿20,473'),
           trailing: Icon(Icons.add_circle),
           onTap: () {
             print('The Siam Hotel');
             _counter++;
             if (_counter > 6) {
               _counter = 6;
             }

             getPrice(_counter, 20473).toString();
           },
         ),
         ListTile(
           leading: ConstrainedBox(
             constraints: BoxConstraints(
               minWidth: 100,
               minHeight: 260,
               maxWidth: 104,
               maxHeight: 264,
             ),
             //backgroundImage: AssetImage('assets/images/soneva.jpg'), size: 72.0
             child: Image.asset('assets/images/oriental.jpg',
                 width: 600,
                 height: 450,
                 fit: BoxFit.cover),
           ),
           title: Text('Mandarin Oriental, Bangkok'),
           subtitle: Text('Premier 1-Bedroom Suite  \nPrice: \฿29,999'),
           trailing: Icon(Icons.add_circle),
           onTap: () {
             print('The Siam');
             _counter++;
             if (_counter > 6) {
               _counter = 6;
             }

             getPrice(_counter, 29999).toString();
           },
         ),
         ListTile(
           leading: ConstrainedBox(
             constraints: BoxConstraints(
               minWidth: 100,
               minHeight: 260,
               maxWidth: 104,
               maxHeight: 264,
             ),
             //backgroundImage: AssetImage('assets/images/soneva.jpg'), size: 72.0
             child: Image.asset('assets/images/shangrila.webp',
                 width: 600,
                 height: 450,
                 fit: BoxFit.cover),
           ),
           title: Text('Shangri-La Hotel, Bangkok'),
           subtitle: Text('Executive River View Suite \nPrice: \฿8,999'),
           trailing: Icon(Icons.add_circle),
           onTap: () {
             print('Shangri-La Hotel');
             _counter++;
             if (_counter > 6) {
               _counter = 6;
             }

             getPrice(_counter, 8999).toString();
           },
         ),
         ListTile(
           leading: ConstrainedBox(
             constraints: BoxConstraints(
               minWidth: 100,
               minHeight: 260,
               maxWidth: 104,
               maxHeight: 264,
             ),
             //backgroundImage: AssetImage('assets/images/soneva.jpg'), size: 72.0
             child: Image.asset('assets/images/rosewood.jpg',
                 width: 600,
                 height: 450,
                 fit: BoxFit.cover),
           ),
           title: Text('Rosewood, Bangkok'),
           subtitle: Text('Manor Suite King \nPrice: \฿17,000'),
           trailing: Icon(Icons.add_circle),
           onTap: () {
             print('Rosewood');
             _counter++;
             if (_counter > 6) {
               _counter = 6;
             }

             getPrice(_counter, 17000).toString();
           },
         ),
         ListTile(
           leading: ConstrainedBox(
             constraints: BoxConstraints(
               minWidth: 100,
               minHeight: 260,
               maxWidth: 104,
               maxHeight: 264,
             ),
             //backgroundImage: AssetImage('assets/images/soneva.jpg'), size: 72.0
             child: Image.asset('assets/images/centara.jpg',
                 width: 600,
                 height: 450,
                 fit: BoxFit.cover),
           ),
           title: Text('Centara Grand at CentralWorld, Bangkok'),
           subtitle: Text('Club Suite \nPrice: \฿32,000'),
           trailing: Icon(Icons.add_circle),
           onTap: () {
             print('Centara Grand at CentralWorld Bangkok');
           },
         ),
         ListTile(
           leading: ConstrainedBox(
             constraints: BoxConstraints(
               minWidth: 100,
               minHeight: 260,
               maxWidth: 104,
               maxHeight: 264,
             ),
             //backgroundImage: AssetImage('assets/images/soneva.jpg'), size: 72.0
             child: Image.asset('assets/images/intercon.jpg',
                 width: 600,
                 height: 450,
                 fit: BoxFit.cover),
           ),
           title: Text('Intercontinental, Bangkok'),
           subtitle: Text('1 King Bed Club InterContinental  \nPrice: \฿3,420'),
           trailing: Icon(Icons.add_circle),
           onTap: () {
             print('Intercontinental');
             _counter++;
             if (_counter > 6) {
               _counter = 6;
             }

             getPrice(_counter, 3420).toString();
           },
         ),
         ListTile(
           leading: ConstrainedBox(
             constraints: BoxConstraints(
               minWidth: 100,
               minHeight: 260,
               maxWidth: 104,
               maxHeight: 264,
             ),
             //backgroundImage: AssetImage('assets/images/soneva.jpg'), size: 72.0
             child: Image.asset('assets/images/kempinski.jpg',
                 width: 600,
                 height: 450,
                 fit: BoxFit.cover),
           ),
           title: Text('Siam Kempinski Bangkok'),
           subtitle: Text('The Terrace Suite  \nPrice: \฿142,115'),
           trailing: Icon(Icons.add_circle),
           onTap: () {
             print('Siam Kempinski Bangkok');
             _counter++;
             if (_counter > 6) {
               _counter = 6;
             }

             getPrice(_counter, 142115).toString();
           },
         ),
       ],
     );
   }
 }



