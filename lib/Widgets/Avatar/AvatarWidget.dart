import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Widgets/Avatar/AlphabetForColor.dart';
import 'package:fiscaliza_ja/Widgets/Image/ImageWidget.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final double size;
  final double elevation;
  final String name;
  final bool anonymous;
  final String url;

  AvatarWidget({
    this.size = 130,
    this.elevation = 0,
    this.name,
    this.anonymous = false,
    this.url,
  });

  Widget _childType() {
    if (this.anonymous == true) {
      return this._anonymous();
    }

    if (this.url != null) {
      return this._authWithUrlType();
    }

    return this._authType();
  }

  Widget _authType() {
    return Text(
      this._firstCharacter(),
      style: TextStyle(
        fontSize: 40,
        color: Colors.white,
      ),
    );
  }

  Widget _authWithUrlType() {
    return ImageWidget(
      url: this.url,
      height: null,
      fullScreen: true,
      fullScreenOnTap: true,
    );
  }

  Widget _anonymous() {
    return Icon(
      Icons.record_voice_over,
      size: 35,
      color: Colors.white,
    );
  }

  String _firstCharacter() {
    return this.name.substring(0, 1).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: this.elevation,
      shape: GenericPattern.CARD_BORDER_RADIUS_HIGHT,
      child: Container(
        height: this.size,
        width: this.size,
        decoration: BoxDecoration(
          color: AlphabetForColor.getColor(
            title: this.name,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: this._childType(),
        ),
      ),
    );
  }
}
