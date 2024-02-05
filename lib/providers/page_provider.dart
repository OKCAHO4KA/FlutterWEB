import 'package:flutter/material.dart';
import 'dart:html' as html;

class PageProvider extends ChangeNotifier {
  PageController scrollController = PageController();
  final List<String> _pages = [
    'Home',
    'About',
    'Pricing',
    'Contact',
    'Location'
  ];
  int _currentIndex = 0;

  goTo(int index) {
    html.window.history.pushState(null, 'none', '#/${_pages[index]}');
    // final routeName = _pages[index];
    scrollController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  createScrollController(String routeName) {
    scrollController = PageController(initialPage: getPageIndex(routeName));

    html.document.title = _pages[getPageIndex(routeName)];
    scrollController.addListener(() {
      final pageIndex = (scrollController.page ?? 0).round();
      if (pageIndex != _currentIndex) {
        html.window.history.pushState(null, 'none', '#/${_pages[pageIndex]}');
        _currentIndex = pageIndex;
        html.document.title = _pages[getPageIndex(routeName)];
      }
    });
  }

  int getPageIndex(String routeName) {
    final index = (!_pages.contains(routeName)) ? 0 : _pages.indexOf(routeName);
    return index;
  }
}
