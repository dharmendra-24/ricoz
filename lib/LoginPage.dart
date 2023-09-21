import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentIndex = 0;
  final List<Widget> pages = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          child: Image.asset('asset/svg/user.jpeg'),
        ),
        backgroundColor: Color(0xFF430102),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('click for home page'))),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.shop_outlined,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
        centerTitle: true,
        title: Image.asset('asset/svg/Capture1.PNG'),
        elevation: 1,
      ),
      body: SafeArea(
          child: Container(
        color: Color(0xF6F8F8),
        padding: const EdgeInsets.only(top: 30, left: 15),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hi Aman'),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Icon(Icons.phone), Text('91 XXXXX XXXXX')],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Icon(Icons.email), Text('yourname@.com')],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('asset/coin.svg'),
                          const Text(
                            'Coins 100',
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Text(
                        'See more',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset('asset/frame1.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.person_pin),
                            Text('Referal'),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.person),
                            Text('Profile Settings'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.email),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Recent Purchases'),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.add_circle_outline),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Create Request'),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.wallet_outlined),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Easy Payments'),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.login),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Logout'),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ]),
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: 0,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        // onTap: onTabTapped,
        // currentIndex: _currentIndex,
        backgroundColor: Color(0xFF430102),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
              color: Colors.white,
            ),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
