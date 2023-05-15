import 'package:flutter/material.dart';
import 'package:ftoast/ftoast.dart';
import 'package:panara_dialogs/panara_dialogs.dart';

///
import '../utils/strings.dart';
import '../../main.dart';

/// Empty Title & Subtite TextFields Warning
emptyFieldsWarning(context) {
  return FToast.toast(
    context,
    msg: MyString.oopsMsg,
    subMsg: "Você deve preencher todos os campos!",
    corner: 20.0,
    duration: 2000,
    padding: const EdgeInsets.all(20),
  );
}

/// Nothing Enter When user try to edit the current tesk
nothingEnterOnUpdateTaskMode(context) {
  return FToast.toast(
    context,
    msg: MyString.oopsMsg,
    subMsg: "Você deve editar as tarefas e tentar atualizá-las!",
    corner: 20.0,
    duration: 3000,
    padding: const EdgeInsets.all(20),
  );
}

/// No task Warning Dialog
dynamic warningNoTask(BuildContext context) {
  return PanaraInfoDialog.showAnimatedGrow(
    context,
    title: MyString.oopsMsg,
    message:
        "Não há nenhuma tarefa para excluir!\n Tente adicionar algumas e tente excluí-las!",
    buttonText: "Tudo bem",
    onTapDismiss: () {
      Navigator.pop(context);
    },
    panaraDialogType: PanaraDialogType.warning,
  );
}

/// Delete All Task Dialog
dynamic deleteAllTask(BuildContext context) {
  return PanaraConfirmDialog.show(
    context,
    title: MyString.areYouSure,
    message:
        "Você realmente deseja excluir todas as tarefas? Você não poderá desfazer esta ação!",
    confirmButtonText: "Sim",
    cancelButtonText: "Não",
    onTapCancel: () {
      Navigator.pop(context);
    },
    onTapConfirm: () {
      BaseWidget.of(context).dataStore.box.clear();
      Navigator.pop(context);
    },
    panaraDialogType: PanaraDialogType.error,
    barrierDismissible: false,
  );
}

/// lottie asset address
String lottieURL = 'assets/lottie/lottieImg.json';
