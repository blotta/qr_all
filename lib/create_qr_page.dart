import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CreateQRPage extends StatefulWidget {
  const CreateQRPage({super.key});

  @override
  State<CreateQRPage> createState() => _CreateQRPageState();
}

class _CreateQRPageState extends State<CreateQRPage> {
  final txtController = TextEditingController();

  String? qrstring;

  @override
  void dispose() {
    txtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox( height: 20.0),
          const Text(
            'Insert the QR code text',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    controller: txtController,
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        qrstring = txtController.text;
                      });
                    },
                    child: Icon(Icons.qr_code_2))
              ],
            ),
          ),
          if (qrstring != null)
            QrImage(
              data: qrstring!,
              version: QrVersions.auto,
              size: 250,
              gapless: false,
              backgroundColor: Colors.white,
            )
        ],
      ),
    );
  }
}
