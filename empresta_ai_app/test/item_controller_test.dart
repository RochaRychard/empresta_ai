import 'package:empresta_ai_app/controllers/itens_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  group("ItensController Testes", (){
    test("pedir ou marcar o item como emprestado e não deixa pedir de novo", (){
      final itensController = ItensController();
      final escada = itensController.itens.firstWhere((i) =>
        i.nome.startsWith("Escada")
      );

      expect(itensController.pedirEmprestado(escada), isTrue);
      expect(escada.disponivel, isFalse);
      expect(itensController.meusPedidos.contains(escada), isTrue);
      expect(itensController.meusPedidos, contains(escada));
      expect(itensController.pedirEmprestado(escada), isFalse);

    });

    test("pedir ou marcar o item não disponível", (){
      final itensController = ItensController();
      final cortadorDeGrama = itensController.itens.firstWhere((i) =>
        i.nome.startsWith("Cortador de grama")
      );

      expect(itensController.pedirEmprestado(cortadorDeGrama), isFalse);
      

    });
  });
}
