import 'package:animal_shelters/models/Animal.dart';
import 'package:animal_shelters/screens/home/home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

var informationTextStyle = TextStyle(fontFamily: 'Open Sans');

class DetailScreen extends StatelessWidget{
  final Animal animal;

  DetailScreen({required this.animal});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          if(constraints.maxWidth < 800){
            return DetailMobilePage(animal: animal);
          }else{
            return DetailWebPage(animal: animal);
          }
        }
    );
  }
}

class DetailMobilePage extends StatelessWidget{

  final Animal animal;

  const DetailMobilePage({required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(animal.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text(
                   animal.name,
                   textAlign: TextAlign.center,
                   style: const TextStyle(
                     fontSize: 30.0,
                     fontFamily: 'Open Sans',
                   ),
                 ),
                  FavoriteButton()
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                "Species:  ${animal.species}",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Open Sans',
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black),
                ),
              ),
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: SvgPicture.asset(
                          "Icons/age.svg",
                          color: Colors.black,
                          width: 25.0,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        animal.age,
                        style: TextStyle(
                            fontSize: 16.0,
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
                          width: 25.0,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        animal.gender,
                        style: TextStyle(
                            fontSize: 16.0,
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
                          width: 25.0,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        animal.weight,
                        style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: "Open Sans"
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                animal.description,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: "Open Sans"
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                child: Text("Adopt Me!"),
                onPressed: (){
                  _showToast(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('This Feature is coming soon'),
        action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

}

class DetailWebPage extends StatefulWidget{
  final Animal animal;

  const DetailWebPage({Key? key, required this.animal}) : super(key: key);

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage>{
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64
        ),
        child: Center(
          child: Container(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Animal Shelter',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.animal.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.all(16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      widget.animal.name,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 30.0,
                                        fontFamily: 'Open Sans',
                                      ),
                                    ),
                                    FavoriteButton()
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(color: Colors.black),
                                    bottom: BorderSide(color: Colors.black),
                                  ),
                                ),
                                margin: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        IconButton(
                                          icon: SvgPicture.asset(
                                            "Icons/age.svg",
                                            color: Colors.black,
                                            width: 25.0,
                                          ),
                                          onPressed: () {},
                                        ),
                                        Text(
                                          widget.animal.age,
                                          style: TextStyle(
                                              fontSize: 16.0,
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
                                            width: 25.0,
                                          ),
                                          onPressed: () {},
                                        ),
                                        Text(
                                          widget.animal.gender,
                                          style: TextStyle(
                                              fontSize: 16.0,
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
                                            width: 25.0,
                                          ),
                                          onPressed: () {},
                                        ),
                                        Text(
                                          widget.animal.weight,
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontFamily: "Open Sans"
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  widget.animal.description,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: "Open Sans"
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(16.0),
                                child: ElevatedButton(
                                  child: Text("Adopt Me!"),
                                  onPressed: (){
                                    _showToast(context);
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void dispose(){
    _scrollController.dispose();
    super.dispose();
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('This Feature is coming soon'),
        action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

}

class FavoriteButton extends StatefulWidget{

  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>{
  bool isFavorite = false;

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey, spreadRadius: 1)],
      ),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: Colors.red,
          ),
          onPressed: () {
            setState((){
              isFavorite = !isFavorite;
            });
          },
        ),
      ),
    );

  }
}