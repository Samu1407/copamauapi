import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/pag_classificao/pag_classificao_widget.dart';
import '/pages/pag_jogos/pag_jogos_widget.dart';
import 'monte_time_model.dart';
export 'monte_time_model.dart';


class MonteTimeWidget extends StatefulWidget {
  const MonteTimeWidget({Key? key}) : super(key: key);

  @override
  _MonteTimeWidgetState createState() => _MonteTimeWidgetState();
}

class _MonteTimeWidgetState extends State<MonteTimeWidget> {
  late MonteTimeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MonteTimeModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  void _navigateToMontarTimePage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MontarTimePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ... (código existente do widget MonteTimeWidget)

    // Implementação do método build com um botão para navegar para MontarTimePage
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Monte Seu Time'),
        actions: [
          IconButton(
            icon: Icon(Icons.sports_soccer),
            onPressed: _navigateToMontarTimePage,
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _navigateToMontarTimePage,
          child: Text('Montar Time'),
        ),
      ),
    );
  }
}

class MontarTimePage extends StatefulWidget {
  @override
  _MontarTimePageState createState() => _MontarTimePageState();
}

class _MontarTimePageState extends State<MontarTimePage> {
  final _formacaoController = TextEditingController();
  final List<TextEditingController> _goleirosControllers = List.generate(3, (index) => TextEditingController());
  final List<TextEditingController> _zagueirosControllers = List.generate(6, (index) => TextEditingController());
  final List<TextEditingController> _meiasControllers = List.generate(6, (index) => TextEditingController());
  final List<TextEditingController> _atacantesControllers = List.generate(6, (index) => TextEditingController());

  @override
  void dispose() {
    _formacaoController.dispose();
    _goleirosControllers.forEach((controller) => controller.dispose());
    _zagueirosControllers.forEach((controller) => controller.dispose());
    _meiasControllers.forEach((controller) => controller.dispose());
    _atacantesControllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _mostrarEscalacao() {
    List<String> jogadores = [];
    jogadores.addAll(_goleirosControllers.map((c) => c.text).where((nome) => nome.isNotEmpty));
    jogadores.addAll(_zagueirosControllers.map((c) => c.text).where((nome) => nome.isNotEmpty));
    jogadores.addAll(_meiasControllers.map((c) => c.text).where((nome) => nome.isNotEmpty));
    jogadores.addAll(_atacantesControllers.map((c) => c.text).where((nome) => nome.isNotEmpty));

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Escalação'),
          content: SingleChildScrollView(
            child: ListBody(
              children: jogadores.map((nome) => Text(nome)).toList(),
            ),
          ),
          actions: [
            TextButton(
              child: Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildTextField(TextEditingController controller, String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monte Seu Time'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _formacaoController,
                decoration: InputDecoration(
                  labelText: 'Formação',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Text('Goleiros', style: Theme.of(context).textTheme.headline6),
            ..._goleirosControllers.map((controller) => _buildTextField(controller, 'Nome do Goleiro')),
            Text('Zagueiros', style: Theme.of(context).textTheme.headline6),
            ..._zagueirosControllers.map((controller) => _buildTextField(controller, 'Nome do Zagueiro')),
            Text('Meias', style: Theme.of(context).textTheme.headline6),
            ..._meiasControllers.map((controller) => _buildTextField(controller, 'Nome do Meia')),
            Text('Atacantes', style: Theme.of(context).textTheme.headline6),
            ..._atacantesControllers.map((controller) => _buildTextField(controller, 'Nome do Atacante')),
            ElevatedButton(
              onPressed: _mostrarEscalacao,
              child: Text('Terminar escalação'),
            ),
          ],
        ),
      ),
    );
  }
}
