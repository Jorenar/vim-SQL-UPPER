# vim-SQL-UPPER

Uppercase SQL keywords without the need of holding <kbd>Shift</kbd> or <kbd>CAPS LOCK</kbd>

## Installation

#### [minPlug](https://github.com/Jorengarenar/minPlug):
```vim
MinPlug Jorengarenar/vim-SQL-UPPER
```

#### [vim-plug](https://github.com/junegunn/vim-plug):
```vim
Plug 'Jorengarenar/vim-SQL-UPPER'
```

#### Vim's packages
```bash
cd ~/.vim/pack/plugins/start
git clone git://github.com/Jorengarenar/vim-SQL-UPPER.git
```

## Usage

When you type an SQL keyword in an SQL file, it will be automatically uppercased
after you finish writting it.

Words in comments and strings will be ignored.

## Configuration

There is one variable, `g:SQL_UPPER`. Default value is `1`
|  Value | Description |
|:------:|:------------|
|    1   | Keywords from Wikipedia's list of [SQL reserved word](https://en.wikipedia.org/w/index.php?title=SQL_reserved_words&oldid=1016896932) marked as in SQL:2016 |
|    2   | All keywords from Wikipedia's list of [SQL reserved word](https://en.wikipedia.org/w/index.php?title=SQL_reserved_words&oldid=1016896932) |
|    5   | Keywords returned by `syntaxcomplete#OmniSyntaxList()` function |
|   10   | Keywords from Drupal's [List of SQL reserved words](https://www.drupal.org/docs/develop/coding-standards/list-of-sql-reserved-words)  |
| `list` | You can provide your own list of keywords, e.g. `let g:SQL_UPPER = [ "select", "from" ]` |
|    *   | Everything else disables auto-uppering |
