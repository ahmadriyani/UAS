import 'package:flutter/cupertino.dart';
import 'package:uas_43a87006190319/model/topshow.dart';
import 'package:uas_43a87006190319/widget/list_movie.dart';

import '../api/api.dart';

class ShowsCon extends ChangeNotifier {
  bool isLoading = false;

  ShowsCon(context) {
    getData(context);
  }

  Future getData(context) async {
    Loading();
    top250Movies = await TopShows.getData(context, API.Top250Movies);
    trendingMovies = await TopShows.getData(context, API.MostPopularMovies);
    Loading();
    notifyListeners();
  }

  void Loading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  bool get getLoading => isLoading;
}
