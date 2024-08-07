import 'package:flutter/material.dart';
import 'sample_info_list.dart';

class SampleListView extends StatelessWidget {
  const SampleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: sampleInfoList.length,
      itemBuilder: (context, index) {
        final sampleInfo = sampleInfoList[index];
        return Card(
          child: ListTile(
            title: Text(sampleInfo.title),
            subtitle: Text(sampleInfo.description),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sampleInfo.getSample()),
              );
            },
          ),
        );
      },
    );
  }
}
