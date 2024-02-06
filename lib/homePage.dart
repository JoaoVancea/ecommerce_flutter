import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'E-Commerce João',
            style:
                GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: TextFormField(
                  decoration: const InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        MdiIcons.sofaSingleOutline,
                        color: Colors.white,
                      )),
                  Text(
                    'Móveis',
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        MdiIcons.controllerClassicOutline,
                        color: Colors.black,
                      )),
                  Text(
                    'Jogos',
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        MdiIcons.headphones,
                        color: Colors.black,
                      )),
                  Text(
                    'Eletrônicos',
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        MdiIcons.foodAppleOutline,
                        color: Colors.black,
                      )),
                  Text(
                    'Comida',
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        MdiIcons.shoeSneaker,
                        color: Colors.black,
                      )),
                  Text(
                    'Calçados',
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              /*Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
                child: Icon(MdiIcons.hanger, color: Colors.black,)
              ),*/
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(8)),
              Text('Principais produtos',
                  style: GoogleFonts.roboto(
                      fontSize: 22, fontWeight: FontWeight.bold)),
              const Spacer(),
              Text('Ver todos',
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey)),
              const Padding(padding: EdgeInsets.all(8))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Card(
                margin: const EdgeInsets.all(8),
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset('assets/cadeira.jpg', width: 150, height: 200),
                    Text(
                      'Cadeira Escritório',
                      style: GoogleFonts.roboto(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    RatingBar.builder(
                      itemSize: 15,
                      initialRating: 4.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    Text(
                      'R\$700,00',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                          
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

//https://dribbble.com/shots/23146588-eCommerce-Mobile-App
//https://dribbble.com/shots/15336959-Ecommerce-app-design/attachments/7095951?mode=media