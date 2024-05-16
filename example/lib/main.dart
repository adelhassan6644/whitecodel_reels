import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whitecodel_reels/whitecodel_reels.dart';

void main() async {
  await Future.delayed(const Duration(seconds: 1));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WhiteCodel Reels',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: WhiteCodelReels(
              key: UniqueKey(),
              context: context,
              loader: const Center(
                child: CircularProgressIndicator(),
              ),
              videoList: List.generate(
                10,
                (index) =>
                    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
              ),
              builder: (context, index, child) {
                bool isReadMore = false;
                return Stack(
                  children: [
                    child,
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          StatefulBuilder(
                            builder: (context, setState) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isReadMore = !isReadMore;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.0),
                                        Colors.black.withOpacity(0.2),
                                        Colors.black.withOpacity(0.5),
                                      ],
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        constraints: const BoxConstraints(
                                          maxHeight: 300,
                                        ),
                                        child: SingleChildScrollView(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 50, left: 10),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                                maxLines: isReadMore ? 100 : 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: GoogleFonts.roboto(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 50, left: 10),
                                        child: Visibility(
                                          visible: true,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Visibility(
                                                  visible: true,
                                                  child: InkWell(
                                                    onTap: () {},
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: [
                                                          const TextSpan(
                                                            text: '1000',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .white70,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: " Likes",
                                                            style: GoogleFonts
                                                                .roboto(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 70,
                      right: 10,
                      child: SizedBox(
                        height: 450,
                        // color: Colors.red.withOpacity(0.5),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    true
                                        ? Icons.thumb_up_alt
                                        : Icons.thumb_up_alt_outlined,
                                    color: Color.fromARGB(
                                      255,
                                      214,
                                      183,
                                      8,
                                    ),
                                  ),
                                  color: Colors.white,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    '10K',
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    false
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: Colors.red,
                                  ),
                                  color: Colors.white,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    '10K',
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.comment,
                                    color: Colors.white,
                                  ),
                                  color: Colors.white,
                                ),
                                InkWell(
                                  child: Text(
                                    '10K',
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  ),
                                  color: Colors.white,
                                ),
                                Text(
                                  'Share',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    false
                                        ? Icons.bookmark
                                        : Icons.bookmark_border,
                                    color: Colors.white,
                                  ),
                                  color: Colors.white,
                                ),
                                Text(
                                  'Save',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ));
  }
}
