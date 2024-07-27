import 'package:flutter/material.dart';

class listItems extends StatelessWidget {
  const listItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(4),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2021/12/08/19/34/laptop-6856557_640.jpg'),
                  fit: BoxFit.cover)),
          child: Container(
            width: double.infinity,
            height: 10,
            alignment: AlignmentDirectional.bottomCenter,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Title',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
