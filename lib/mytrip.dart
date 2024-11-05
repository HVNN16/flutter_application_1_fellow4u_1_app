import 'package:flutter/material.dart';
import 'search.dart';
import 'chat_mess.dart';
import 'Favourite.dart';
import 'profi.dart';
import 'home.dart';

Widget _buildHeader() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _buildBackgroundImage('assets/images/Mask Group.png', 200),
        Positioned(
          top: 20,
          left: 16,
          child: Text(
            "My Trips",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 16,
          child: _buildWeatherInfo(),
        ),
      ],
    );
  }

  Widget _buildBackgroundImage(String imageUrl, double height) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }


  Widget _buildWeatherInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Da Nang",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(Icons.cloud, color: Colors.white, size: 20),
            SizedBox(width: 5),
            Text("26°C", style: TextStyle(color: Colors.white, fontSize: 16)),
          ],
        ),
      ],
    );
  }

class NextTripsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildHeader(),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CurrentTripsPage()),
                        );
                      },
                      child: TripTab(text: "Current Trips"),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NextTripsPage()),
                        );
                      },
                      child: TripTab(text: "Next Trips", isSelected: true),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PastTripsPage()),
                        );
                      },
                      child: TripTab(text: "Past Trips"),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WishTripsPage()),
                        );
                      },
                      child: TripTab(text: "Wish Trips"),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              if (index == 0) {
                return TripCard(
                  location: "Ha Noi, Vietnam",
                  date: "Feb 2, 2020",
                  time: "8:00 - 10:00",
                  avatar: 'assets/images/Emmy 2.png',
                  name: "Emmy",
                  tripName: "Ho Guong Trip",
                  backgroundImage: 'assets/images/hoguom.png',
                );
              } else if (index == 1) {
                return TripCard(
                  location: "Ha Noi, Vietnam",
                  date: "Feb 12, 2021",
                  time: "14:00 - 16:00",
                  avatar: 'assets/images/Emmy 2.png',
                  name: "Emmy",
                  tripName: "Ho Chi Minh Mausoleum",
                  backgroundImage: 'assets/images/mausoleum.png',
                );
              } else {
                return TripCard(
                  location: "Ho Chi Minh City, Vietnam",
                  date: "Mar 10, 2021",
                  time: "10:00 - 12:00",
                  avatar: 'assets/images/Khai 2.png',
                  name: "Khai Tran",
                  tripName: "Duc Ba Church",
                  backgroundImage: 'assets/images/duc ba.png',
                );
              }
            },
          ),
          SizedBox(height: 20),
          
        ],
      ),
    bottomNavigationBar: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 9.1.png')),
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=> NextHome())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/search.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchPage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 10.1.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CurrentTripsPage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 11.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationPage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 13.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouritePage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 12.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProPage())
          );
        },
      ),
    ],
  ),
),
    );
  }
}

class PastTripsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildHeader(),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: TripTab(text: "Current Trips"),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: TripTab(text: "Next Trips"),
                    ),
                    
                    TripTab(text: "Past Trips", isSelected: true), // Highlighted
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WishTripsPage()),
                        );
                      },
                      child: TripTab(text: "Wish Trips"),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              if (index == 0) {
                return TripCard(
                  location: "Da Nang, Vietnam",
                  date: "Jan 15, 2020",
                  time: "9:00 - 11:00",
                  avatar: 'assets/images/Emmy 2.png',
                  name: "Emmy",
                  tripName: "Dragon Bridge Tour",
                  backgroundImage: 'assets/images/mausoleum.png',
                );
              } else {
                return TripCard(
                  location: "Hoi An, Vietnam",
                  date: "Dec 5, 2019",
                  time: "13:00 - 15:00",
                  avatar: 'assets/images/Khai 2.png',
                  name: "Khai Tran",
                  tripName: "Ancient Town Walk",
                  backgroundImage: 'assets/images/mausoleum.png',
                );
              }
            },
          ),
          SizedBox(height: 20),
        ],
      ),
   bottomNavigationBar: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 9.1.png')),
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=> NextHome())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/search.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchPage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 10.1.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CurrentTripsPage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 11.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationPage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 13.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouritePage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 12.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProPage())
          );
        },
      ),
    ],
  ),
),
    );
  }
}

