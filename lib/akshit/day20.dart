import 'package:flutter/material.dart';
import 'package:flutter_all_widget/akshit/cutome_widget/CustomElevatedButton.dart';
import 'package:flutter_all_widget/akshit/cutome_widget/CustomHorizontalList.dart';
import 'package:flutter_all_widget/akshit/cutome_widget/profile_details.dart';

class Day20 extends StatelessWidget {
  const Day20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black),
        centerTitle: false,
        title: Text(
          'Wanda.s',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              //color: Colors.red,
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 170,
                    // color: Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ68xCJyjzwUC0J89fXPOkmIvW09vTZjHRkVg&s',
                          ),
                          radius: 60,
                        ),
                        SizedBox(height: 10),
                        Text('Wanda.s ', style: TextStyle(fontSize: 20)),
                        Text(
                          'Photographer/NewYork ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.orange
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomTextColumn(text1: '150', text2: 'Post'),
                                SizedBox(width: 10),
                                CustomTextColumn(
                                  text1: '5k',
                                  text2: 'Follower',
                                ),
                                SizedBox(width: 10),
                                CustomTextColumn(
                                  text1: '100',
                                  text2: 'Following',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 150, // desired width
                                  height: 40,
                                  child: CustomElevatedButton(
                                    text: 'Following',
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  height: 50,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                      width: 3,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.arrow_downward),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          CustomHorizontalList(),

            Expanded(child: Container(
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3
              ),
                  itemBuilder: (context, index){
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200
                  ),
                  margin: EdgeInsets.all(5),
                  height:150 ,
                  width:150,
                );
                  }),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
