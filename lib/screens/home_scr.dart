import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uas_43a87006190319/api/api_key.dart';
import 'package:uas_43a87006190319/controller/show_controller.dart';
import 'package:uas_43a87006190319/screens/detail_scr.dart';
import 'package:uas_43a87006190319/screens/more_scr.dart';
import 'package:uas_43a87006190319/widget/appbar.dart';
import 'package:uas_43a87006190319/widget/colors.dart';
import 'package:uas_43a87006190319/widget/drawer.dart';
import 'package:uas_43a87006190319/widget/list_movie.dart';
import 'package:uas_43a87006190319/widget/loading_widget.dart';

class HomePage extends StatelessWidget {
  Widget ShowsSliderWidget(context, List<dynamic> myList) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 230,
      child: Row(
        children: [
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: myList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(() => Details(),
                        arguments: myList[index],
                        duration: Duration(milliseconds: 700),
                        transition: Transition.leftToRightWithFade);
                  },
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(myList[index].Image),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Container(
                            width: 55,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: black54),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: yellow,
                                  size: 19,
                                ),
                                myList[index].IMDbRating.toString().isNotEmpty
                                    ? Text(
                                        myList[index].IMDbRating,
                                        style: GoogleFonts.jockeyOne(
                                          color: white,
                                          fontSize: 14,
                                        ),
                                      )
                                    : Text(
                                        'TBA',
                                        style: GoogleFonts.jockeyOne(
                                          color: white,
                                          fontSize: 14,
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: 150,
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: black54),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      myList[index].Title.toString().length > 28
                                          ? myList[index]
                                                  .Title
                                                  .toString()
                                                  .substring(0, 28) +
                                              '... (${myList[index].Year})'
                                          : myList[index].Title.toString() +
                                              ' (${myList[index].Year})',
                                      style: GoogleFonts.jockeyOne(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 15),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ShowsCon>(
      create: (context) => ShowsCon(context),
      builder: (context, child) {
        var mainProv = Provider.of<ShowsCon>(context);
        return Scaffold(
          drawer: myDrawer,
          appBar: myAppbar,
          backgroundColor: greyBG,
          body: mainProv.getLoading
              ? Center(child: LoadingWidget())
              : ListView(
                  children: [
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular Movies',
                            style: GoogleFonts.jockeyOne(
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                                color: white),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(() => More(),
                                  arguments: trendingMovies,
                                  duration: Duration(milliseconds: 700),
                                  transition: Transition.leftToRightWithFade);
                            },
                            child: Text(seeAll),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    ShowsSliderWidget(context, trendingMovies),
                    SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top Movies',
                            style: GoogleFonts.jockeyOne(
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                                color: white),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(() => More(),
                                  arguments: top250Movies,
                                  duration: Duration(milliseconds: 700),
                                  transition: Transition.leftToRightWithFade);
                            },
                            child: Text(seeAll),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    ShowsSliderWidget(context, top250Movies),
                  ],
                ),
        );
      },
    );
  }
}
