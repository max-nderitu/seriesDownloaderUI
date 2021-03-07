import 'package:series_downloader/data/data.dart';

List<SeriesRecord> fetchSeriesRecords() {
  List<SeriesRecord> seriesRecords = List.generate(10, (int index) {
    return SeriesRecord("Series $index", "Series Desc $index", index);
  });

  return seriesRecords;
}
