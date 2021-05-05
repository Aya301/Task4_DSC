import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
home: widget4(),
  ));
}
class widget4 extends StatefulWidget {
  widget4({Key key,this.title}):super(key: key);
  final String title;
  @override
  _widget4State createState()=> _widget4State();
}
class _widget4 extends StatefulWidget{
  @override
  _widget4State createState()=> _widget4State();
}
class _widget4State extends State<widget4>{
  int _selectedIndex = 0 ;
  List<Widget> _widgets =<Widget>[
    Text('This',
      style: TextStyle(fontSize: 20),),
    Text('Is',
      style: TextStyle(fontSize: 20),), Text('Bottom',
      style: TextStyle(fontSize: 20),), Text('Bar',
      style: TextStyle(fontSize: 20),),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hello',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: _widgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(Icons.dehaze_sharp),
              title: Text('This'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.layers),
              title: Text('Is'),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text('Bottom'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              title: Text('Bar'),
            )
          ],
              currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,

      backgroundColor: Colors.grey,

    );
  }
}
