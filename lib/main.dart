import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testes/providerteste.dart';
import 'package:testes/recebedor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 10.0),
            child: TextField(
              controller: userNameController,
              decoration: const InputDecoration(
                label: Text('Nome'),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    context
                        .read<UserProvider>()
                        .changeUserName(newUserName: userNameController.text);
                    FocusManager.instance.primaryFocus?.unfocus();
                    userNameController.clear();
                  },
                  child: const Icon(
                    Icons.remove,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  child: const Icon(
                    Icons.add,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Recebedor()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
