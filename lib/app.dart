import 'package:flutter/material.dart';
import 'package:untitled30/product_list.dart';

class crudapp extends StatelessWidget {
  const crudapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: home(),


      theme: _lightthemedta(),
      darkTheme: darktheme(),
      themeMode: ThemeMode.dark,

    );
  }

  ThemeData _lightthemedta(){

return
    ThemeData(
      brightness: Brightness.dark,


        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,

          titleSpacing: 4,


        ),



        inputDecorationTheme: InputDecorationTheme(

          enabledBorder: OutlineInputBorder(

              borderSide: BorderSide(width: 2,color: Colors.purple)
          ),
          focusedErrorBorder: OutlineInputBorder(

              borderSide: BorderSide(width: 2,color: Colors.purple)
          ),
          errorBorder: OutlineInputBorder(

              borderSide: BorderSide(width: 2,color: Colors.purple)
          ),
          focusedBorder: OutlineInputBorder(

              borderSide: BorderSide(width: 2,color: Colors.purple)
          ),




        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(

                fixedSize: Size.fromWidth(double.maxFinite),

                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            )
        )

    );
  }
  ThemeData darktheme (){
    return ThemeData(
      brightness: Brightness.dark,

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,

          titleSpacing: 4,


        ),



        inputDecorationTheme: InputDecorationTheme(

          enabledBorder: OutlineInputBorder(

              borderSide: BorderSide(width: 2,color: Colors.purple)
          ),
          focusedErrorBorder: OutlineInputBorder(

              borderSide: BorderSide(width: 2,color: Colors.purple)
          ),
          errorBorder: OutlineInputBorder(

              borderSide: BorderSide(width: 2,color: Colors.purple)
          ),
          focusedBorder: OutlineInputBorder(

              borderSide: BorderSide(width: 2,color: Colors.purple)
          ),




        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(

                fixedSize: Size.fromWidth(double.maxFinite),

                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            )
        )

    );
  }
}
