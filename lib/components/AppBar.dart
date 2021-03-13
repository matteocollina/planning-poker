import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
    final String title;
    // @override
    final Size preferredSize; // default is 56.0
    CustomAppBar({Key key, this.title}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);
    @override
    _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>{
    
    @override
    Widget build(BuildContext context) {
        return AppBar( title: Text(widget.title) );
    }
}