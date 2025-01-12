# TL;DR

- **Propósito:** Monitorar o progresso de dados sendo transferidos por um pipe.

- **Uso básico:**
  ```
  comando_de_origem | pv | comando_de_destino
  ```
  Substitua `comando_de_origem` pelo comando que gera dados e `comando_de_destino` pelo comando que recebe os dados.

- **Instalação:** Disponível na maioria das distribuições Linux por padrão. Para instalar, use:
  - Debian/Ubuntu: `sudo apt-get install pv`
  - CentOS/RHEL: `sudo yum install pv`

- **Opções comuns:**
  - `-p`: Mostra o progresso em porcentagem.
  - `-e`: Mostra o ETA (tempo estimado para conclusão).
  - `-s SIZE`: Especifica o tamanho total esperado dos dados.

- **Exemplo simples:**
  ```
  pv arquivo.tar.gz | gzip > arquivo.tar.gz.gz
  ```
  Isso mostra o progresso de compressão do arquivo `arquivo_grande.tar.gz`.

- **Monitoramento de velocidade:**
  ```
  dd if=/dev/zero bs=1M count=100 | pv -s 100M | dd of=/dev/null
  ```
  Este comando mede a velocidade de transferência de dados de `/dev/zero` para `/dev/null`.

- **Monitoramento de backup:**
  ```
  tar cf - /diretorio | pv -s $(du -sb /diretorio | awk '{print $1}') | gzip > backup.tar.gz
  ```
  Monitora e exibe o progresso ao criar um arquivo de backup compactado.