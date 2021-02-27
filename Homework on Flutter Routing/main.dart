//ID: 6188071
//Week 6
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' ;
import 'package:week6_app/sum.dart' ;

class cartConstant {
  static int hotelCount, hotelTotal, counter = 0;
}

class Hotel {
  final String title ;
  final String description;
  Hotel(this. title , this .description) ;
}
void main() {
  runApp(MaterialApp(
    title : 'Passing Data',
    home: HotelsScreen(
      hotels: List .generate(
        20,
            (i ) => Hotel(
          'Details' ,
          'Including Breakfast   \n   \nCheck-in: 12.00 PM   \nCheck-out: 12.00 PM   \nLate Check-out: 15.00 PM'
              '\n \nFree WIFI  \nNo Smoking',
        ) ,
      ) ,
    ) ,
  ) ) ;
}
class HotelsScreen extends StatelessWidget {    //Hotel List
  final List<Hotel> hotels;
  HotelsScreen({Key key, @required this.hotels}) : super(key: key);
  int _counter = 0;
  int getPrice(int i, int priceC) {
    cartConstant.hotelCount = i * priceC;
    return cartConstant.hotelCount;
  }

  int getTotal(int x){
    cartConstant.hotelTotal = x++;
    return cartConstant.hotelTotal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true, title: Text('Hotel Booking', style: TextStyle(color: Color(0xffffffff)))
      ),
      //bottomNavigationBar: _buildTotalContainer(),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100, minHeight: 260,
                maxWidth: 104, maxHeight: 264,
              ),
              child: Image.asset('assets/images/soneva.jpg',
                width: 600,
                height: 450,
                fit: BoxFit.cover),
          ),
            title: Text('Soneva Kiri'),
            subtitle: Text('5 Bedroom Beach Pool  \nPrice: \฿326,000'),
            trailing: Icon(Icons.add_circle),
            onTap: () {
              print('Soneva Kiri');
              _counter++;
              if (_counter > 6) {
                _counter = 6;
              }
              getPrice(_counter, 326000);
              getTotal(cartConstant.hotelCount);
              print('$_counter Room');
              print(cartConstant.hotelTotal);
                Navigator.push(
                context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(hotel: hotels[1]),
                  ),
                );
            },
          ) ,
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100, minHeight: 260,
                maxWidth: 104, maxHeight: 264,
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
              getPrice(_counter, 8999);
              getTotal(cartConstant.hotelCount);
              print('$_counter Room');
              print(cartConstant.hotelTotal);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(hotel: hotels[1]),
                ),
              );
            },
          ),
          ListTile(
            leading: Container(
              constraints: BoxConstraints(
                minWidth: 100, minHeight: 260,
                maxWidth: 104, maxHeight: 264,
              ),
              child: Image.asset('assets/images/sala.jpg',
                  width: 600,
                  height: 450,
                  fit: BoxFit.cover),
            ),
            title: Text('Sala Phuket'),
            subtitle: Text('Sala Pool Villa  \nPrice: \฿41,000'),
            trailing: Icon(Icons.add_circle),
            onTap: () {
              print('Sala Phuket');
              _counter++;
              if (_counter > 6) {
                _counter = 6;
              }
              getPrice(_counter, 41000);
              getTotal(cartConstant.hotelCount);
              print('$_counter Room');
              print(cartConstant.hotelTotal);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(hotel: hotels[1]),
                ),
              );
            },
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100, minHeight: 260,
                maxWidth: 104, maxHeight: 264,
              ),
              child: Image.asset('assets/images/keemala.jpg',
                  width: 600,
                  height: 450,
                  fit: BoxFit.cover),
            ),
            title: Text('Keemala Phuket'),
            subtitle: Text('Bird\'s Nest  Pool Villa  \nPrice: \฿19,500'),
            trailing: Icon(Icons.add_circle),
            onTap: () {
              print('Keemala Phuket');
              _counter++;
              if (_counter > 6) {
                _counter = 6;
              }
              getPrice(_counter, 19500);
              getTotal(cartConstant.hotelCount);
              print('$_counter Room');
              print(cartConstant.hotelTotal);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(hotel: hotels[1]),
                ),
              );
            },
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100, minHeight: 260,
                maxWidth: 104, maxHeight: 264,
              ),
              child: Image.asset('assets/images/siam.jpg',
                  width: 600,
                  height: 450,
                  fit: BoxFit.cover),
            ),
            title: Text('The Siam, Bangkok'),
            subtitle: Text('Riverview Suite  \nPrice: \฿20,000'),
            trailing: Icon(Icons.add_circle),
            onTap: () {
              print('The Siam Hotel');
              _counter++;
              if (_counter > 6) {
                _counter = 6;
              }
              getPrice(_counter, 20000);
              getTotal(cartConstant.hotelCount);
              print('$_counter Room');
              print(cartConstant.hotelTotal);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(hotel: hotels[1]),
                ),
              );
            },
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100, minHeight: 260,
                maxWidth: 104, maxHeight: 264,
              ),
              child: Image.asset('assets/images/oriental.jpg',
                  width: 600,
                  height: 450,
                  fit: BoxFit.cover),
            ),
            title: Text('Mandarin Oriental, Bangkok'),
            subtitle: Text('Premier 1-Bedroom Suite  \nPrice: \฿29,000'),
            trailing: Icon(Icons.add_circle),
            onTap: () {
              print('Mandarin Oriental');
              _counter++;
              if (_counter > 6) {
                _counter = 6;
              }
              getPrice(_counter, 29000);
              getTotal(cartConstant.hotelCount);
              print('$_counter Room');
              print(cartConstant.hotelTotal);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(hotel: hotels[1]),
                ),
              );
            },
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100, minHeight: 260,
                maxWidth: 104, maxHeight: 264,
              ),
              child: Image.asset('assets/images/shangrila.webp',
                  width: 600,
                  height: 450,
                  fit: BoxFit.cover),
            ),
            title: Text('Shangri-La Hotel, Bangkok'),
            subtitle: Text('Executive River View Suite \nPrice: \฿8,900'),
            trailing: Icon(Icons.add_circle),
            onTap: () {
              print('Shangri-La Hotel');
              _counter++;
              if (_counter > 6) {
                _counter = 6;
              }
              getPrice(_counter, 8900);
              getTotal(cartConstant.hotelCount);
              print('$_counter Room');
              print(cartConstant.hotelTotal);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(hotel: hotels[1]),
                ),
              );
            },
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100, minHeight: 260,
                maxWidth: 104, maxHeight: 264,
              ),
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
              getPrice(_counter, 17000);
              getTotal(cartConstant.hotelCount);
              print('$_counter Room');
              print(cartConstant.hotelTotal);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(hotel: hotels[1]),
                ),
              );
            },
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100, minHeight: 260,
                maxWidth: 104, maxHeight: 264,
              ),
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
              _counter++;
              if (_counter > 6) {
                _counter = 6;
              }
              getPrice(_counter, 32000);
              getTotal(cartConstant.hotelCount);
              print('$_counter Room');
              print(cartConstant.hotelTotal);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(hotel: hotels[1]),
                ),
              );
            },
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100, minHeight: 260,
                maxWidth: 104, maxHeight: 264,
              ),
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
              getPrice(_counter, 3420);
              getTotal(cartConstant.hotelCount);
              print('$_counter Room');
              print(cartConstant.hotelTotal);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(hotel: hotels[1]),
                ),
              );
            },
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100, minHeight: 260,
                maxWidth: 104, maxHeight: 264,
              ),
              child: Image.asset('assets/images/kempinski.jpg',
                  width: 600,
                  height: 450,
                  fit: BoxFit.cover),
            ),
            title: Text('Siam Kempinski Bangkok'),
            subtitle: Text('The Terrace Suite  \nPrice: \฿142,000'),
            trailing: Icon(Icons.add_circle),
            onTap: () {
              print('Siam Kempinski Bangkok');
              _counter++;
              if (_counter > 6) {
                _counter = 6;
              }
              getPrice(_counter, 142000);
              getTotal(cartConstant.hotelCount);
              print('$_counter Room');
              print(cartConstant.hotelTotal);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(hotel: hotels[1]),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: _buildTotalContainer(),        //Your Booking Button Link to Summary Page
    ) ;
  }

  Widget _buildTotalContainer() {
    return Container(
      height: 80.0,
      padding: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 2),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SummaryPage()));
              //Route route = MaterialPageRoute(builder: (context) => SummaryPage());
              //Navigator.push(context, route);
            },
            child: Container(
              height: 50.0,
              width: 350.0,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(35.0),
              ),
              child: BookButton(),      //Yout Booking Button
            ),
          ),
        ],
      ),
    );
  }
}

class BookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _navigateSum(context);
      },
      child: Text('Your Booking') ,
    ) ;
  }
  // A method that launches the SelectionScreen and awaits the result from
  // Navigator.pop.
  _navigateSum(BuildContext context) async {
  // Navigator.push returns a Future that completes after calling
  // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SummaryPage()),
                   ) ;
  }
}

class DetailScreen extends StatelessWidget {
// Declare a field that holds the hotel.
  final Hotel hotel;
// In the constructor, require a Hotel.
  DetailScreen({Key key, @required this.hotel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
// Use the Hotel to create the UI.
    return Scaffold(
      appBar: AppBar(
        title : Text(hotel.title) ,
      ) ,
      body: Column(
        //padding: EdgeInsets.all (16.0) ,
        children: [
          Row(
              children: [
                Text(hotel.description),
              ],
          ),

          Center(
            child: Container(
            height: 360.0,
            width: 360.0,
            //color: Colors.cyan[50],
              child: Align(
                alignment: Alignment.bottomCenter,
                  child: SelectionButton()) ,
            ),
          ),
        ],
      ) ,
    ) ;
  }
}
class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('Confirm Booking?') ,
    ) ;
  }
    // A method that launches the SelectionScreen and awaits the result from
    // Navigator.pop.
  _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    ) ;
    // After the Selection Screen returns a result , hide any previous snackbars
    // and show the new result.
    Scaffold. of(context)
      .. removeCurrentSnackBar()
      .. showSnackBar(SnackBar(content: Text("$result")));
  }
}
class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Booking'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all (8.0),
              child: ElevatedButton(
                onPressed: () {
// Close the screen and return "Yep!" as the result .
                  Navigator.pop(context, 'Yes!');
                },
                child: Text('Yes!'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all (8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Close the screen and return "Nope!" as the result .
                  Navigator.pop(context, 'No');
                },
                child: Text('No'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

