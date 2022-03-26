import 'package:app/compenents/article_list.dart';
import 'package:app/data/article.dart';
import 'package:app/screens/articles_details.dart';
import 'package:flutter/material.dart';

import '../compenents/tab.dart';

// ignore: must_be_immutable
class ArticleListView extends StatelessWidget {
  ArticleListView({Key? key}) : super(key: key);

  List<Article> articles = [
    const Article(
        title: "Smart Cars",
        imageUrl:
            'https://sscsalex.org/static/0d35d923e6ed1f15aa24de4f36c4818a/f211f/5eb8b1b08f25030017183661.jpg',
        date: "12/12/2012"),
    const Article(
        title: "Smart Cars",
        imageUrl:
            'https://sscsalex.org/static/0d35d923e6ed1f15aa24de4f36c4818a/f211f/5eb8b1b08f25030017183661.jpg',
        date: "12/12/2012"),
    const Article(
        title: "Smart Cars",
        imageUrl:
            'https://sscsalex.org/static/0d35d923e6ed1f15aa24de4f36c4818a/f211f/5eb8b1b08f25030017183661.jpg',
        date: "12/12/2012"),
    const Article(
        title: "Smart Cars",
        imageUrl:
            'https://sscsalex.org/static/0d35d923e6ed1f15aa24de4f36c4818a/f211f/5eb8b1b08f25030017183661.jpg',
        date: "12/12/2012"),
    const Article(
        title: "Smart Cars",
        imageUrl:
            'https://sscsalex.org/static/0d35d923e6ed1f15aa24de4f36c4818a/f211f/5eb8b1b08f25030017183661.jpg',
        date: "12/12/2012")
  ];
  TabBar get _tabBar => const TabBar(
        indicatorColor: Color(0xFFBA0C2F),
        tabs: [
          CategoryTab(category: "Category 1"),
          CategoryTab(category: "Category 2"),
          CategoryTab(category: "Category 3"),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: ColoredBox(
              color: Colors.black,
              child: _tabBar,
            ),
          ),
          elevation: 0,
          leadingWidth: 0,
          centerTitle: false,
          backgroundColor: Colors.black,
          title: Container(
            padding: const EdgeInsets.only(top: 15.0),
            child: const Text(
              "Articles",
              style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFFBA0C2F),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: TabBarView(children: [
          IeeeListView(
            nextSceen: ArticleDetails(),
            items: articles,
          ),
          IeeeListView(
            nextSceen: ArticleDetails(),
            items: articles,
          ),
          IeeeListView(
            nextSceen: ArticleDetails(),
            items: articles,
          ),
        ]),
      ),
    );
  }
}
// 
// 
// 
// 
// 
// 
// 
// DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           bottom: const TabBar(indicatorColor: Color(0xFFBA0C2F), tabs: [
//             CategoryTab(category: "Category 1"),
//             CategoryTab(category: "Category 2"),
//             CategoryTab(category: "Category 3"),
//           ]),
//           elevation: 0,
//           leadingWidth: 0,
//           centerTitle: false,
//           backgroundColor: Colors.white,
//           title: Container(
//             padding: const EdgeInsets.only(top: 15.0),
//             child: const Text(
//               "Articles",
//               style: TextStyle(
//                   fontSize: 28,
//                   color: Color(0xFFBA0C2F),
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//         ),
//         body: const TabBarView(children: [
//           ArticleListView(),
//           ArticleListView(),
//           ArticleListView(),
//         ]),
//       ),
//     );
//   }
// }
  