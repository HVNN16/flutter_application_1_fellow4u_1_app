import 'package:flutter/material.dart';
import 'search.dart';
import 'Favourite.dart';
import 'profi.dart';
import 'mytrip.dart';
import 'home.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final Map<String, List<String>> chatMessages = {
    'Tuan Tran': [
      "It's a beautiful place.",
      "I really enjoyed the scenery.",
      "Let's plan another trip!"
    ],
    'Emmy': [
      "We can start at 8am.",
      "Don't forget to bring your camera.",
      "It's going to be a great day!"
    ],
    'Khai Ho': [
      "See you tomorrow.",
      "What time should we meet?",
      "Can't wait to catch up!"
    ],
  };

  String? selectedChatName;
  List<String>? selectedChatMessages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedChatName == null ? _buildChatList() : _buildChatInterface(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildChatList() {
    return ListView(
      children: [
        _buildHeader(),
        SizedBox(height: 10),
        _buildSearchField(),
        SizedBox(height: 10),
        _buildChatItem('Tuan Tran', "It's a beautiful place", '10:30 AM', 'assets/images/tuan.png'),
        Divider(),
        _buildChatItem('Emmy', "We can start at 8am", '10:30 AM', 'assets/images/emmy.png', unreadMessages: 2),
        Divider(),
        _buildChatItem('Khai Ho', "See you tomorrow", '11:30 AM', 'assets/images/khaiho.png'),
        Divider(),
      ],
    );
  }

  Widget _buildChatInterface() {
    return Column(
      children: [
        AppBar(
          title: Text(selectedChatName ?? ''),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              setState(() {
                selectedChatName = null;
                selectedChatMessages = null;
              });
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            itemCount: selectedChatMessages!.length,
            itemBuilder: (context, index) {
              bool isMe = index % 2 == 0; // Simulate alternating sender
              return _buildChatBubble(selectedChatMessages![index], isMe);
            },
          ),
        ),
        _buildMessageInput(),
      ],
    );
  }

  Widget _buildChatBubble(String message, bool isMe) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: isMe ? Colors.blue[100] : Colors.grey[200],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: isMe ? Radius.circular(15) : Radius.circular(0),
            bottomRight: isMe ? Radius.circular(0) : Radius.circular(15),
          ),
        ),
        child: Column(
          crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(message, style: TextStyle(fontSize: 16)),
            SizedBox(height: 5),
            Text('10:30 AM', style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Type a message...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 10),
              ),
            ),
          ),
          SizedBox(width: 8),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // Handle send message action
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _buildBackgroundImage('assets/images/Mask Group.png', 200),
        Positioned(
          top: 20,
          left: 16,
          child: Text(
            "Chats",
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

  Widget _buildSearchField() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 4)),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          hintText: "Search Chat <3",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 0),
        ),
      ),
    );
  }

  Widget _buildChatItem(String name, String message, String time, String avatarUrl, {int unreadMessages = 0}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(avatarUrl),
        radius: 25,
      ),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(message),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(time, style: TextStyle(color: Colors.grey, fontSize: 12)),
          if (unreadMessages > 0)
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text(
                '$unreadMessages',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
        ],
      ),
      onTap: () {
        setState(() {
          selectedChatName = name;
          selectedChatMessages = chatMessages[name];
        });
      },
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: ImageIcon(AssetImage('assets/images/Group 9.1.png')),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NextHome()),
              );
            },
          ),
          IconButton(
            icon: ImageIcon(AssetImage('assets/images/search.png')),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            },
          ),
          IconButton(
            icon: ImageIcon(AssetImage('assets/images/Group 10.1.png')),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CurrentTripsPage()));
            },
          ),
          IconButton(
            icon: ImageIcon(AssetImage('assets/images/Group 11.png')),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage()));
            },
          ),
          IconButton(
            icon: ImageIcon(AssetImage('assets/images/Group 13.png')),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavouritePage()));
            },
          ),
          IconButton(
            icon: ImageIcon(AssetImage('assets/images/Group 12.png')),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProPage()));
            },
          ),
        ],
      ),
    );
  }
}
