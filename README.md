# environment
## Image build
```bash
$ docker image build -t eijimyzn/env:1.1.0 .
```

## Container run
```bash
$ docker container run -it --name env -h eiji_myzn v $HOME:/root/eiji_myzn  eijimyzn/env:1.1.0 /bin/ash
```

## DockerHub
[eijimyzn/env](https://cloud.docker.com/repository/docker/eijimyzn/env/general)



## Setting


### Environment
```
$ export EMAIL="MY_EMAIL@EMAIL.COM:$EMAIL"
```


### hub

1. open GitHub on browser
2. `Settings` → `Developer settings` → `Personal access tokens` → `Genarate new token`
3. Enter `Token description`
4. Click `repo` of `Select scopes`
5. Click `Generate token`
6. Copy (TOKEN)
7. Create `hub file`
```
$ vi ~/.config/hub
```
```
---
github.com:
- protocol: https
  user: MyznEiji
  oauth_token: (TOKEN)
```


### ssh
1. Create SSH key
The encryption strength is strong and the encryption strength is 4096.
```
$ ssh-keygen -t rsa -b 4096 -C "hogehoge@fuga.com"
# -t 暗号化方式を指定
# -b 暗号化強度を指定
# -C コメントを設定 

Generating public/private rsa key pair.
Enter file in which to save the key (/Users/ts/.ssh/id_rsa): id_rsa_github # 秘密鍵の名前を指定
Enter passphrase (empty for no passphrase):  #パスワードを入力
Enter same passphrase again:  # もう一度入力
Your identification has been saved in id_rsa_github.
Your public key has been saved in id_rsa_github.pub.
```

2. Confirm SSH key
```
$ ls -l /Users/ts/.ssh
-rw-------  1 ts  staff   938  9 15 22:53 config
-rw-------  1 ts  staff  3326 11  8 21:52 id_rsa_github # 秘密鍵
-rw-r--r--  1 ts  staff   757 11  8 21:52 id_rsa_github.pub # 公開鍵
```

3. Set public key on Github
`Settings` → `SSH keys` → `And SSH key`

4. Register your public key on GitHub
- Title
- - Set a name easy to understand for you 
- Key
- - Paste the created your public SSH key

5. Set config
```
$ vim /Users/ts/.ssh/config
```

```
Host github
  HostName github.com
  IdentityFile ~/.ssh/id_rsa_github #秘密鍵を指定
  User git
```

6. Register private key in ssh-agent
```
### ssh-agentが動作しているか確認
$ eval "$(ssh-agent -s)"
Agent pid 32047
# 動いていることが確認できました。

$ ssh-add /Users/ts/.ssh/id_rsa_github
Enter passphrase for /Users/ts/.ssh/id_rsa_github: # 鍵のpassword入力
Identity added: /Users/ts/.ssh/id_rsa_github (/Users/ts/.ssh/id_rsa_github)
```

7. Connection check
```
$ ssh -T git@github.com
Hi mackerel7! You've successfully authenticated, but GitHub does not provide shell access.
```
