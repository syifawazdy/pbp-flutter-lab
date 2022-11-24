import 'package:counter_7/model/fetch.dart';
import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/watchlist/detail.dart';
import 'package:flutter/material.dart';

import '../hamburger.dart';

class WatchListCard extends StatelessWidget {
  const WatchListCard({super.key, required this.data});

  final WatchList data;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(
          color: data.fields.watched ? Colors.green : Colors.red,
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WatchDetailPage(watchData: data),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(data.fields.title),
        ),
      ),
    );
  }
}

class WatchListingPage extends StatefulWidget {
  const WatchListingPage({super.key});

  @override
  State<WatchListingPage> createState() => _WatchListingPageState();
}

class _WatchListingPageState extends State<WatchListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: const LabDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<List<WatchList>>(
          future: fetchWatchList(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final data = snapshot.data!;
              return ListView.separated(
                itemBuilder: ((context, index) =>
                    WatchListCard(data: data[index])),
                separatorBuilder: ((context, index) =>
                    const SizedBox(height: 5)),
                itemCount: data.length,
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}