import 'package:flutter/material.dart';

void main() {
 runApp(Amritsar());
}



class Amritsar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          BGFullScreen(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 350.0),

                // title & review
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Glorious',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            'Amritsar',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            '286 reviews',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // botton card
                SizedBox(height: 10.0),

                Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 25.0),
                  height: 250.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      // overview and reviews
                      Row(
                        children: <Widget>[
                          Text(
                            'Overview',
                            style: TextStyle(
                              color: Colors.red.withOpacity(0.6),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'Reviews',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 8.0),

                      // price & duration
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          //tag
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                //tag icon
                                Icon(
                                  Icons.local_offer,
                                  color: Colors.deepPurple,
                                  size: 40,
                                ),

                                SizedBox(width: 8.0),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'PRICE',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.2),
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    SizedBox(height: 3.0),
                                    Text(
                                      'from',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(width: 6.0),
                                // amount

                                Text(
                                  '\u{20B9}5000',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //duration
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                //tag icon
                                Icon(
                                  Icons.schedule,
                                  color: Colors.deepPurple,
                                  size: 40,
                                ),

                                SizedBox(width: 8.0),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'DURATION',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.2),
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    SizedBox(height: 3.0),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          '4',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22.0,
                                          ),
                                        ),

                                        SizedBox(width: 3.0),
                                        // amount

                                        Text(
                                          'Day/s',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // description
                      SizedBox(height: 24.0),

                      Text(
                        'Enjoy the glorious view of amritsar, experience the desi tadka of India.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(36.0),
          ),
        ),
        child: Text(
          'Book Now',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class BGFullScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.app.goo.gl/kKgKiQNGeN736efA8'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
 