import 'package:flutter/material.dart';

class NowPlayingModel {
  final String img;
  final String title;
  final String duration;
  final String genre;
  final String star;
  final Widget staricon;
  final String censorship;
  final String language;
  final String storyline;

  NowPlayingModel({
    required this.img,
    required this.title,
    required this.duration,
    required this.genre,
    required this.language,
    required this.star,
    required this.staricon,
    required this.censorship,
    required this.storyline,
  });
}