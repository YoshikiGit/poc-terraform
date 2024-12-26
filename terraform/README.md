remote_stateを利用する場合は、remote_state配下でapplyすることでmain.tfを `plan | apply` できる。

aaply結果をcleanする場合
```console
terraform apply -destroy
```
