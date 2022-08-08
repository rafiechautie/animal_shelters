import 'package:animal_shelters/models/Animal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../detail/detail_screen.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Animal Shelter. Size: ${MediaQuery.of(context).size.width}'),
      ),
    body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth <= 600){
            return AnimalList();
          }else if(constraints.maxWidth <= 1200){
            return const AnimalGridList(gridCount: 2);
          }else{
            return const AnimalGridList(gridCount: 4);
          }
      },
    ),
    );
  }
}

class AnimalList extends StatelessWidget{

  const AnimalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemBuilder: (context, index){
              final Animal animal = animalList[index];
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DetailScreen(animal: animal);
                  }));
                },
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                            animal.imageAsset,
                            height: 130,
                            fit: BoxFit.fill,
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 8, bottom: 4),
                                child: Text(
                                  animal.name,
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Open Sans"
                                  ),
                                ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                animal.species,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: "Open Sans",
                                    color: Colors.black.withOpacity(0.6)
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20, right: 8, left: 8, bottom: 4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      IconButton(
                                          icon: SvgPicture.asset(
                                            "Icons/age.svg",
                                            color: Colors.black,
                                            width: 20.0,
                                          ),
                                        onPressed: () {},
                                      ),
                                      Text(
                                        animal.age,
                                        style: TextStyle(
                                            fontSize: 11.0,
                                            fontFamily: "Open Sans"
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      IconButton(
                                        icon: SvgPicture.asset(
                                          "Icons/gender.svg",
                                          color: Colors.black,
                                          width: 20.0,
                                        ),
                                        onPressed: () {},
                                      ),
                                      Text(
                                          animal.gender,
                                          style: TextStyle(
                                              fontSize: 11.0,
                                              fontFamily: "Open Sans"
                                          ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      IconButton(
                                        icon: SvgPicture.asset(
                                          "Icons/weight.svg",
                                          color: Colors.black,
                                          width: 20.0,
                                        ),
                                        onPressed: () {},
                                      ),
                                      Text(
                                          animal.weight,
                                          style: TextStyle(
                                              fontSize: 11.0,
                                              fontFamily: "Open Sans"
                                          ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          itemCount: animalList.length,
        ),
    );
  }

}

class AnimalGridList extends StatelessWidget{
  final int gridCount;

  const AnimalGridList({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: animalList.map((animal){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DetailScreen(animal: animal);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Image.asset(
                        animal.imageAsset,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        animal.name,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        animal.species
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, right: 8, left: 8, bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              IconButton(
                                icon: SvgPicture.asset(
                                  "Icons/age.svg",
                                  color: Colors.black,
                                  width: 20.0,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                animal.age,
                                style: TextStyle(
                                    fontSize: 11.0,
                                    fontFamily: "Open Sans"
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              IconButton(
                                icon: SvgPicture.asset(
                                  "Icons/gender.svg",
                                  color: Colors.black,
                                  width: 20.0,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                animal.gender,
                                style: TextStyle(
                                    fontSize: 11.0,
                                    fontFamily: "Open Sans"
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              IconButton(
                                icon: SvgPicture.asset(
                                  "Icons/weight.svg",
                                  color: Colors.black,
                                  width: 20.0,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                animal.weight,
                                style: TextStyle(
                                    fontSize: 11.0,
                                    fontFamily: "Open Sans"
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}



