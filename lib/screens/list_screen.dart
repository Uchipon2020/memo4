import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:memo/models/memo.dart';
import 'package:memo/screens/add_edit_memo_screen.dart';

class ListScreen extends StatefulWidget {
  static String id = 'list_screen';
  const ListScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ListScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ListScreen> {
  List<Memos> memosList = [];
  final memoCollection = FirebaseFirestore.instance.collection('memoTest');

  Future<void> deleteMemo(String id) async {
    final doc = FirebaseFirestore.instance.collection('memoTest').doc(id);
    await doc.delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: memoCollection.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (!snapshot.hasData) {
            return const Center(
              child: Text('データがありません'),
            );
          }
          final docs = snapshot.data!.docs;
          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> data =
                  docs[index].data() as Map<String, dynamic>;

              final Memos fetchMemo = Memos(
                  id: docs[index].id,
                  title: data['title'],
                  height : data['height'],
                  weight: data['weight'],
                  createdated: data['createdated'],
                  upDated: data['updatedDate']);

              //card area
              return Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text(fetchMemo.title),
                      subtitle: Text(fetchMemo.upDated.toString()),
                      trailing: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return SafeArea(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      onTap: () {
                                        Navigator.pop(context);
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => AddEditMemoScreen(currentMemo:fetchMemo,),),);
                                      },
                                      leading: const Icon(Icons.edit),
                                      title: const Text('修正'),
                                    ),
                                    ListTile(
                                      onTap: () {
                                        Navigator.pop(context);
                                        deleteMemo(fetchMemo.id);
                                      },
                                      leading: const Icon(Icons.delete),
                                      title: const Text('削除'),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.edit),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddEditMemoScreen()),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => AddEditMemoScreen(),
            ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
