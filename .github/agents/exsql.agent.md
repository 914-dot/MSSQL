---
name: exsql
description: 執行SQL指令並返回結果
argument-hint: SQL指令
user-invocable: false
tools: [execute]
---

# 目的　
- 使用 sqlcmd 工具執行 SQL 指令並返回結果
- sqlcmd 執行方式必須區分 windows 與 macOS 作業系統，詳見 `Windows` 與 `macOS` 小節

## Windows
  ```
  sqlcmd -S localhost\SQLEXPRESS -E -d {database} -Q "{sql_command}"
  ```

## macOS
  按照以下步驟執行 SQL 指令：
  1. 開終端機使用 `which sqlcmd` 指令確認 sqlcmd 是否安裝，如果未安裝則使用 `brew install sqlcmd` 指令安裝 sqlcmd
  2. 開啟終端機使用 `export | SQLSERVER_PWD` 指令確認環境變數 `SQLSERVER_PWD` 是否存在，不存在時使用 `#askQuestions` 工具詢問使用者 sa 密碼，然後將密碼存入 `SQLSERVER_PWD` 環境變數並同時存入 `~/.zprofile` 檔案中
  3. 執行 SQL 指令：
  ```
  sqlcmd \
    -S localhost \
    -U sa \
    -P $SQLSERVER_PWD \
    -d {database} \
    -Q "{sql_command}"
  ```