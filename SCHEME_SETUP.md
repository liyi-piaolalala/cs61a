# Scheme / Racket 环境配置说明

以下步骤在 Windows 上适用，目的是让你可以在 VS Code 中运行 `.scm` 文件（使用 Racket）。

1. 安装 Racket
   - 访问 https://racket-lang.org/ 下载并安装最新的 Racket（Windows 安装包）。
   - 安装时建议保留将 `racket` 添加到 PATH 的选项（Installer 通常会处理）。

2. 验证安装（在 PowerShell 或 VS Code 终端中运行）

```
racket --version
```

3. 在 VS Code 中运行 Scheme 文件
   - 我已添加一个任务：在命令面板中选择 **Run Task -> Run Racket File**，或使用 `Ctrl+Shift+B`（若该任务为默认 build 任务）。
   - 任务使用 `racket ${file}` 来运行当前打开的文件。

4. 备用方法（命令行）

```
racket path\to\your\file.scm
```

5. 推荐工具
   - DrRacket：Racket 官方的图形 IDE，方便调试与交互式实验。
   - VS Code：如果希望在编辑器中运行，保留本目录下的任务配置即可。

6. 常见问题
   - 如果命令 `racket` 未找到，确认 Racket 已正确安装并添加到系统 PATH，或在任务中把 `command` 设为 Racket 的绝对路径（例如 `C:\Program Files\Racket\racket.exe`）。

7. 快速验证示例
   - 在 `lab/lab09/lab09.scm` 打开后运行任务，或在终端运行：

```
racket lab\lab09\lab09.scm
```

如需我帮你把 `command` 改为具体的绝对路径（如果你告诉我 Racket 的安装位置），我可以直接修改 `.vscode/tasks.json`。
