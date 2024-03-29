import 'package:ecommerce_flutter/produto.dart';
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
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
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
                          MdiIcons.hanger,
                          color: Colors.black,
                        )),
                    Text(
                      'Roupas',
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
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
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  margin: const EdgeInsets.all(8),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset('assets/cadeira.jpg',
                          width: 150, height: 200),
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
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
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
                ),
                Card(
                  margin: const EdgeInsets.all(8),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset('assets/cadeiraMadeira.png',
                          width: 150, height: 200),
                      Text(
                        'Cadeira de Madeira',
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
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      Text(
                        'R\$200,00',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange),
                      )
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(8),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset('assets/poltrona.png',
                          width: 150, height: 200),
                      Text(
                        'Poltrona',
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
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      Text(
                        'R\$1000,00',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(8)),
              Text('Sofás',
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
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const Produto())),
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Image.asset('assets/sofaL.png',
                            width: 150, height: 200),
                        Text(
                          'Sofá em L',
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
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        Text(
                          'R\$3000,00',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(8),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset('assets/sofaLondres.png',
                          width: 150, height: 200),
                      Text(
                        'Sofá Londres',
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
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      Text(
                        'R\$2500,00',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange),
                      )
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(8),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset('assets/sofaElizabeth.png',
                          width: 150, height: 200),
                      Text(
                        'Sofá Elizabeth',
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
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      Text(
                        'R\$4000,00',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}