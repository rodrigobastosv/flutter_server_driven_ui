final jsonResponse = {
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

final jsonResponse2 = {
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

final jsonResponse3 = {
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