import 'package:flutter/material.dart';
import 'package:flutter_crud_lista_usuario/Provider/Users_Provider.dart';
import 'package:flutter_crud_lista_usuario/Routes/App_Routes.dart';
import 'package:flutter_crud_lista_usuario/Views/User_Form.dart';
import 'package:flutter_crud_lista_usuario/Views/User_List.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => UsersProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Lista de Usuarios',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm()
        },
      ),
    );
  }
}
