import 'package:assignment4/home/widget/new_news_model.dart';
import 'package:assignment4/home/widget/button_display.dart';
import 'package:assignment4/home/widget/regular_news_widget.dart';

import 'package:flutter/material.dart';

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  List<NewNewsDisplayItem> newnewslist = [
    const NewNewsDisplayItem(
      backgroundimage: 'assets/logo/env.jpg',
      btntext: 'Environment',
      userlogo: 'assets/logo/manoj111.jpg',
      username: 'Manoj Majhi',
      discription:
          'Environment is very important for our life. We should take care of it.',
    ),
    const NewNewsDisplayItem(
      backgroundimage: 'assets/logo/news.jpg',
      btntext: 'Breaking News',
      userlogo: 'assets/logo/pp.jpg',
      username: 'Arbendra Raut',
      discription: 'Today\'s Breaking News! My name is Arbendra. How are you?',
    ),
    const NewNewsDisplayItem(
      backgroundimage: 'assets/logo/newsp.jpg',
      btntext: 'Finance',
      userlogo: 'assets/logo/env.jpg',
      username: 'Ramesh Sah',
      discription: 'Nepse index has decreased by 10% today.',
    ),
    const NewNewsDisplayItem(
      backgroundimage: 'assets/logo/env.jpg',
      btntext: 'Environment',
      userlogo: 'assets/logo/manoj111.jpg',
      username: 'Manoj Majhi',
      discription:
          'Environment is very important for our life. We should take care of it.',
    ),
  ];

  List<RegularNewsDispalyItem> regularnewslist = [
    const RegularNewsDispalyItem(
      newsimage: 'assets/logo/env.jpg',
      userlogo: 'assets/logo/manoj111.jpg',
      username: 'Manoj Majhi',
      newsdiscription:
          'Environment is very important for our life. We should take care of it.',
    ),
    const RegularNewsDispalyItem(
      newsimage: 'assets/logo/news.jpg',
      userlogo: 'assets/logo/manoj111.jpg',
      username: 'Ranesh Sah',
      newsdiscription:
          'I am learning flutter. In Broadway Infosis we have flutter course.',
    ),
    const RegularNewsDispalyItem(
      newsimage: 'assets/logo/newsp.jpg',
      userlogo: 'assets/logo/pp.jpg',
      username: 'Arbendra Raut',
      newsdiscription:
          'Life is unquie and beautiful. I love my family. We are all like family.',
    ),
    const RegularNewsDispalyItem(
      newsimage: 'assets/logo/env.jpg',
      userlogo: 'assets/logo/manoj111.jpg',
      username: 'Manoj Majhi',
      newsdiscription:
          'Environment is very important for our life. We should take care of it.',
    ),
  ];

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
                SizedBox(
                  height: 250,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: newnewslist.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/resultPage', arguments: {
                            newnewslist[index]
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(16.0),
                          padding: const EdgeInsets.all(8.0),
                          height: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              image: DecorationImage(
                                image: AssetImage(
                                  newnewslist[index].backgroundimage ?? '',
                                ),
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
                                child: Text(
                                  newnewslist[index].btntext,
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: 300,
                                child: Text(
                                  newnewslist[index].discription,
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      newnewslist[index].userlogo ?? '',
                                      height: 30,
                                      width: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    newnewslist[index].username,
                                    style: const TextStyle(
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 1);
                    },
                  ),
                ),
                const SizedBox(height: 10),
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
                const SizedBox(height: 5),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                          height: 350,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: regularnewslist.length,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 85,
                                padding: const EdgeInsets.all(8.0),
                                margin: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Row(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      regularnewslist[index].newsimage ?? '',
                                      height: 70,
                                      width: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  SizedBox(
                                    width: 240,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            ClipOval(
                                              child: Image.asset(
                                                regularnewslist[index]
                                                        .userlogo ??
                                                    '',
                                                height: 20,
                                                width: 20,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              regularnewslist[index].username,
                                              style: const TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          regularnewslist[index]
                                              .newsdiscription,
                                          style: const TextStyle(
                                              fontSize: 8.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.bookmark,
                                    color: Color.fromARGB(255, 193, 192, 192),
                                    size: 20.0,
                                  ),
                                ]),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(
                                height: 1,
                              );
                            },
                          )),
                    ],
                  ),
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
