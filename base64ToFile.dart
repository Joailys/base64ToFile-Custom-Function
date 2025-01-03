import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/flutter_flow/custom_functions.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/auth/custom_auth/auth_util.dart';

FFUploadedFile base64ToFile(String base64File) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // Decoding the base64 string into bytes
  final bytes = base64.decode(base64File);

  // Generating a unique file name using the current timestamp
  final fileName = '${DateTime.now().millisecondsSinceEpoch}.jpg';

  // Creating and returning an FFUploadedFile object with the decoded bytes and file name
  return FFUploadedFile(bytes: bytes, name: fileName);

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
