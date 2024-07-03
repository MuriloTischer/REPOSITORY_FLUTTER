// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:greengrocer_app/src/config/custom_colors.dart';
import 'package:greengrocer_app/src/models/item_model.dart';
import 'package:greengrocer_app/src/pages/common_widgets/quantity_widget.dart';
import 'package:greengrocer_app/src/services/util_services.dart';

class ProductScreen extends StatefulWidget {
  final ItemModel item;

  const ProductScreen({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final UtilServices utilServices = UtilServices();

  int cartItemQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Stack(
        children: [
          //!CONTEUDO
          Column(
            children: [
              Expanded(
                child: Hero(
                  tag: widget.item.imgUrl,
                  child: Image.asset(widget.item.imgUrl),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      //nome - quantidade
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.item.itemName,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.bold),
                            ),
                          ),
                          QuantityWidget(
                            value: cartItemQuantity,
                            result: ((quantity) {
                            setState(() {
                                cartItemQuantity = quantity;
                            });
                            }),
                            suffixText: widget.item.unit,
                          ),
                        ],
                      ),
                      //preço
                      Text(
                        utilServices.priceToCurrency(widget.item.price),
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.customSwatchColor,
                        ),
                      ),
                      //Descriçao
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: SingleChildScrollView(
                            child: Text(
                              widget.item.description,
                              style: const TextStyle(
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),

                      //Botao
                      SizedBox(
                        height: 55,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                          onPressed: () {},
                          label: const Text(
                            'Adicionar ao carrinho',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),

          Positioned(
            left: 10,
            top: 10,
            child: SafeArea(
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
