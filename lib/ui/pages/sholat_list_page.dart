import 'package:flutter/material.dart';
import 'package:sholat_yuk/models/sholat_model.dart';
import 'package:sholat_yuk/ui/pages/sholat_detail_page.dart';

class SholatList extends StatefulWidget {
  const SholatList({Key? key}) : super(key: key);

  @override
  State<SholatList> createState() => _SholatListState();
}

class _SholatListState extends State<SholatList> {
  List<bool> isDone = [
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: sholatList.length,
          itemBuilder: (context, index) {
            final Sholat sholat = sholatList[index];
            return GestureDetector(
              onTap: () async {
                final result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return SholatDetailPage(
                    sholat: sholat,
                  );
                }));
                setState(() {
                  isDone[index] = result;
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12,
                      ),
                      width: 100,
                      child: Center(child: Text(sholat.name)),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sholat ${sholat.name}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Jam: ${sholat.time}',
                            style: const TextStyle(fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                    ),
                    isDone[index]
                        ? const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                          )
                        : TextButton(
                            onPressed: () {
                              setState(() {
                                isDone[index] = true;
                              });
                            },
                            child: const Text('Tandai')),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