class TripTab extends StatelessWidget {
  final String text;
  final bool isSelected;

  TripTab({required this.text, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: isSelected ? Colors.teal : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

// TripCard class remains unchanged
class TripCard extends StatelessWidget {
  final String location;
  final String date;
  final String time;
  final String avatar;
  final String name;
  final String tripName;
  final String backgroundImage;

  TripCard({
    required this.location,
    required this.date,
    required this.time,
    required this.avatar,
    required this.name,
    required this.tripName,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  backgroundImage,
                  fit: BoxFit.cover,
                  height: 150,
                  width: double.infinity,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.teal),
                    SizedBox(width: 5),
                    Text(
                      location,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () {
                    // Action for the three-dot menu
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              tripName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(avatar),
                      radius: 15,
                    ),
                    SizedBox(width: 5),
                    Text(name),
                  ],
                ),
                Text('$date | $time'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class WishTripsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildHeader(),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CurrentTripsPage()),
                        );
                      },
                      child: TripTab(text: "Current Trips"),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NextTripsPage()),
                        );
                      },
                      child: TripTab(text: "Next Trips"),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PastTripsPage()),
                        );
                      },
                      child: TripTab(text: "Past Trips"),
                    ),
                    TripTab(text: "Wish Trips", isSelected: true), // Highlighted
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              if (index == 0) {
                return TripCard(
                  location: "Phu Quoc, Vietnam",
                  date: "Upcoming",
                  time: "All Day",
                  avatar: 'assets/images/Emmy 2.png',
                  name: "Emmy",
                  tripName: "Phu Quoc Island Tour",
                  backgroundImage: 'assets/images/hoguom.png',
                );
              } else {
                return TripCard(
                  location: "Con Dao, Vietnam",
                  date: "Upcoming",
                  time: "All Day",
                  avatar: 'assets/images/Khai 2.png',
                  name: "Khai Tran",
                  tripName: "Con Dao Beach Trip",
                  backgroundImage: 'assets/images/hoguom.png',
                );
              }
            },
          ),
          SizedBox(height: 20),
          
        ],
      ),
      bottomNavigationBar: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 9.1.png')),
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=> NextHome())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/search.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchPage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 10.1.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CurrentTripsPage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 11.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationPage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 13.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouritePage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 12.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProPage())
          );
        },
      ),
    ],
  ),
),
    );
  }
}
class CurrentTripsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildHeader(),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TripTab(text: "Current Trips", isSelected: true), // Highlighted
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NextTripsPage()),
                        );
                      },
                      child: TripTab(text: "Next Trips"),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PastTripsPage()),
                        );
                      },
                      child: TripTab(text: "Past Trips"),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WishTripsPage()),
                        );
                      },
                      child: TripTab(text: "Wish Trips"),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              if (index == 0) {
                return TripCard(
                  location: "Hue, Vietnam",
                  date: "Sep 2, 2021",
                  time: "10:00 - 12:00",
                  avatar: 'assets/images/Emmy 2.png',
                  name: "Emmy",
                  tripName: "Imperial City Tour",
                  backgroundImage: 'assets/images/hoguom.png',
                );
              } else if (index == 1) {
                return TripCard(
                  location: "Da Nang, Vietnam",
                  date: "Oct 10, 2021",
                  time: "14:00 - 16:00",
                  avatar: 'assets/images/Khai 2.png',
                  name: "Khai Tran",
                  tripName: "Golden Bridge Visit",
                  backgroundImage: 'assets/images/hoguom.png',
                );
              } else {
                return TripCard(
                  location: "Sa Pa, Vietnam",
                  date: "Nov 5, 2021",
                  time: "9:00 - 11:00",
                  avatar: 'assets/images/Emmy 2.png',
                  name: "Emmy",
                  tripName: "Fansipan Mountain Trek",
                  backgroundImage: 'assets/images/hoguom.png',
                );
              }
            },
          ),
          SizedBox(height: 20),
          
        ],
      ),
    bottomNavigationBar: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 9.1.png')),
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=> NextHome())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/search.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchPage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 10.1.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CurrentTripsPage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 11.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationPage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 13.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouritePage())
          );
        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage('assets/images/Group 12.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProPage())
          );
        },
      ),
    ],
  ),
),
    );
  }
}

