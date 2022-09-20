import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:memo/models/memo.dart';
import 'package:memo/screens/add_edit_memo_page.dart';
import 'package:memo/screens/memo_detail_page.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key, required this.title}) : super(key: key);
  static const id = 'top_page';
  final String title;
  @override
  State<TopPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TopPage> {
  List<Memo> memoList = [];

 /* Future<void> fetchMemo() async {
    final memoCollection =
        await FirebaseFirestore.instance.collection('memoTest').get();
    final docs = memoCollection.docs;
    for (var doc in docs) {
      Memo fetchMemo = Memo(
        title: doc.data()['title'],
        detail: doc.data()['detail'],
        createdated: doc.data()['createtime'],
      );

      memoList.add(fetchMemo);

    }
    setState(() {});
  }*/

  @override
  void initState() {
    super.initState();
    fetchMemo();
  }
  final memoCollection = FirebaseFirestore.instance.collection('memoTest');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder<Memo>(

        stream: memoCollection =FirebaseFirestore.instance.collection('memoTest');
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: memoList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(memoList[index].title),
                onTap: () {
                  // Navigator.pushNamed(context, MemoDetailPage.id);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MemoDetailPage(memoList[index]),
                    ),
                  );
                },
              );
            },
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  AddEditMemoPage(),

            ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
