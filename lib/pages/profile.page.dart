import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Marcos Gênesis",
                  style: TextStyle(color: Colors.white, fontFamily: "Campton"),
                ),
                background: Hero(
                  tag: "profile",
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Image.asset(
                          "assets/images/perfil.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.green.withOpacity(0),
                                Colors.green.withOpacity(0),
                                Colors.black.withOpacity(0.7)
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white12,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      "Dados Pessoais",
                      style: TextStyle(
                          fontFamily: "Campton",
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Input(
                label: "Email",
                value: "marcosgenesisof@gmail.com",
              ),
              Input(
                label: "Sexo",
                value: "Masculino",
              ),
              Input(
                label: "Telefone",
                value: "(85) 990000-0000",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  final String value;
  final String label;
  Input({@required this.label, @required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        initialValue: value,
        style: TextStyle(fontFamily: "Campton", color: Colors.white70),
        decoration: InputDecoration(
            filled: true,
            border: InputBorder.none,
            labelText: label,
            enabled: false,
            fillColor: Color(0xFF303038).withOpacity(0.2),
            labelStyle: TextStyle(
              fontFamily: "Campton",
              fontSize: 20,
              color: Colors.white24,
            )),
      ),
    );
  }
}
