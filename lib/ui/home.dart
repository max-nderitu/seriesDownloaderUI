import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:series_downloader/data/data.dart';
import 'package:series_downloader/data/records.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<SeriesRecord> _seriesList = fetchSeriesRecords();
  final TextStyle _biggerFont = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    // print("Fetched series are: " + _seriesList.toString());

    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.topLeft,
          child: Text('Series Downloader'),
        ),
      ),
      body: Center(
        child: _buildGridView(),
      ),
    );
  }

  Widget _buildGridView() {
    return GridView.extent(
      maxCrossAxisExtent: 250,
      padding: EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildSeriesList(),
    );
  }

  List<Widget> _buildSeriesList() {
    // Generate views
    return List.generate(
        _seriesList.length, (index) => _buildRow(_seriesList[index]));
  }

  Widget _buildRow(SeriesRecord seriesRecord) {
    return ListTile(
      title: Text(
        seriesRecord.seriesName,
        style: _biggerFont,
      ),
      onTap: () {
        Navigator.of(context).push();
      },
    );
  }
}
