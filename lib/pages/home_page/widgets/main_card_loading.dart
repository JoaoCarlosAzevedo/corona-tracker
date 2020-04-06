import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MainCardLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Shimmer.fromColors(
          baseColor: Theme.of(context).primaryColor,
          highlightColor: Theme.of(context).accentColor,
          child: Row(
            children: <Widget>[
              Container(
                  width: 190,
                  height: 190,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      shape: BoxShape.circle)),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          width: 140,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          width: 140,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}

/* class MainCardLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).accentColor,
      highlightColor: Theme.of(context).accentColor.withOpacity(0.3),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(Radius.circular(35)),
        ),
      ),
    );
  }
}
 */
