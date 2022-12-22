# flutter_todo_riverpod

- Ref: https://codewithandrea.com/articles/flutter-state-management-riverpod/
- Ref: https://codewithandrea.com/articles/flutter-riverpod-async-notifier/


## How to create a new flutter project?

```
flutter create flutter_todo_riverpod
```

Please note that, name can only contain `[a-z0-9_]`, and no dart reserved keywords are allowed.


## How to upgrade dependencies?

```
flutter pub upgrade --major-versions
```

It only updates pubspec.lock, but not pubspec.yaml.


## Annotation and generator

To support `@riverpod`

```
flutter pub run build_runner watch
```

Auto-generated code will be placed in `*.g.dart` files.


## Run (in Chrome browser)

```
flutter run -d chrome
```


## Test

```
flutter test
```


## Notes

### `ref.watch` vs `ref.read`

- `ref.watch` returns the value of a provider.
  - `final counter = ref.watch(counterProvider)`
- `ref.read` returns the provider
  - `ref.read(counterProvider.notifier).state++`
  - `ref.read(counterProvider.notifier).increment()`


### `ref.listen`

As far as I can tell, `ref.listen` is for listen to changes and do some side effects.


### All the icons

- https://fonts.google.com/icons?selected=Material+Icons
