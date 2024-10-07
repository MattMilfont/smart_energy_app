import 'dart:convert';

import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:smart_energy_app/src/core/interactor/atom/core_atom.dart';
import 'package:smart_energy_app/src/core/presenter/components/card_data.dart';
import 'package:smart_energy_app/src/modules/home/interactor/atom/home_atom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    onGetBoxInfo.call();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.select(() => homeState.value);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          'Bem-vindo, ${user.value.name}',
          style: const TextStyle(
            color: Colors.orange,
            fontSize: 18,
          ),
        ),
      ),
      drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                arrowColor: Colors.orange,
                decoration: const BoxDecoration(color: Colors.black),
                currentAccountPicture: Image.memory(
                  base64Decode(user.value.profilePictureBase64!),
                ),
                accountName: Text(
                  user.value.name ?? 'Não há dados',
                  style: const TextStyle(color: Colors.orange),
                ),
                accountEmail: Text(
                  user.value.email ?? 'Não há dados',
                  style: const TextStyle(color: Colors.orange),
                ),
              ),
            ],
          )),
      body: state.when(
        init: () => const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Card(
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Este é o aplicativo da Smart Energy Box, desenvolvido para você acessar os valoresde consumo de forma simples e fácil',
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        success: (s) => Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Card(
                color: Colors.orange,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Este é o Grid Box App, um aplicativo\ndesenvolvido para você acessar os valores\nde consumo das residências de forma\nsimples e fácil',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: CardData(
                label: 'Consumo do mês:',
                value: boxInfo.value.energiaPorMes?.last.energiaKwh.toString(),
                grandeza: 'kWh',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: CardData(
                label: 'Fatura do mês:',
                value: (boxInfo.value.energiaPorMes!.last.energiaKwh! * 0.5)
                    .toString(),
                grandeza: 'reais',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
