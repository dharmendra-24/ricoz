import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ricoz/LoginPage.dart';
import 'package:ricoz/item_box.dart';
import 'package:ricoz/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _getCarouselContianer(Widget child) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      margin: const EdgeInsets.symmetric(
        horizontal: 5.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: child,
    );
  }

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
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ProfilePage();
                      },
                    ));
                  },
                  child: Text('click for profile page'))),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 150,
              ),
              items: [
                _getCarouselContianer(
                  const Icon(
                    Icons.image,
                    size: 100,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ItemBox(
              title: "Category",
              dataRow1: [
                ItemBlockData(
                  title: "Marketing",
                  icon: Image.asset(
                    'asset/image2.png',
                  ),
                ),
                ItemBlockData(
                  title: "Managemen",
                  icon: Image.asset('asset/image3.png'),
                ),
                ItemBlockData(
                    title: "Designing", icon: Image.asset('asset/image4.png')),
                ItemBlockData(
                  title: "Developmen",
                  icon: const Icon(
                    Icons.precision_manufacturing_rounded,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 8,
              ),
              padding: const EdgeInsets.all(
                15,
              ),
              decoration: Utils.mainContainerDecoration,
              child: Row(
                children: [
                  const Icon(
                    Icons.credit_card,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Refer you friends",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Text(
                            "and get",
                            style: TextStyle(
                              fontSize: 12,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "coupon with ",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Text(
                            "refferal program",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 12,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: const Text(
                        "Refer Now",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ItemBox(
              title: "Services",
              dataRow1: [
                ItemBlockData(
                  title: "Social Media Marketing",
                  icon: Image.asset(
                    'asset/image2.png',
                  ),
                ),
                ItemBlockData(
                  title: "Google Adwords",
                  icon: SvgPicture.asset(
                    'asset/svg/adwards.svg',
                  ),
                ),
                ItemBlockData(
                  title: "Graphic Design",
                  icon: SvgPicture.asset(
                    'asset/svg/graphic.svg',
                  ),
                ),
                ItemBlockData(
                  title: "Ads Managemen",
                  icon: SvgPicture.asset(
                    'asset/svg/Ads.svg',
                  ),
                ),
              ],
              dataRow2: [
                ItemBlockData(
                  title: "Ads\nManager",
                  icon: SvgPicture.asset(
                    'asset/svg/am.svg',
                  ),
                ),
                ItemBlockData(
                  title: "Website Developmen",
                  icon: SvgPicture.asset(
                    'asset/svg/web.svg',
                  ),
                ),
                ItemBlockData(
                  title: "Digital Marketing",
                  icon: SvgPicture.asset(
                    'asset/svg/digitalm.svg',
                  ),
                ),
                ItemBlockData(
                  title: "Shopify Developmen",
                  icon: SvgPicture.asset(
                    'asset/svg/shopify.svg',
                  ),
                ),
              ],
            ),
            ItemBox(
              title: "Social Media Marketing",
              dataRow1: [
                ItemBlockData(
                  title: "facebook",
                  icon: SvgPicture.asset(
                    'asset/svg/facebook.svg',
                  ),
                ),
                ItemBlockData(
                  title: "Instagram",
                  icon: SvgPicture.asset('asset/svg/instagram.svg'),
                ),
                ItemBlockData(
                  title: "LinkedIn",
                  icon: SvgPicture.asset('asset/svg/linkedin.svg'),
                ),
                ItemBlockData(
                  title: "You Tube",
                  icon: SvgPicture.asset('asset/svg/youtube.svg'),
                ),
              ],
              dataRow2: [
                ItemBlockData(
                  title: "X(twitter)",
                  icon: SvgPicture.asset(
                    'asset/svg/twitter.svg',
                    width: 20,
                  ),
                ),
                ItemBlockData(
                  title: "Snapchat",
                  icon: const Icon(
                    Icons.adobe_sharp,
                  ),
                ),
                ItemBlockData(
                  title: "Pinterest",
                  icon: SvgPicture.asset(
                    'asset/svg/pininterest.svg',
                    width: 20,
                  ),
                ),
                ItemBlockData(
                  title: "More",
                  icon: SvgPicture.asset(
                    'asset/svg/more.svg',
                    width: 20,
                  ),
                ),
              ],
            ),
            ItemBox(
              title: "Courses",
              dataRow1: [
                ItemBlockData(
                  title: "Social Media \n Courses",
                  icon: SvgPicture.asset(
                    'asset/svg/socialm.svg',
                    width: 20,
                  ),
                ),
                ItemBlockData(
                  title: "Graphic Designing",
                  icon: SvgPicture.asset(
                    'asset/svg/designing.svg',
                    width: 20,
                  ),
                ),
                ItemBlockData(
                  title: "Web Developmen",
                  icon: SvgPicture.asset(
                    'asset/svg/web.svg',
                    width: 20,
                  ),
                ),
                ItemBlockData(
                  title: "Ads Managemen",
                  icon: SvgPicture.asset(
                    'asset/svg/management.svg',
                    width: 20,
                  ),
                ),
              ],
              dataRow2: [
                ItemBlockData(
                  title: "Video \n Editing",
                  icon: SvgPicture.asset(
                    'asset/svg/videoediting.svg',
                    width: 20,
                  ),
                ),
                ItemBlockData(
                  title: "Google\n Adwards",
                  icon: SvgPicture.asset(
                    'asset/svg/adwards.svg',
                    width: 20,
                  ),
                ),
                ItemBlockData(
                  title: "Perfomance \n Monitoring",
                  icon: SvgPicture.asset(
                    'asset/svg/perfomance.svg',
                    width: 20,
                  ),
                ),
                ItemBlockData(
                  title: "Digital \n Marketing",
                  icon: SvgPicture.asset(
                    'asset/svg/marketing.svg',
                    width: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
