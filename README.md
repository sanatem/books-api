# Books API

This an API to manage Books from a Library.

## Prerequisites

You will need the following to be installed:

* Ruby language >= 2.5
* Ruby on Rails >= 6.0
* Bundler (http://bundler.io/)

## Installation

1. Clone this repo.

2. Move into the folder of this project and execute:

```
$ bundle install
```

3. Finally, run the App executing:
```
$ rails server
```

## API endpoints

### GET /books
> It returns a list of books.

#### REQUIRED PARAMETERS

#### OPTIONAL PARAMETERS
|Name|Value|Description|
|-------|-------|-------|
|title|String| Search by book title.|
|isbn|String| Search by Book ISBN|
|author|String| Search by Author name or Surname|

#### REQUEST EXAMPLE (Without params)
``` /books```

#### RESPONSE EXAMPLE
```
{
    "data": [
        {
            "id": "1",
            "type": "book",
            "attributes": {
                "title": "The Stars' Tennis Balls",
                "isbn": "253629076-X",
                "price": 20.21,
                "description": "Dolor est aut. Autem quis qui. Molestiae voluptatum numquam.",
                "author": {
                    "data": {
                        "id": "1",
                        "type": "author",
                        "attributes": {
                            "name": "J.R.R",
                            "surname": "Tolkien"
                        }
                    }
                }
              }
            },
        ...
    ]
}
```

#### REQUEST EXAMPLE (With some param)
```GET /books?title=The+hobbit```

#### RESPONSE EXAMPLE
```
{  "data": [
        {
            "id": "1",
            "type": "book",
            "attributes": {
                "title": "The Hobbit",
                "isbn": "253629076-X",
                "price": 20.21,
                "description": "Dolor est aut. Autem quis qui. Molestiae voluptatum numquam.",
                "author": {
                    "data": {
                        "id": "1",
                        "type": "author",
                        "attributes": {
                            "name": "J.R.R",
                            "surname": "Tolkien"
                        }
                    }
                }
            }
          }
        ]
}
```


### GET /books/:id
> It retrieves information about an specific Book.

#### REQUEST EXAMPLE
``` GET /books/1```

#### REQUIRED PARAMETERS
|Name|Value|Description|
|-------|-------|-------|
|id|Integer| Book ID.|

#### RESPONSE EXAMPLE
```
{
    "data": {
        "id": "1",
        "type": "book",
        "attributes": {
            "title": "The Stars' Tennis Balls",
            "isbn": "253629076-X",
            "price": 20.21,
            "description": "Dolor est aut. Autem quis qui. Molestiae voluptatum numquam.",
            "author": {
                "data": {
                    "id": "1",
                    "type": "author",
                    "attributes": {
                        "name": "J.R.R",
                        "surname": "Tolkien"
                    }
                }
            }
        }
    }
}
```

### POST /books
> It creates a new book.

#### REQUEST EXAMPLE
``` POST /books/1```

### BODY EXAMPLE
```json
{ "book" : {"title": "Pepe 2", "isbn": "123566775"},
  "author": {
    "name": "J.R.R",
    "surname": "Tolkien"
    }
}
```

#### RESPONSE EXAMPLE
```
{
    "data": {
        "id": "1",
        "type": "book",
        "attributes": {
            "title": "The Stars' Tennis Balls",
            "isbn": "253629076-X",
            "price": 20.21,
            "description": "Dolor est aut. Autem quis qui. Molestiae voluptatum numquam.",
            "author": {
                "data": {
                    "id": "1",
                    "type": "author",
                    "attributes": {
                        "name": "J.R.R",
                        "surname": "Tolkien"
                    }
                }
            }
        }
    }
}
```

### DELETE /books/:id
> It deletes a book

#### REQUEST EXAMPLE
``` DELETE /books/1```



## Testing

The app contains a folder inside spec/ which has unit, controller and request tests.
To run all tests, move to the main folder of the project and execute:
```
$ rspec
```

## Implementation details


1. Models: These are the business models.

