


import 'package:custom_drop/dialogs/exit_confirmation_dialog.dart';

import '../helper/dialog_helper.dart';
import 'package:flutter/material.dart';


class DialogHelper {

  static exit(context) => showDialog(context: context, builder: (context) => ExitConfirmationDialog());
}