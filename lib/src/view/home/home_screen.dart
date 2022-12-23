import 'package:dates/src/components/common_card.dart';
import 'package:dates/src/components/custom_button.dart';
import 'package:dates/src/components/custom_text_field.dart';
import 'package:dates/src/stores/base_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BaseStore baseStore = BaseStore();

  @override
  void initState() {
    baseStore.loadLocal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(body: Observer(builder: (context) {
      return SingleChildScrollView(
        child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(children: [
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.pink[200]!, Colors.pink[400]!])),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 55),
                        child: Text('Dates',
                            style: Theme.of(context).textTheme.headline4),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 110),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: CommonCard(
                          child: Column(
                            children: [
                              Row(
                                children: const [Text('Proximo Date')],
                              ),
                              Expanded(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Observer(builder: (context) {
                                    return Text(
                                      baseStore.randomDate,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall,
                                    );
                                  }),
                                ],
                              )),
                              Row(
                                children: [
                                  Expanded(child: Container()),
                                  Expanded(child: Observer(builder: (_) {
                                    return CustomButton(
                                        onPressed: () {
                                          baseStore.generateRandom();
                                        },
                                        title: 'ESCOLHER',
                                        color: Colors.pink[300]);
                                  })),
                                  Expanded(child: Container()),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Observer(builder: (_) {
                          return CustomTextField(
                              controller: baseStore.newDateController,
                              title: 'Novo Date',
                              onChanged: baseStore.setNewDate);
                        })),
                    Observer(builder: (_) {
                      return IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: baseStore.isNewDateValid
                              ? () {
                                  baseStore.addDate(baseStore.newDate!);
                                  baseStore.setNewDate('');
                                  baseStore.newDateController.clear();
                                }
                              : null,
                          iconSize: 40);
                    }),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Expanded(child: Text('Meus Dates')),
                  ],
                ),
              ),
              Expanded(
                child: Observer(builder: (context) {
                  return ListView.builder(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    itemCount: baseStore.dates.length,
                    itemBuilder: (_, i) {
                      return ListTile(
                        title: Text(baseStore.dates[i]),
                        contentPadding: EdgeInsets.zero,
                        trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              baseStore.removeDate(baseStore.dates[i]);
                            }),
                      );
                    },
                  );
                }),
              )
            ])),
      );
    }));
  }
}
