import 'package:ecommerce_mobile/bloc/login/login_bloc.dart';
import 'package:ecommerce_mobile/bloc/order/order_bloc.dart';
import 'package:ecommerce_mobile/bloc/register/register_bloc.dart';
import 'package:ecommerce_mobile/data/datasources/auth_remote_datasource.dart';
import 'package:ecommerce_mobile/data/datasources/order_remote_datasource.dart';
import 'package:ecommerce_mobile/data/datasources/product_remote_datasource.dart';
import 'package:ecommerce_mobile/presentation/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/checkout/checkout_bloc.dart';
import 'bloc/get_products/get_products_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetProductsBloc(ProductRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => CheckoutBloc(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => OrderBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(AuthRemoteDatasource()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
