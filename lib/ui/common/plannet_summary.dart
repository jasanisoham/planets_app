import 'package:flutter/material.dart';
import 'package:planets_animetion_app/model/planets.dart';
import 'package:planets_animetion_app/ui/common/separator.dart';
import 'package:planets_animetion_app/ui/detail/detail_page.dart';
import 'package:planets_animetion_app/ui/text_style.dart';

class PlanetSummary extends StatefulWidget {
  final Planet planet;
  final bool horizontal;

  const PlanetSummary(this.planet, {Key? key, this.horizontal = true}) : super(key: key);

  const PlanetSummary.vertical(this.planet, {Key? key}) : horizontal = false, super(key: key);

  @override
  State<PlanetSummary> createState() => _PlanetSummaryState();
}

class _PlanetSummaryState extends State<PlanetSummary>
    with TickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      alignment:
          widget.horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child: Hero(
        tag: "planet-hero-${widget.planet.id}",
        child: Image(
          image: AssetImage(widget.planet.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    Widget _planetValue({required String value, required String image}) {
      return Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Image.asset(image, height: 12.0),
        Container(width: 8.0),
        Text(widget.planet.gravity, style: Style.smallTextStyle),
      ]);
    }

    final planetCardContent = Container(
      margin: EdgeInsets.fromLTRB(
          widget.horizontal ? 76.0 : 16.0, widget.horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints: const BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment:
            widget.horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          Container(height: 4.0),
          Text(widget.planet.name, style: Style.titleTextStyle),
          Container(height: 10.0),
          Text(widget.planet.location, style: Style.commonTextStyle),
          const Separator(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  flex: widget.horizontal ? 1 : 0,
                  child: _planetValue(
                      value: widget.planet.distance,
                      image: 'assets/img/ic_distance.png')),
              Container(
                width: widget.horizontal ? 8.0 : 32.0,
              ),
              Expanded(
                  flex: widget.horizontal ? 1 : 0,
                  child: _planetValue(
                      value: widget.planet.gravity,
                      image: 'assets/img/ic_gravity.png'))
            ],
          ),
        ],
      ),
    );

    final planetCard = Container(
      child: planetCardContent,
      height: widget.horizontal ? 125.0 : 155.0,
      margin: widget.horizontal
          ? const EdgeInsets.only(left: 46.0)
          : const EdgeInsets.only(top: 72.0),
      decoration: BoxDecoration(
        color: const Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return GestureDetector(
        onTap: widget.horizontal
            ? () => Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => DetailPage(widget.planet),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) =>
                            FadeTransition(opacity: animation, child: child),
                  ),
                )
            : null,
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 24.0,
          ),
          child: Stack(
            children: <Widget>[
              planetCard,
              planetThumbnail,
            ],
          ),
        ));
  }
}
