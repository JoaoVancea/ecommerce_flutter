import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Produto extends StatefulWidget {
  const Produto({super.key});

  @override
  State<Produto> createState() => _ProdutoState();
}

class _ProdutoState extends State<Produto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes',
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold)),
      ),
      body: ListView(children: [
        Image.asset('assets/sofaL.png', width: double.infinity),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Padding(padding: EdgeInsets.all(12)),
            Text('Sofá em L',
                style: GoogleFonts.roboto(
                    fontSize: 22, fontWeight: FontWeight.bold)),
            const Spacer(),
            Icon(MdiIcons.heartOutline),
            const Padding(padding: EdgeInsets.all(12))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Padding(padding: EdgeInsets.all(12)),
            Text('R\$3000,00',
                style: GoogleFonts.roboto(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            const Spacer(),
            RatingBar.builder(
              itemSize: 20,
              initialRating: 4.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
            Text('(100)',
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey)),
            const Padding(padding: EdgeInsets.all(12)),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Row(
              children: [
                const Padding(padding: EdgeInsets.all(8)),
                Text(
                  'Cores',
                  style: GoogleFonts.roboto(
                      fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 12,
                ),
                Container(
                  margin: const EdgeInsets.all(4),
                  padding: const EdgeInsets.all(8),
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.deepOrange,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(4),
                  padding: const EdgeInsets.all(8),
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 60, 98, 221),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(4),
                  padding: const EdgeInsets.all(8),
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 73, 72, 72),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Descrição',
                      style: GoogleFonts.roboto(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse posuere neque id purus porttitor iaculis. Proin vel elit eu libero pellentesque venenatis.',
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                )
              ],
            )
          ],
        )
      ]),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrange),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)),
              child: Text('Adicionar ao carrinho',
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(50)),
              child: Text('Comprar agora',
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
