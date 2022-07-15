import 'package:flutter/foundation.dart';

class FaqModel
{
  final String? id;
  final bool? isOpen;
  final String? question;
  final String? answer;

 const FaqModel
  (
    {
      this.id,
      this.isOpen,
      this.question,
      this.answer,
    }
  );
}