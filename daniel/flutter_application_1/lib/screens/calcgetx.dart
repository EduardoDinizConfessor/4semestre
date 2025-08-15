// import pacote para permitir o gerenciador de estado getx

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SumController extends GetxController{
  var number1 =0.0.obs; // variavel para armazenar o numero 1
  var number2 =0.0.obs; // variavel para armazenar o numero 2
  var result = 0.0.obs; // variavel para armazenar o resultado

  // Criando os metodos da classe
  void setNumber1(String value){
    number1.value = double.tryParse(value)??0.0; // converte o valor
  }

  void setNumber2(String value){
    number2.value = double.tryParse(value)??0.0;
  }

// função que calcula a soma
  void calculateSum(){
    result.value = number1.value + number2.value;
  }
}

class SumApp extends StatelessWidget {
  final SumController controller = Get.put(SumController()); // Injeta o controlador
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Somar numeros - GETX'
        ),
        
      ),
      body: Column(
        children: [
          TextField(
            keyboardType:TextInputType.number ,
            decoration: InputDecoration(
              labelText: 'Numero 1: ',
              border: OutlineInputBorder(),
            ),
            onChanged: (value)=>controller.setNumber1(value), // atualiza o numero 1
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
          labelText: 'Numero 2',
          border: OutlineInputBorder()
          ),
          onChanged: (value)=> controller.setNumber2(value), // atualiza o numero 2
          
          ),
          SizedBox(height: 16,),
          ElevatedButton(onPressed: controller.calculateSum, child: Text('Somar')),
          SizedBox(height: 16,),
          // Gerenciador de estado OBX

          Obx(()=>Text('Resultado: ${controller.result}',style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.bold),))
        ],
      )
    );
  }
}