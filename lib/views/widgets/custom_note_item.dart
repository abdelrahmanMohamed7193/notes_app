import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.only(top: 24 ,bottom: 24 ,) ,
      decoration: BoxDecoration(
        color: Color(0xffFFCC80) ,
        borderRadius: BorderRadius.circular(16) ,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title:Text('Flutter Tips' ,style: TextStyle(color: Colors.black ,fontSize: 26),) ,
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 15 ,bottom: 16),
              child: Text('build youe jc jebdu edb',style: TextStyle(color: Colors.black.withOpacity(0.5) ,fontSize: 18)),
            ),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete ,color: Colors.black,size: 24,)),
          ) ,
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text('21 May , 2022' ,style: TextStyle(
              color: Colors.black38 ,
            ),),
          )
        ],
      ),
    );
  }
}