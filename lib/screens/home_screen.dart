import 'dart:ui';
import 'package:ebook/book.dart';
import 'package:ebook/book_card.dart';
import 'package:ebook/consttants.dart';
import 'package:ebook/screens/details_screen.dart';
import 'package:ebook/screens/drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:ebook/consttants.dart';
import 'package:ebook/account.dart';
import 'package:flutter/painting.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Book> book = [
      Book(
        image: 'assets/images/Yazraail.png',
        subtitle: 'M. bin HASAN',
        rating: "4.4",
        title: 'Yazraail',
      ),
      Book(
          image: 'assets/images/small.png',
          subtitle: 'Adham SHARQAWI',
          rating: "5.0",
          title: 'Nutfa'),
      Book(
          image: 'assets/images/Les Miserables.png',
          subtitle: 'Victor HUGO',
          rating: "4.9",
          title: 'Sefiller'),
      Book(
        image: 'assets/images/Just for men.png',
        subtitle: 'Adham SHARQAWI',
        rating: "4.6",
        title: 'Just for men',
      ),
    ];
    List<Book> books = [
      Book(
        image: 'assets/images/heart beat.png',
        subtitle: 'Adham SHARQAWI',
        rating: "4.4",
        title: 'Heart beat',
      ),
      Book(
          image: 'assets/images/Morning talk.png',
          subtitle: 'Adham SHARQAWI',
          rating: "5.0",
          title: 'Mornings'),
      Book(
          image: 'assets/images/sure news.png',
          subtitle: 'Victor HUGO',
          rating: "4.9",
          title: 'Yaqin'),
      Book(
        image: 'assets/images/About a homeland of flesh and blood.png',
        subtitle: 'Adham SHARQAWI',
        rating: "4.6",
        title: 'Homeland',
      ),
    ];

    List<Book> bookss = [
      Book(
        image: 'assets/images/bozuk.png',
        subtitle: 'Mark MANSON',
        rating: "4.6",
        title: 'Subtle Art ',
      ),
      Book(
        image: 'assets/images/kill.png',
        subtitle: 'Aziz bin HUSEYIN',
        rating: "4.9",
        title: 'How to kill',
      ),
      Book(
        image: 'assets/images/kukla.png',
        subtitle: 'Mustafa HALIFE',
        rating: "5.0",
        title: 'Cochlea',
      ),
      Book(
        image: 'assets/images/halk.png',
        subtitle: 'Basel HUSEYIN',
        rating: "4.4",
        title: 'The audience',
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Nermin ISREB'),
                accountEmail: Text('nerminisreb@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: kCard,
                    child: Icon(
                      Icons.person,
                      color: kProgressIndicator,
                      size: 40,
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: kProgressIndicator),
              ),
              //البوتونات و ايقوناتهن
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const drawerScreen(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'Home Page',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.home),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const drawerScreen(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'My account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.person),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const drawerScreen(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'My Books',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.add_box),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const drawerScreen(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.book),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const drawerScreen(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'Favourites',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.favorite,
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const drawerScreen(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'Settings',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.settings),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const drawerScreen(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'About',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.help,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: kProgressIndicator,
          title: Text(
            'What Are you reading today? ',
            // You need to add this line
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/duvar.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              ),

              ////////////////////////////////////////////////////////

              Expanded(
                child: ListView.builder(
                  shrinkWrap: true, // Use  children total size
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(
                    left: 8.0,
                    top: 10.0,
                    right: 8.0,
                  ),
                  itemCount: book.length,
                  itemBuilder: (context, index) {
                    return BookCard(
                      image: book[index].image,
                      title: book[index].title,
                      subtitle: book[index].subtitle,
                      show: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const detailsScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true, // Use  children total size
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(
                    left: 8.0,
                    top: 10.0,
                    right: 8.0,
                  ),
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    return BookCard(
                      image: books[index].image,
                      title: books[index].title,
                      subtitle: books[index].subtitle,
                      show: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const detailsScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true, // Use  children total size
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(
                    left: 8.0,
                    top: 10.0,
                    right: 8.0,
                  ),
                  itemCount: bookss.length,
                  itemBuilder: (context, index) {
                    return BookCard(
                      image: bookss[index].image,
                      title: bookss[index].title,
                      subtitle: bookss[index].subtitle,
                      show: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const detailsScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),

            
            ],
          ),
        ),
      ),
    );
  }
}