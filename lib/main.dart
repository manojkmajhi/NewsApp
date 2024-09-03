import 'package:assignment4/widget/button_display.dart';
// import 'package:assignment4/widget/new_news.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewsApp(),
    );
  }
}

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  //List<NewNewsDisplayItem> newslist = [
  // NewNewsDisplayItem( biglogo: "assets/logo/manoj.jpg", smalllogo: "assets/logo/manoj.jpg", smalllabel: "Manoj Kumar Majhi", biglabel: "Manoj Kumar Majhi is a student of BCA in Kathford College."),
  //];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'News App',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 9, 170, 14),
            ),
          ),
          actions: const [
            Icon(Icons.notifications),
            SizedBox(width: 20),
            Icon(Icons.search),
            SizedBox(width: 30),
          ],
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  height: 230,
                  width: double.infinity,
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      image: const DecorationImage(
                        image: AssetImage('assets/logo/env.jpg'),
                        fit: BoxFit.cover,
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 72, 224, 79),
                        ),
                        child: const Text(
                          'Environment',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 4, 126, 8)),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'I am learning Flutter so it is awesome in all its glory! Check it out!',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/logo/manoj111.jpg',
                              height: 30,
                              width: 30,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Manoj K. Majhi',
                            style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      ButtonDisplayItem(
                        hotnews: "Hot News",
                      ),
                      ButtonDisplayItem(
                        hotnews: "Sports",
                      ),
                      ButtonDisplayItem(
                        hotnews: "Education",
                      ),
                      ButtonDisplayItem(
                        hotnews: "Environment",
                      ),
                      ButtonDisplayItem(
                        hotnews: "Entertainment",
                      ),
                      ButtonDisplayItem(
                        hotnews: "Financial",
                      ),
                      ButtonDisplayItem(
                        hotnews: "Politics",
                      ),
                    ]),
                  ),
                ),

                // New News Display Container starts here
                // const SizedBox(height: 5),
                // Container(
                //   height: 80,
                //   width: double.infinity,
                //   padding: const EdgeInsets.all(8.0),
                //   margin: const EdgeInsets.all(16.0),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(16.0),
                //     color: const Color.fromARGB(115, 73, 203, 66),
                //   ),
                //   child: Row(children: [

                //      Expanded(
                //     child: ListView.builder(
                //       shrinkWrap: true,
                //       scrollDirection: Axis.vertical,
                //       itemCount: const NewNewsDisplayItem().length,
                //       itemBuilder: (context, index) => newslist(
                //         : NewNewsDisplayItem()[index].time,

                //       ),
                //     ),
                //   ),

                //   ]),
                // ),
                const SizedBox(height: 5),

                Container(
                  height: 80,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: const Color.fromARGB(115, 73, 203, 66),
                  ),
                  child: Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/logo/pp.jpg',
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      width: 240,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  'assets/logo/ToolKit_logo.png',
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'ToolKit Nepal',
                                style: TextStyle(
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Manoj Kumar Majhi is a student of BCA in Kathford College. He is a good boy. He is a good boy. He is a good boy. He is a good boy. He is a good boy. ',
                            style: TextStyle(
                                fontSize: 8.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.bookmark,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ]),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 80,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: const Color.fromARGB(115, 73, 203, 66),
                  ),
                  child: Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/logo/ToolKit_logo.png',
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      width: 240,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  'assets/logo/ToolKit_logo.png',
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'ToolKit Nepal',
                                style: TextStyle(
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Manoj Kumar Majhi is a student of BCA in Kathford College. He is a good boy. He is a good boy. He is a good boy. He is a good boy. He is a good boy. ',
                            style: TextStyle(
                                fontSize: 8.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.bookmark,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ]),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 80,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: const Color.fromARGB(115, 73, 203, 66),
                  ),
                  child: Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/logo/manoj111.jpg',
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      width: 240,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  'assets/logo/ToolKit_logo.png',
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'ToolKit Nepal',
                                style: TextStyle(
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Manoj Kumar Majhi is a student of BCA in Kathford College. He is a good boy. He is a good boy. He is a good boy. He is a good boy. He is a good boy. ',
                            style: TextStyle(
                                fontSize: 8.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const InkWell(
                      child: Icon(
                        Icons.bookmark,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
