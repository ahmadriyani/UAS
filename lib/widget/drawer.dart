import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_43a87006190319/screens/favorite_scr.dart';
import 'package:uas_43a87006190319/screens/profile_scr.dart';
import 'package:uas_43a87006190319/widget/colors.dart';

Drawer myDrawer = Drawer(
  child: Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Colors.deepPurple, Colors.pink],
      ),
    ),
    child: Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 120,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 28),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: (() async {
                      await Get.to(() => const ProfileScreen());
                    }),
                    icon: const Icon(
                      CupertinoIcons.person_crop_circle,
                      color: Colors.white,
                      size: 55,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text(
                      "Ahmad Riyani",
                      style: GoogleFonts.jockeyOne(
                        color: white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.white,
          endIndent: 15,
          indent: 15,
        ),
        ListTile(
          leading: const Icon(
            CupertinoIcons.heart_fill,
            color: Colors.white,
            size: 30,
          ),
          title: Text(
            'Favourites',
            style: GoogleFonts.jockeyOne(
              color: white,
              fontSize: 18,
            ),
          ),
          onTap: () async {
            await Get.to(
              () => Favorites(),
              duration: const Duration(milliseconds: 850),
              transition: Transition.leftToRightWithFade,
            );
          },
        ),
        ListTile(
          tileColor: Colors.white.withOpacity(0.2),
          leading: const Icon(
            CupertinoIcons.bitcoin,
            color: Colors.white,
            size: 30,
          ),
          title: Text(
            'Todo',
            style: GoogleFonts.jockeyOne(
              color: white,
              fontSize: 18,
            ),
          ),
          onTap: () {},
        ),
        Spacer(),
      ],
    ),
  ),
);
