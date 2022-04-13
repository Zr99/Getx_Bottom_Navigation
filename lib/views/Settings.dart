import 'package:counter_app/views/Fourthpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 30,
            left: 30,
          ),
          alignment: AlignmentDirectional.topStart,
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(
                bottom: 8,
              ),
              child: Text('Settings',
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            subtitle: Text('Signed in as IANMER'),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Divider(
          thickness: 0.5,
        ),
        Container(
          child: Card(
            elevation: 0.1,
            child: Column(
              children: [
                InkWell(
                  child: Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                'Notifications',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Expanded(
                          child: Container(
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    //add data constructor NotificationPage(name: )
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (BuildContext context) => NotificationPage()));
                    Get.to(() => Fourthpage());
                  },
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 0.5,
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: TextButton(
            onPressed: () {},
            child: Text(
              'LOG OUT',
              style: TextStyle(fontSize: 20),
            ),
            style:
                TextButton.styleFrom(primary: Color.fromRGBO(36, 54, 101, 1.0),),
          ),
        )
      ],
    );
    ;
  }
}
