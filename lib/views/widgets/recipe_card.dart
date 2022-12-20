import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String thumbnailUrl;
  RecipeCard({
    this.title,
    this.thumbnailUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(1),
                    width: 110,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Text(
                                title,
                                style: const TextStyle(
                                  fontSize: 16, color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                textAlign: TextAlign.center,
                              ),
                              width: 100,
                              padding: EdgeInsets.only(bottom: 10),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                              ],
                            ),
                          ],
                        )

                      ],
                    ),
                  )
                ],
              ), Column(
                children: [
                  SizedBox(
                    width: 250,
                    height: 180,
                    child: Image.network(thumbnailUrl, alignment: Alignment.topCenter, fit: BoxFit.fill),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}