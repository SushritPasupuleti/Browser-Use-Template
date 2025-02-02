# Browser Use Framework

A good boilerplate to build automation flows with `browser-use`.

## Setup

Install `ollama`:

```bash
curl -fsSL https://ollama.com/install.sh | sh
# download the model mentioned in the `main.py`
```

Optional, setup the development environment with `nix`:

```bash
nix-shell
```

Install dependencies with poetry:

```bash
poetry install
```

Run the project with:

```bash
poetry shell
# follow the instructions to setup playwright for the first time
python main.py
```

