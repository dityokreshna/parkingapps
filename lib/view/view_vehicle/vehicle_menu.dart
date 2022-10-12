import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:parkingapps/style/style_text.dart';
import 'package:parkingapps/view/view_vehicle/vehicle_add.dart';

class VehicleMenu extends StatelessWidget {
  const VehicleMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
                  Navigator.pushNamed(
                    context,
                    VehicleAdd.routeName,
                  );
          },
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 35, 83, 143),
          child: Icon(
            Icons.add_circle,
            size: 40,
          )),
      backgroundColor: Colors.white,
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                },
                icon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 35, 83, 143),
                ))
          ],
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Vehicle",
            style: myTextTheme(
              fontWeights: FontWeight.w600,
              colors: Color.fromARGB(255, 35, 83, 143),
            ).headline4,
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,0,28,0),
        child: ListView.builder(
            shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemCount: 100,
            itemBuilder: (context, index) {
              return Slidable(
                  // Specify a key if the Slidable is dismissible.
                  key: const ValueKey(0),

                  // The start action pane is the one at the left or the top side.
                  startActionPane: ActionPane(
                    
                    extentRatio: 0.25,
                    // A motion is a widget used to control how the pane animates.
                    motion: const ScrollMotion(),

                    // A pane can dismiss the Slidable.
                    dismissible: DismissiblePane(onDismissed: () {}),

                    // All actions are defined in the children parameter.
                    children: const [
                      // A SlidableAction can have an icon and/or a label.
                      SlidableAction(
                        padding: EdgeInsets.all(28),
                        onPressed: doNothing,
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        borderRadius:
                            BorderRadius.horizontal(right: Radius.circular(20)),
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                    ],
                  ),

                  // The end action pane is the one at the right or the bottom side.
                  endActionPane: const ActionPane(
                    motion: ScrollMotion(),
                    extentRatio: 0.25,
                    children: [
                      SlidableAction(
                        // An action can be bigger than the others.
                        flex: 2,
                        onPressed: doNothing,
                        backgroundColor: Color.fromARGB(255, 255, 169, 3),
                        foregroundColor: Colors.white,
                        borderRadius:
                            BorderRadius.horizontal(left: Radius.circular(20)),
                        icon: Icons.star,
                        label: 'Fav',
                      ),
                    ],
                  ),

                  // The child of the Slidable is what the user sees when the
                  // component is not dragged.
                  child: Container(
                    // width: MediaQuery.of(context).size.width * 0.2,
                    height: 96,
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(6, 4, 0, 4),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                              child: Image.asset(
                                "assets/images/car2.png",
                                width: 72,
                                height: 72,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Toyota Vellfire - Hitam",
                                    style:
                                        myTextTheme(fontWeights: FontWeight.bold)
                                            .subtitle1,
                                  ),
                                  Text(
                                    "Manual - N14045 MCD",
                                    style: myTextTheme().subtitle1,
                                  ),
                                  Text(
                                    "a.n Fuad AlHadi",
                                    style: myTextTheme().overline,
                                  ),
                                  
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ));
            }),
      ),
    );
  }
}

void doNothing(BuildContext context) {}
