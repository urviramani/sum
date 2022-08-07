import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: sum(),
  ));
}

class sum extends StatelessWidget {
 
  TextEditingController s1=TextEditingController();
  TextEditingController s2=TextEditingController();
  TextEditingController s3=TextEditingController();
  TextEditingController s4=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(controller: s1),
          TextField(controller: s2,),
          TextField(controller: s3,),
          TextField(controller: s4,),
          ElevatedButton(onPressed: () {
            String  a=s1.text;
            String  b=s2.text;
            String  c=s3.text;
            String  d=s4.text;

            int n1 = int.parse(a);
            int n2 = int.parse(b);
            int n3 = int.parse(c);
            int n4 = int.parse(d);


            int sum = n1+n2+n3+n4;
            print("sum=$sum");
          }, child: Text("sum")),
          ElevatedButton(onPressed: () {
            String  a=s1.text;
            String  b=s2.text;
            String  c=s3.text;
            String  d=s4.text;

            int n1 = int.parse(a);
            int n2 = int.parse(b);
            int n3 = int.parse(c);
            int n4 = int.parse(d);
            if( n1>n2 && n1>n3 && n1>n4 )
              {
                print("n1 is max");
              }
            else if( n2>n3 && n2>n4 )
                {
                  print("n2 is max");
                }
            else if(n3>n4)
              {
                print("n3 is max");
              }
            else
              {
                print("n4 is max");
              }

          }, child: Text("max")),
          ElevatedButton(onPressed: () {
            String  a=s1.text;
            String  b=s2.text;
            String  c=s3.text;
            String  d=s4.text;

            int n1 = int.parse(a);
            int n2 = int.parse(b);
            int n3 = int.parse(c);
            int n4 = int.parse(d);

            if( n1<n2 && n1<n3 && n1<n4)
              {
                print("n1 is min");
              }
            else if(n2<n3 && n2<n4)
              {
                print("n2 is min");
              }
            else if(n3<n4)
              {
                print("n3 is min");
              }
            else
              {
                print("n4 is min");
              }
          }, child: Text("min"))
        ],
      ),
    );
  }
}
