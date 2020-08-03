import 'package:exercises_app/constant.dart';
import 'package:exercises_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class MaditationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                  image: AssetImage('assets/images/meditation_bg.png'),
                  fit: BoxFit.fitWidth),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * .05,
                  ),
                  Text(
                    "Maditation",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "3-10 MIN course",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: size.width * .7,
                    child: Text(
                      "Living happier and healther by learning the findamantial of maditation and mindfulness",
                    ),
                  ),
                  SizedBox(
                    width: size.width * .5,
                    child: Searchbar(),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        Playmusic(),
                        Playmusic(),
                        Playmusic(),
                        Playmusic(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Playmusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Wrap(
      children: [
        Container(
          width: size.width * .5,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                height: 42,
                width: 43,
                decoration: BoxDecoration(
                  color: kBlueColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
