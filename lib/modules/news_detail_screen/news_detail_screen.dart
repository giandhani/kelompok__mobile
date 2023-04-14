import 'package:flutter/material.dart';
import 'package:pertemuan_v/models/news.dart';

class NewsDetailScreen extends StatefulWidget {
  NewsDetailScreen({
    super.key,
    required this.news,
  });
  News news;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("News Detail"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Image.asset(widget.news.gambar),
              SizedBox(height: 10),
              Text(
                widget.news.judul,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 6),
              Text(
                widget.news.deskripsi,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ));
  }
}
