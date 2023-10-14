# vim-SQL-UPPER

Uppercase SQL keywords without the need of holding <kbd>Shift</kbd> or <kbd>CAPS LOCK</kbd>

## Installation

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

There is one variable, `g:SQL_UPPER`. Default value is `syntax`
|        Value          | Description |
|:---------------------:|:------------|
| 0                     | Disable auto-uppering |
| list                  | You can provide your own list of keywords, e.g. `let g:SQL_UPPER = [ "select", "from" ]` |
| `"syntax"`            | Keywords returned by `syntaxcomplete#OmniSyntaxList()` function |
| `"drupal"`            | Keywords from Drupal's [List of SQL reserved words](https://www.drupal.org/docs/develop/coding-standards/list-of-sql-reserved-words)  |
| `"wikipedia_all"`     | All keywords from Wikipedia's list of [SQL reserved word](https://en.wikipedia.org/w/index.php?title=List_of_SQL_reserved_words&oldid=1179780070) |
| `"wikipedia_sql2023"` | Keywords from Wikipedia's list of [SQL reserved word](https://en.wikipedia.org/w/index.php?title=List_of_SQL_reserved_words&oldid=1179780070) marked as 'In SQL:2023' |
