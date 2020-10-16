import 'package:fiscaliza_ja/Models/Subsecretary.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Widgets/Image/ImageWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ElementSubscretary extends StatelessWidget {
  final Subsecretary subsecretary;

  ElementSubscretary({
    @required this.subsecretary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: GenericPattern.CARD_BORDER_RADIUS,
        elevation: 3,
        child: InkWell(
          onTap: () {
            print(
              'Ao criar verificar se já existe com uma modal legal'
            );
          },
          borderRadius: BorderRadius.circular(
            GenericPattern.BORDER_RADIUS,
          ),
          child: Container(
            width: 230,
            padding: EdgeInsets.all(
              15.0,
            ),
            child: Column(
              children: [
                Center(
                  child: Container(
                    child: ImageWidget(
                      url: this.subsecretary.imagem,
                      height: 130,
                      width: 130,
                      borderRadius: 100,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    this.subsecretary.nome,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Divider(
                  height: 30,
                ),
                Center(
                  child: RatingBar(
                    onRatingUpdate: null,
                    initialRating: 4,
                    itemCount: 5,
                    itemSize: 20,
                    itemBuilder: (BuildContext context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
