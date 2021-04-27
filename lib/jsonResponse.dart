import 'package:server_driven_ui/enums/widget_type.dart';

import 'props/props.dart';
import 'utils/utils.dart';

final jsonResponseBasic = {
  JsonUtils.content: {
    JsonUtils.type: WidgetType.column.asString,
    JsonUtils.data: {
      ColumnProps.mainAxisAlignment: 'spaceAround',
      JsonUtils.children: [
        {
          JsonUtils.type: WidgetType.column.asString,
          JsonUtils.data: {
            ColumnProps.mainAxisAlignment: 'center',
            JsonUtils.children: [
              {
                JsonUtils.type: WidgetType.text.asString,
                JsonUtils.data: {
                  TextProps.label: 'teste 1',
                },
              },
              {
                JsonUtils.type: WidgetType.text.asString,
                JsonUtils.data: {
                  TextProps.label: 'teste 2',
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
  JsonUtils.content: {
    JsonUtils.type: WidgetType.text.asString,
    JsonUtils.data: {
      TextProps.label: 'teste apenas com texto',
      StyleProps.style: {
        StyleProps.fontWeight: 'bold',
      },
    },
  }
};

final jsonResponseColumnAndRow = {
  JsonUtils.content: {
    JsonUtils.type: WidgetType.column.asString,
    JsonUtils.data: {
      ColumnProps.mainAxisAlignment: 'spaceAround',
      JsonUtils.children: [
        {
          JsonUtils.type: WidgetType.column.asString,
          JsonUtils.data: {
            JsonUtils.children: [
              {
                JsonUtils.type: WidgetType.text.asString,
                JsonUtils.data: {
                  TextProps.label: 'teste 1',
                },
              },
              {
                JsonUtils.type: WidgetType.text.asString,
                JsonUtils.data: {
                  TextProps.label: 'teste 2',
                },
              },
            ],
          }
        },
        {
          JsonUtils.type: WidgetType.row.asString,
          JsonUtils.data: {
            RowProps.mainAxisAlignment: 'center',
            JsonUtils.children: [
              {
                JsonUtils.type: WidgetType.text.asString,
                JsonUtils.data: {
                  TextProps.label: 'A',
                },
              },
              {
                JsonUtils.type: WidgetType.text.asString,
                JsonUtils.data: {
                  TextProps.label: 'B',
                },
              },
            ],
          }
        },
        {
          JsonUtils.type: WidgetType.text.asString,
          JsonUtils.data: {
            TextProps.label: 'uhuuuu',
          }
        },
      ],
    }
  }
};

final jsonResponseListView = {
  JsonUtils.content: {
    JsonUtils.type: WidgetType.listView.asString,
    JsonUtils.data: {
      JsonUtils.children: [
        {
          JsonUtils.type: WidgetType.listTile.asString,
          JsonUtils.data: {
            ListTileProps.title: {
              ListTileProps.label: 'label listtile 1'
            },
          },
        },
        {
          JsonUtils.type: WidgetType.listTile.asString,
          JsonUtils.data: {
            ListTileProps.title: {
              ListTileProps.label: 'label listtile 2'
            },
          },
        },
      ],
    },
  }
};

final jsonBasicContainer = {
  JsonUtils.content: {
    JsonUtils.type: WidgetType.container.asString,
    JsonUtils.action: {
      JsonUtils.type: 'navigation',
      JsonUtils.target: '/testRoute'
    },
    JsonUtils.data: {
      ContainerProps.width: 100.0,
      ContainerProps.height: 100.0,
      ContainerProps.color: '4f958d',
    },
  }
};

final jsonBeautifulPage = {
  JsonUtils.content: {
    JsonUtils.type: WidgetType.listView.asString,
    JsonUtils.data: {
      JsonUtils.children: [
        {
          JsonUtils.type: WidgetType.listTile.asString,
          JsonUtils.data: {
            ListTileProps.title: {
              ListTileProps.label: 'label listtile 1'
            },
          },
        },
        {
          JsonUtils.type: WidgetType.listTile.asString,
          JsonUtils.data: {
            ListTileProps.title: {
              ListTileProps.label: 'label listtile 2'
            },
          },
        },
      ],
    },
  }
};