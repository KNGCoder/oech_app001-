import 'package:flutter/material.dart';

class LsChatWidget extends StatefulWidget {
  final String imgName;
  final String name;
  const LsChatWidget({
    super.key,
    required this.imgName,
    required this.name,
  });

  @override
  State<LsChatWidget> createState() => _LsChatWidgetState();
}

class _LsChatWidgetState extends State<LsChatWidget> {
  get imgName => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      offset: const Offset(0, 2),
                      blurRadius: 5,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child:
                          Image.asset('assets/images/s5_icon_arrow-left.png'),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/${widget.imgName}',
                          width: 43,
                          height: 43,
                        ),
                        const SizedBox(width: 9),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            widget.name,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.phone_outlined,
                        color: Color(0xff0560FA),
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
