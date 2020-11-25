# code_gen

#### A simple on UI generation

### How to use


in lib/data/chopper.dart
put in the url for an API that returns a json of the following format

```javascript
    'scroll': True,
        'col': [
            {
                'row': [
                    {
                        'text': 'hi',
                        'bold': False,
                        'style': False,
                        'size': 25
                    },
                    {
                        'text': 'bold',
                        'bold': True,
                        'style': False,
                        'size': 20
                    },
                    {
                        'text': 'italic',
                        'bold': False,
                        'style': True,
                        'size': 15
                    },
                    {
                        'text': 'bold and italic',
                        'bold': True,
                        'style': True,
                        'size': 30
                    }
                ]
            },
            {
                'row': [
                    {
                        'text': 'italic',
                        'bold': False,
                        'style': True,
                        'size': 25
                    },
                    {
                        'text': 'bold and italic',
                        'bold': True,
                        'style': True,
                        'size': 25
                    },
                    {
                        'text': 'hi',
                        'bold': False,
                        'style': False,
                        'size': 25
                    },
                    {
                        'text': 'bold',
                        'bold': True,
                        'style': False,
                        'size': 25
                    },
                ]
            }
        ]
    }
```

```bash

flutter pub get

flutter packages pub run build_runner watch
```

Run the above code to generator the `chopper.chopper.dart', then 