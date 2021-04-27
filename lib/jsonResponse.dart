final jsonResponseBasic = {
  'content': {
    'type': 'column',
    'data': {
      'mainAxisAlignment': 'spaceAround',
      'children': [
        {
          'type': 'column',
          'data': {
            'mainAxisAlignment': 'center',
            'children': [
              {
                'type': 'text',
                'data': {
                  'label': 'teste 1',
                },
              },
              {
                'type': 'text',
                'data': {
                  'label': 'teste 2',
                },
              },
            ],
          }
        },
      ],
    }
  }
};

final jsonResponseSingleText = {
  'content': {
    'type': 'text',
    'data': {
      'label': 'teste apenas com texto',
      'style': {
        'fontWeight': 'bold',
      },
    },
  }
};

final jsonResponseColumnAndRow = {
  'content': {
    'type': 'column',
    'data': {
      'mainAxisAlignment': 'spaceAround',
      'children': [
        {
          'type': 'column',
          'data': {
            'children': [
              {
                'type': 'text',
                'data': {
                  'label': 'teste 1',
                },
              },
              {
                'type': 'text',
                'data': {
                  'label': 'teste 2',
                },
              },
            ],
          }
        },
        {
          'type': 'row',
          'data': {
            'mainAxisAlignment': 'center',
            'children': [
              {
                'type': 'text',
                'data': {
                  'label': 'A',
                },
              },
              {
                'type': 'text',
                'data': {
                  'label': 'B',
                },
              },
            ],
          }
        },
        {
          'type': 'text',
          'data': {
            'label': 'uhuuuu',
          }
        },
      ],
    }
  }
};

final jsonResponseListView = {
  'content': {
    'type': 'listView',
    'data': {
      'children': [
        {
          'type': 'listTile',
          'data': {
            'title': {
              'label': 'label listtile 1'
            },
          },
        },
        {
          'type': 'listTile',
          'data': {
            'title': {
              'label': 'label listtile 2'
            },
          },
        },
      ],
    },
  }
};

final jsonBasicContainer = {
  'content': {
    'type': 'container',
    'action': {
      'type': 'navigation',
      'target': '/testRoute'
    },
    'data': {
      'width': 100.0,
      'height': 100.0,
      'color': '4f958d',
    },
  }
};