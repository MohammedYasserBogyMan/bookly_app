import 'package:bookl_app/Features/home/data/models/book_model/image_links.dart';
import 'package:bookl_app/Features/home/data/models/book_model/industry_identifier.dart';
import 'package:bookl_app/Features/home/data/models/book_model/panelization_summary.dart';
import 'package:bookl_app/Features/home/data/models/book_model/reading_modes.dart';
import 'package:equatable/equatable.dart';

class VolumeInfo extends Equatable {
  final String title;
  final double? rating;
  final List<String> authors;
  final String publishedDate;
  final String language;
  final String previewLink;
  final String infoLink;
  final String imageUrl;
  final String maturityRating;
  final String contentVersion;
  final bool allowAnonLogging;
  final String? saleCountry;
  final String? buyLink;
  final bool isEbook;
  final String? webReaderLink;
  final List<IndustryIdentifier>? industryIdentifiers; // Added missing field
  final ReadingModes? readingModes; // Added missing field
  final int? pageCount; // Added missing field
  final String? printType; // Added missing field
  final PanelizationSummary? panelizationSummary; // Added missing field
  final ImageLinks? imageLinks; // Added missing field
  final String? canonicalVolumeLink; // Added missing field
  final List<String>? categories; // Added missing field

  const VolumeInfo({
    required this.rating,
    required this.title,
    required this.authors,
    required this.publishedDate,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.imageUrl,
    required this.maturityRating,
    required this.contentVersion,
    required this.allowAnonLogging,
    this.saleCountry,
    this.buyLink,
    required this.isEbook,
    this.webReaderLink,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.panelizationSummary,
    this.imageLinks,
    this.canonicalVolumeLink,
    this.categories,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      rating: json['averageRating'] != null
          ? (json['averageRating'] as num).toDouble()
          : null,
      title: json['title'] ?? '',
      authors:
          json['authors'] != null ? List<String>.from(json['authors']) : [],
      publishedDate: json['publishedDate'] ?? '',
      language: json['language'] ?? '',
      previewLink: json['previewLink'] ?? '',
      infoLink: json['infoLink'] ?? '',
      imageUrl: json['imageLinks']?['thumbnail'] ?? '',
      maturityRating: json['maturityRating'] ?? 'NOT_MATURE',
      contentVersion: json['contentVersion'] ?? '',
      allowAnonLogging: json['allowAnonLogging'] ?? false,
      saleCountry: json['saleInfo']?['country'],
      buyLink: json['saleInfo']?['buyLink'],
      isEbook: json['saleInfo']?['isEbook'] ?? false,
      webReaderLink: json['accessInfo']?['webReaderLink'],
      industryIdentifiers: json['industryIdentifiers'] != null
          ? List<IndustryIdentifier>.from(json['industryIdentifiers']
              .map((x) => IndustryIdentifier.fromJson(x)))
          : null,
      readingModes: json['readingModes'] != null
          ? ReadingModes.fromJson(json['readingModes'])
          : null,
      pageCount: json['pageCount'],
      printType: json['printType'],
      panelizationSummary: json['panelizationSummary'] != null
          ? PanelizationSummary.fromJson(json['panelizationSummary'])
          : null,
      imageLinks: json['imageLinks'] != null
          ? ImageLinks.fromJson(json['imageLinks'])
          : null,
      canonicalVolumeLink: json['canonicalVolumeLink'],
      categories: json['categories'] != null
          ? List<String>.from(json['categories'])
          : null,
    );
  }

  Map<String, dynamic> toJson() => {
        'averageRating': rating,
        'authors': authors,
        'title': title,
        'publishedDate': publishedDate,
        'industryIdentifiers':
            industryIdentifiers?.map((e) => e.toJson()).toList(),
        'readingModes': readingModes?.toJson(),
        'pageCount': pageCount,
        'printType': printType,
        'maturityRating': maturityRating,
        'allowAnonLogging': allowAnonLogging,
        'contentVersion': contentVersion,
        'panelizationSummary': panelizationSummary?.toJson(),
        'imageLinks': imageLinks?.toJson(),
        'language': language,
        'previewLink': previewLink,
        'infoLink': infoLink,
        'canonicalVolumeLink': canonicalVolumeLink,
        'categories': categories,
      };

  @override
  List<Object?> get props {
    return [
      rating,
      authors,
      title,
      publishedDate,
      industryIdentifiers,
      readingModes,
      pageCount,
      printType,
      maturityRating,
      allowAnonLogging,
      contentVersion,
      panelizationSummary,
      imageLinks,
      language,
      previewLink,
      infoLink,
      canonicalVolumeLink,
      categories,
    ];
  }
}
