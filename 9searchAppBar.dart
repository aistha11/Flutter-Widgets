import 'package:flutter/material.dart';


class MySearchAppBar extends StatefulWidget {
  @override
  _MySearchAppBarState createState() => _MySearchAppBarState();
}

class _MySearchAppBarState extends State<MySearchAppBar> {
  final List<String> kEnglishWords = [
    'Ant',
    'Ball',
    'Cat',
    'Dog',
    'Elephant',
    'Foul'
  ];
  _MySearchDelegate _delegate;

  @override
  void initState() {
    super.initState();
    _delegate = _MySearchDelegate(kEnglishWords);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Search AppBar'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () async {
                final String selected = await showSearch<String>(
                  context: context,
                  delegate: _delegate,
                );
                if (selected != null) {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('You Have Selected The Word $selected'),
                    ),
                  );
                }
              },
            ),
          ],
        ),
        body: Scrollbar(
          child: ListView.builder(
            itemCount: kEnglishWords.length,
            itemBuilder: (context, idx) {
              return ListTile(
                title: Text(kEnglishWords[idx]),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _MySearchDelegate extends SearchDelegate<String> {
  final List<String> _words;
  final List<String> _history;
  _MySearchDelegate(List<String> words)
      : _words = words,
        _history = <String>['Apple', 'Bat', 'Hello', 'Flutter'],
        super();

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        this.close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('You Have Selected The Word: '),
            GestureDetector(
              onTap: () {
                this.close(context, this.query);
              },
              child: Text(
                this.query,
                style: Theme.of(context)
                    .textTheme
                    .display1
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final Iterable<String> suggestions = this.query.isEmpty
        ? _history
        : _words.where((word) => word.startsWith(query));
    return _SuggestionList(
      query: this.query,
      suggestions: suggestions.toList(),
      onSelected: (String suggestion) {
        this.query = suggestion;
        this._history.insert(0, suggestion);
        showResults(context);
      },
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      query.isEmpty
          ? IconButton(
              tooltip: 'Voice Search',
              icon: Icon(Icons.mic),
              onPressed: () {
                this.query = 'TODO: Implement Voice Search';
              },
            )
          : IconButton(
              tooltip: 'Clear',
              icon: Icon(Icons.clear),
              onPressed: () {
                query = '';
                showSuggestions(context);
              },
            )
    ];
  }
}

class _SuggestionList extends StatelessWidget {
  const _SuggestionList({this.suggestions, this.query, this.onSelected});
  final List<String> suggestions;
  final String query;
  final ValueChanged<String> onSelected;
  @override
  Widget build(BuildContext context) {
    final textThme = Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int i) {
        final String suggestion = suggestions[i];
        return ListTile(
          leading: query.isEmpty ? Icon(Icons.history) : Icon(null),
          title: RichText(
            text: TextSpan(
                text: suggestion.substring(0, query.length),
                style: textThme.copyWith(fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: suggestion.substring(query.length),
                    style: textThme,
                  ),
                ]),
          ),
          onTap: () {
            onSelected(suggestion);
          },
        );
      },
    );
  }
}


