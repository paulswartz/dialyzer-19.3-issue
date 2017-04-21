# DialyzerBug

On Erlang/OTP 19.2, `mix dialyzer` correctly finds the unknown type:

```
asdf local erlang 19.2
asdf local elixir 1.4.2
mix do deps.get, dialyzer
```
returns
```
...
Starting Dialyzer
dialyzer args: [check_plt: false,
 init_plt: '/Users/paulswartz/Projects/github/dialyzer-19.3-issue/_build/dev/dialyxir_erlang-19.2_elixir-1.4.2_deps-dev.plt',
 files_rec: ['/Users/paulswartz/Projects/github/dialyzer-19.3-issue/_build/dev/lib/dialyzer_bug/ebin'],
 warnings: [:unknown]]
done in 0m3.29s
:0: Unknown type 'Elixir.Type':t/0
done (warnings were emitted)
```


On 19.3 howevever:
```
asdf local erlang 19.3
asdf local elixir 1.4.2
mix do deps.get, dialyzer
```
returns
```
Starting Dialyzer
dialyzer args: [check_plt: false,
 init_plt: '/Users/paulswartz/Projects/github/dialyzer-19.3-issue/_build/dev/dialyxir_erlang-19.3_elixir-1.4.2_deps-dev.plt',
 files_rec: ['/Users/paulswartz/Projects/github/dialyzer-19.3-issue/_build/dev/lib/dialyzer_bug/ebin'],
 warnings: [:unknown]]
done in 0m1.86s
done (passed successfully)
```
