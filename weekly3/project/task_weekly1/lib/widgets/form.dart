import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_weekly1/models/order.dart';
import 'package:task_weekly1/pages/order_page.dart';
import 'package:task_weekly1/providers/order_provider.dart';
import 'package:task_weekly1/widgets/custom_color.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final formKey = GlobalKey<FormState>();
  var dataOrder = {'firstName': '', 'lastName': '', 'email': '', 'address': ''};
  TextEditingController _controllerFirstName = TextEditingController();
  TextEditingController _controllerLastName = TextEditingController();
  TextEditingController _controlleremail = TextEditingController();
  TextEditingController _controllerAddress = TextEditingController();

  void _onSubmit() {
    formKey.currentState!.save();

    final orderbaru = ModelOrder(
      firstName: dataOrder['firstName']!,
      lastName: dataOrder['lastName']!,
      email: dataOrder['email']!,
      address: dataOrder['address']!,
    );

    Provider.of<OrderProvider>(context, listen: false).tambahOrder(orderbaru);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controllerFirstName;
    _controllerLastName;
    _controlleremail;
    _controllerAddress;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "To order please complete the following data",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: blackColor),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _controllerFirstName,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                label: Text("First Name"),
                hintText: "First Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.length < 2) {
                  return 'Silakan input nama yang valid';
                }
                return null;
              },
              onSaved: (newValue) {
                if (newValue != null) dataOrder['firstName'] = newValue;
              },
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _controllerLastName,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                hintText: "Last Name",
                label: Text("Last Name"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.length < 2) {
                  return 'Silakan input nama yang valid';
                }
                return null;
              },
              onSaved: (newValue) {
                if (newValue != null) dataOrder['lastName'] = newValue;
              },
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _controlleremail,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Email",
                label: Text("Email"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.length < 3) {
                  return 'Silakan input nama yang valid';
                }
                return null;
              },
              onSaved: (newValue) {
                if (newValue != null) dataOrder['email'] = newValue;
              },
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _controllerAddress,
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              decoration: const InputDecoration(
                label: Text("Address"),
                hintText: "Address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.length < 2) {
                  return 'Silakan input nama yang valid';
                }
                return null;
              },
              onSaved: (newValue) {
                if (newValue != null) dataOrder['address'] = newValue;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState != null &&
                        formKey.currentState!.validate()) {
                      _onSubmit();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Menyinmpan data peserta...',
                          ),
                        ),
                      );
                      Navigator.of(context).pushNamed(OrderPage.routeName);
                    }
                  },
                  child: const Text(
                    "Checkout",
                    style: TextStyle(color: whiteColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
