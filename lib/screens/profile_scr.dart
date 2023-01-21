import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas_43a87006190319/main.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(MyApp()),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 30.0,
                    ),
                  ),
                  const Text(
                    "Ahmad Riyani",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    width: 33,
                    height: 33,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/gambar.jpg"),
              radius: 70.0,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "@Riyan_Ajah",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            const Text(
              "43A87006190319",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const Text(
              "Teknik Informatika",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const Text(
              "S1/TI/7/A/P",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    const Text(
                      "119",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                          color: Colors.black.withOpacity(1),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "199.8k",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(
                          color: Colors.black.withOpacity(1),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "1.9M",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Like",
                      style: TextStyle(
                          color: Colors.black.withOpacity(1),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (() {}),
                  child: Text(
                    "Follow",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0, 55.0),
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  width: 15,
                ),
                OutlinedButton(
                  onPressed: (() {}),
                  child: Icon(Icons.mail_outline_outlined),
                  style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.black12,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      fixedSize: const Size(50, 60)),
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
