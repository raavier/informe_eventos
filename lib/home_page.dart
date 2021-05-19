import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String _local = "CBPS";
  String _tipo = "Inspeção";
  String _origem = "RAC - 01";

  String _date = '';
  String _hora = '';
  String _loca_2 = '';
  String _pessoaAcionada = '';
  String _supervisor = '';
  String _gerencia = '';
  String _desvio = '';
  String _acao = '';
  String _ref = '';
  String _responsavel = '';
  String _codSap = '';

  String _msgCompartilhada = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? valueChooseLocal;
  List listItemLocal = ["CBPS", "TIG"];

  Widget _buildLocal() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            child: Text("Localidade",
                style: TextStyle(color: Colors.grey, fontSize: 18)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(15)),
            child: DropdownButton<String>(
                value: _local,
                onChanged: (String? newValue) {
                  setState(() {
                    _local = newValue!;
                  });
                },
                hint: Text("Selecione Localidade: "),
                dropdownColor: Colors.white,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 36,
                isExpanded: true,
                underline: SizedBox(),
                style: TextStyle(color: Colors.black, fontSize: 12),
                items: listItemLocal.map((valueItem) {
                  return DropdownMenuItem<String>(
                    value: valueItem,
                    child: Text(valueItem),
                  );
                }).toList()),
          ),
        ),
      ],
    );
  }

  String? valueChooseTipo;
  List listItemTipo = ["Inspeção", "Notificação", "Interdição"];

  Widget _buildTipo() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            child: Text("Tipo",
                style: TextStyle(color: Colors.grey, fontSize: 18)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(15)),
            child: DropdownButton<String>(
                value: _tipo,
                onChanged: (String? newValue) {
                  setState(() {
                    _tipo = newValue!;
                  });
                },
                hint: Text("Selecione o tipo: "),
                dropdownColor: Colors.white,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 36,
                isExpanded: true,
                underline: SizedBox(),
                style: TextStyle(color: Colors.black, fontSize: 12),
                items: listItemTipo.map((valueItem) {
                  return DropdownMenuItem<String>(
                    value: valueItem,
                    child: Text(valueItem),
                  );
                }).toList()),
          ),
        ),
      ],
    );
  }

  String? valueChooseOrigem;
  List listItemOrigem = [
    "RAC - 01",
    "PTS",
    "Análise de Risco da Tarefa",
    "Planejamento",
    "Regra de Ouro",
    "Outros"
  ];

  Widget _buildOrigem() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            child: Text("Origem",
                style: TextStyle(color: Colors.grey, fontSize: 18)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(15)),
            child: DropdownButton<String>(
                value: _origem,
                onChanged: (String? newValue) {
                  setState(() {
                    _origem = newValue!;
                  });
                },
                hint: Text("Selecione o tipo: "),
                dropdownColor: Colors.white,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 36,
                isExpanded: true,
                underline: SizedBox(),
                style: TextStyle(color: Colors.black, fontSize: 12),
                items: listItemOrigem.map((valueItem) {
                  return DropdownMenuItem<String>(
                    value: valueItem,
                    child: Text(valueItem),
                  );
                }).toList()),
          ),
        ),
      ],
    );
  }

  Widget _buildDate() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Data'),
      maxLength: 10,
      /* validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      }, */
      onSaved: (String? value) {
        _date = value!;
      },
    );
  }

  Widget _buildHora() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Hora'),
      maxLength: 10,
      /* validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      }, */
      onSaved: (String? value) {
        _hora = value!;
      },
    );
  }

  Widget _buildLocal_2() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Descreva Local'),
      minLines: 1,
      maxLines: 4,
      keyboardType: TextInputType.multiline,
      maxLength: 150,
      /* validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      }, */
      onSaved: (String? value) {
        _loca_2 = value!;
      },
    );
  }

  Widget _buildPessoaAcionada() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Pessoa Acionada'),
      maxLength: 30,
      /* validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      }, */
      onSaved: (String? value) {
        _pessoaAcionada = value!;
      },
    );
  }

  Widget _buildSupervisor() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Supervisor'),
      maxLength: 30,
      /* validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      }, */
      onSaved: (String? value) {
        _supervisor = value!;
      },
    );
  }

  Widget _buildGerencia() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Gerência'),
      maxLength: 30,
      /* validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      }, */
      onSaved: (String? value) {
        _gerencia = value!;
      },
    );
  }

  Widget _buildDesvio() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Desvio'),
      maxLength: 30,
      /* validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      }, */
      onSaved: (String? value) {
        _desvio = value!;
      },
    );
  }

  Widget _buildAcao() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Ação Imediata'),
      maxLength: 30,
      /* validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      }, */
      onSaved: (String? value) {
        _acao = value!;
      },
    );
  }

  Widget _buildRef() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Ref. Técnica'),
      maxLength: 30,
      /* validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      }, */
      onSaved: (String? value) {
        _ref = value!;
      },
    );
  }

  Widget _buildCodSap() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Código SAP: '),
      maxLength: 10,
      /* validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      }, */
      onSaved: (String? value) {
        _codSap = value!;
      },
    );
  }

  Widget _buildResponsavel() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Responsável pela Inspeção'),
      maxLength: 30,
      /* validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      }, */
      onSaved: (String? value) {
        _responsavel = value!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Demo")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildLocal(),
                _buildTipo(),
                _buildOrigem(),
                _buildHora(),
                _buildDate(),
                _buildLocal_2(),
                _buildPessoaAcionada(),
                _buildSupervisor(),
                _buildGerencia(),
                _buildDesvio(),
                _buildAcao(),
                _buildRef(),
                _buildCodSap(),
                _buildResponsavel(),
                SizedBox(height: 100),
                ElevatedButton(
                  child: Text(
                    'Compartilhar',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {
                    /*  if (!_formKey.currentState!.validate()) {
                      return;
                    } */

                    _formKey.currentState!.save();
                    _msgCompartilhada =
                        "INFORME DE INSPEÇÃO DE SEGURANÇA | PORTOS SUL \n" +
                            "Local: " +
                            _local +
                            "\nLocal Descritivo: " +
                            _loca_2 +
                            "\nTipo: " +
                            _tipo +
                            "\nOrigem: " +
                            _origem +
                            "\nData: " +
                            _date +
                            "\nHora: " +
                            _hora +
                            "\nPessoa Acionada: " +
                            _pessoaAcionada +
                            "\nSupervisor: " +
                            _supervisor +
                            "\nGerência: " +
                            _gerencia +
                            "\nDesvio: " +
                            _desvio +
                            "\nAção Imediata: " +
                            _acao +
                            "\nRef. Técnica: " +
                            _ref +
                            "\nCódigo SAP: " +
                            _codSap +
                            "\nResponsável pela Inspeção: " +
                            _responsavel;
                    Share.share(_msgCompartilhada);
                    //print(_msgCompartilhada);
                    /*   
                    print("1" + _local);
                    print("2" + _tipo);
                    print("3" + _origem);
                    print("4" + _date);
                    print("5" + _hora);
                    print("6" + _loca_2);
                    print("7" + _pessoaAcionada);
                    print("8" + _supervisor);
                    print("9" + _gerencia);
                    print("10 " + _desvio);
                    print("11 " + _acao);
                    print("12 " + _ref);
                    print("13 " + _responsavel); */
                    /* print(_email);
                    print(_phoneNumber);
                    print(_url);
                    print(_password);
                    print(_calories); */

                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
