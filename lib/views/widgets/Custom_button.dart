import 'package:flutter/material.dart';
import 'package:noteapp/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap, this.isLoading = false});
 final String? text;
 final VoidCallback? onTap;
 final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: MaterialButton(
        height: 55,
        elevation: 10,
        minWidth: MediaQuery.of(context).size.width,
        color: kPrimaruColor,
        onPressed: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: isLoading ? const LinearProgressIndicator(
          color: Colors.black,
          backgroundColor: Colors.white,
        ) : Text(
          text!,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
