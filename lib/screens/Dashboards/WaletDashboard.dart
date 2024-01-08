import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/widget/my_text.dart';

class WaletDashboard extends StatefulWidget {
  const WaletDashboard({Key? key}) : super(key: key);

  @override
  State<WaletDashboard> createState() => _WaletDashboardState();
}

class _WaletDashboardState extends State<WaletDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text(
                "Walet",
                style: TextStyle(color: Colors.black),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.refresh, color: Colors.black),
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.lightBlue[500],
                    elevation: 2,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                "Personal Wallet",
                                style: MyText.body1(context)!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Container(
                          height: 10,
                        ),
                        Text(
                          "ETH: Balance",
                          style: MyText.body1(context)!.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 10,
                        ),
                        Text("50,430,000",
                            style: MyText.title(context)!.copyWith(
                              color: Colors.white,
                            )),
                        Container(
                          height: 10,
                        ),
                        Text("\$ 1,000",
                            style: MyText.body1(context)!.copyWith(
                              color: Colors.white,
                            )),
                        Container(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          color: Colors.white,
                          elevation: 2,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: MyColors.grey_10,
                                      child: Icon(Icons.arrow_upward),
                                    ),
                                    Container(
                                      width: 10,
                                    ),
                                    Text(
                                      'Send',
                                      style: MyText.body1(context)!
                                          .copyWith(color: Colors.blue),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 5,
                      ),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          color: Colors.white,
                          elevation: 2,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: MyColors.grey_10,
                                      child: Icon(Icons.arrow_downward),
                                    ),
                                    Container(
                                      width: 10,
                                    ),
                                    Text(
                                      'Receive',
                                      style: MyText.body1(context)!
                                          .copyWith(color: Colors.blue),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Text('Today',
                      style: MyText.medium(context)!.copyWith(
                        color: Colors.grey,
                      )),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          color: Colors.white,
                          elevation: 2,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: MyColors.grey_10,
                                      child: Icon(Icons.arrow_downward),
                                    ),
                                    Container(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Recieve',
                                          style: MyText.body1(context)!
                                              .copyWith(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: 5,
                                        ),
                                        Text('11 Dec 2023',
                                            style:
                                                MyText.body1(context)!.copyWith(
                                              color: Colors.grey,
                                            )),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '1.639 ETH',
                                          style: MyText.body1(context)!
                                              .copyWith(
                                                  color: Colors.blueAccent),
                                        ),
                                        Container(height: 5),
                                        Text(
                                          '\$ 100',
                                          style: MyText.body1(context)!
                                              .copyWith(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          color: Colors.white,
                          elevation: 2,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: MyColors.grey_10,
                                      child: Icon(Icons.arrow_upward),
                                    ),
                                    Container(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Send',
                                          style: MyText.body1(context)!
                                              .copyWith(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: 5,
                                        ),
                                        Text('11 Dec 2023',
                                            style:
                                                MyText.body1(context)!.copyWith(
                                              color: Colors.grey,
                                            )),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '1.639 ETH',
                                          style: MyText.body1(context)!
                                              .copyWith(
                                                  color: Colors.blueAccent),
                                        ),
                                        Container(height: 5),
                                        Text(
                                          '\$ 98',
                                          style: MyText.body1(context)!
                                              .copyWith(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          color: Colors.white,
                          elevation: 2,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: MyColors.grey_10,
                                      child: Icon(Icons.width_wide_sharp),
                                    ),
                                    Container(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Withdraw',
                                          style: MyText.body1(context)!
                                              .copyWith(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: 5,
                                        ),
                                        Text('11 Dec 2023',
                                            style:
                                                MyText.body1(context)!.copyWith(
                                              color: Colors.grey,
                                            )),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '40.4 ETH',
                                          style: MyText.body1(context)!
                                              .copyWith(
                                                  color: Colors.blueAccent),
                                        ),
                                        Container(height: 5),
                                        Text(
                                          '\$ 60',
                                          style: MyText.body1(context)!
                                              .copyWith(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.grey[400],
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: 'Send'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: 'Walet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
      ),
    );
  }
}
