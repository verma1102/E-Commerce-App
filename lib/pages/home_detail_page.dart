import 'package:flutter/material.dart';
import 'package:my_flutter_app1/models/catalog.dart';
import 'package:my_flutter_app1/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Item Catalog;

  // ignore: non_constant_identifier_names
  const HomeDetailPage({Key? key, required this.Catalog})
      // ignore: unnecessary_null_comparison
      : assert(Catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.cardColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\Rs. ${Catalog.price}".text.bold.xl4.red800.make(),
            AddToCart(
              catalog: Catalog,
            ).wh(120, 50)
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(Catalog.id.toString()),
              child: Image.network(Catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.canvasColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    Catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    Catalog.desc.text.xl2.make(),
                    10.heightBox,
                    "Turn features into benefits.".text.make().p8()
                  ],
                ).py32(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
