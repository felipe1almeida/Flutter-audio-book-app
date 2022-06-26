import 'package:audio_book/pages/book_store.dart';
import 'package:flutter/material.dart';

import '../components/review_item_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff43434F),
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: const Color(0xff43434F),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Image.asset('assets/images/profile.png'),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 40),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Discover  your next favorite book',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    child: Image.asset('assets/images/book1.png'),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookStore(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Image.asset('assets/images/book2.png'),
                  const SizedBox(width: 15),
                  Image.asset('assets/images/book3.png'),
                  const SizedBox(width: 15),
                  Image.asset('assets/images/book4.png'),
                  const SizedBox(width: 15),
                  Image.asset('assets/images/book5.png'),
                ],
              ),
            ),
            const SizedBox(height: 36),
            const Text(
              'Your favorites',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 24.0),
                  child: Text(
                    'See more',
                    style: TextStyle(
                      color: Color(0xffFF6C6C),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              'Your saved list of favorites',
              style: TextStyle(
                color: Color(0xffCEC6C6),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              height: 500,
              child: ListView(
                children: const [
                  ReviewItemList(
                    image: 'assets/images/Rectangle 4.png',
                    title: 'The Keeper of Lost Things',
                    author: 'by Ruth Hogan',
                  ),
                  SizedBox(height: 20),
                  ReviewItemList(
                    image: 'assets/images/Rectangle 11.png',
                    title: 'The Eye of the World',
                    author: 'by Robert Jordan',
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Vector.png'),
              label: 'btn1',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Vector-2.png'),
              label: 'btn2',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Vector-3.png'),
              label: 'btn3',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Vector-4.png'),
              label: 'btn4',
            ),
          ],
        ),
      ),
    );
  }
}
