import 'package:flutter/material.dart';
import 'package:next_talent_test/register_viewmodel.dart';
import 'package:next_talent_test/service.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff25367B),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff25367B),
          title: const Text(
            "Create new staff",
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
        children: [
          Form(
              key: context.read<RegisterViewModel>().formKey,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      controller:
                          context.read<RegisterViewModel>().staffIdController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          labelText: "Staff ID",
                          labelStyle: TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          icon: Icon(
                            Icons.person,
                            color: Colors.white,
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Staff ID can't be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller:
                          context.read<RegisterViewModel>().staffNameController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          labelText: "Staff Name",
                          labelStyle: TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          icon: Icon(
                            Icons.person,
                            color: Colors.white,
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Staff Name can't be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: context
                          .read<RegisterViewModel>()
                          .staffHobbyController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          labelText: "Hobby",
                          labelStyle: TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          icon: Icon(
                            Icons.sports_football,
                            color: Colors.white,
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller:
                          context.read<RegisterViewModel>().passwordController,
                      obscureText:
                          Provider.of<RegisterViewModel>(context, listen: true)
                              .isHiddenPassword,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          icon: const Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              context
                                  .read<RegisterViewModel>()
                                  .changeHiddenStatePass();
                            },
                            child: Provider.of<RegisterViewModel>(context,
                                        listen: true)
                                    .isHiddenPassword
                                ? const Icon(
                                    Icons.visibility_off,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.visibility,
                                    color: Colors.white,
                                  ),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can't be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: context
                          .read<RegisterViewModel>()
                          .confirmPasswordController,
                      obscureText:
                          Provider.of<RegisterViewModel>(context, listen: true)
                              .isHiddenConfirmPassword,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: "Confirm Password",
                          labelStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          icon: const Icon(
                            Icons.lock_clock_sharp,
                            color: Colors.white,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              context
                                  .read<RegisterViewModel>()
                                  .changeHiddenStateConfirmPass();
                            },
                            child: Provider.of<RegisterViewModel>(context,
                                        listen: true)
                                    .isHiddenConfirmPassword
                                ? const Icon(
                                    Icons.visibility_off,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.visibility,
                                    color: Colors.white,
                                  ),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Confirm password can't be empty";
                        } else if (value !=
                            context
                                .read<RegisterViewModel>()
                                .passwordController
                                .text) {
                          return "Confirm password and password does not match";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 48,
                      child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xff45CDDC)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0)))),
                          onPressed: () async {
                            final isValid = context
                                .read<RegisterViewModel>()
                                .formKey
                                .currentState!
                                .validate();

                            if (isValid) {
                              showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (context) => const Center(
                                        child: CircularProgressIndicator(),
                                      ));

                              await Service().postStaff(
                                  context
                                      .read<RegisterViewModel>()
                                      .staffIdController
                                      .text,
                                  context
                                      .read<RegisterViewModel>()
                                      .staffNameController
                                      .text,
                                  context
                                      .read<RegisterViewModel>()
                                      .staffHobbyController
                                      .text);
                              Navigator.of(context).pop();
                            }
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
