// ignore_for_file: prefer_const_constructors

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:page_transition/page_transition.dart';

import 'detail_notifikasi.dart';

import 'fade_animation.dart';
import 'user_model.dart';

void main() {
  runApp(const Notificationn());
}

class BanyakNotif {
  static int number = 2;
}

class Notificationn extends StatelessWidget {
  const Notificationn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserScreen();
  }
}

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<Users> _foundedUsers = [];

  @override
  void initState() {
    super.initState();

    _foundedUsers = listOfUsers;
  }

  onSearch(String search) {
    setState(() {
      _foundedUsers = listOfUsers
          .where((user) => user.name.toLowerCase().contains(search))
          .toList();
    });
  }

  removeUser(int index) {
    setState(() {
      _foundedUsers.removeAt(index);
    });
  }

/////////////////////////////////////
// @CodeWithFlexz on Instagram
//
// AmirBayat0 on Github
// Programming with Flexz on Youtube
/////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            // appBar: AppBar(
            //   elevation: 0,
            //   backgroundColor: Colors.transparent,
            //   title: SizedBox(
            //     height: 40,
            //     child: TextField(
            //       onChanged: (val) => onSearch(val),
            //       decoration: InputDecoration(
            //           filled: true,
            //           fillColor: Color.fromARGB(255, 228, 228, 228),
            //           contentPadding: EdgeInsets.all(10),
            //           prefixIcon: Icon(
            //             Icons.search,
            //             color: Color.fromARGB(255, 146, 146, 146),
            //           ),
            //           border: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(15),
            //               borderSide: BorderSide.none),
            //           hintText: "Search",
            //           hintStyle: TextStyle(
            //               fontSize: 14,
            //               color: Color.fromARGB(255, 131, 131, 131))),
            //     ),
            //   ),
            // ),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: AppBar(
                shadowColor: Color(0xFFC4C4C4).withOpacity(0.24),
                elevation: 2,
                backgroundColor: Colors.white,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                  color: Colors.black87,
                ),
                centerTitle: true,
                title: Text(
                  'Notifikasi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF293241),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
            ),
            body: Container(
              child: _foundedUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundedUsers.length,
                      itemBuilder: (ctx, index) {
                        return FadeAnimation(
                          delay: 0.8 * index,
                          child: Slidable(
                            child: userComponent(user: _foundedUsers[index]),
                            actionPane: SlidableStrechActionPane(),
                            actionExtentRatio: 0.20,
                            // actions: [
                            //   IconSlideAction(
                            //     caption: 'Archive',
                            //     color: Color.fromARGB(255, 236, 236, 236),
                            //     iconWidget: Icon(
                            //       Icons.archive,
                            //       color: Colors.black,
                            //     ),
                            //     onTap: () => print("Archive"),
                            //   ),
                            //   IconSlideAction(
                            //     caption: 'Share',
                            //     color: Color.fromARGB(255, 236, 236, 236),
                            //     iconWidget: Icon(
                            //       Icons.share,
                            //       color: Colors.black,
                            //     ),
                            //     onTap: () => print("Share"),
                            //   ),
                            // ],
                            secondaryActions: [
                              IconSlideAction(
                                caption: 'Remove',
                                color: Colors.red,
                                iconWidget: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                                onTap: () => removeUser(index),
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        "No notif found",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
            )),
      ),
    );
  }

// User Components
  userComponent({required Users user}) {
    return InkWell(
      onTap: () {
        setState(() {
          user.isRead = true;
          BanyakNotif.number--;
          Navigator.push(
            context,
            PageTransition(
                child: DetailNotifikasi(), type: PageTransitionType.fade),
          );
        });
      },
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: user.isRead ? Colors.white : Color(0xFFF0F7FB),
            border:
                Border(bottom: BorderSide(width: 1, color: Color(0xFFE5E6E8)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              SizedBox(
                  width: 40,
                  height: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      user.imageAd,
                      fit: BoxFit.cover,
                    ),
                  )),
              SizedBox(width: 12),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(user.name,
                    style: TextStyle(
                      color: Color.fromARGB(255, 15, 15, 15),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    )),
                SizedBox(
                  height: 5,
                ),
                Text(
                  user.userName,
                  style: TextStyle(
                      color: Color.fromARGB(255, 90, 90, 90),
                      fontFamily: 'Nunito',
                      fontSize: 12),
                ),
              ])
            ]),
            Text(
              user.time,
              style: TextStyle(
                  fontFamily: 'Nunito', fontSize: 12, color: Color(0xFF9FA3A9)),
            )
          ],
        ),
      ),
    );
  }
}
