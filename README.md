[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Important Links
APIs Repo
[https://github.com/skylarkJ/fobtales-api/tree/master](https://github.com/skylarkJ/fobtales-api/tree/master)

Client Repo
[https://github.com/skylarkJ/fobtales-client/tree/master](https://github.com/skylarkJ/fobtales-client/tree/master)

Live Application - Client
[https://skylarkj.github.io/fobtales-client/](https://skylarkj.github.io/fobtales-client/)

Live Application - Back-end - Heroku
[https://sleepy-hollows-32453.herokuapp.com/](https://sleepy-hollows-32453.herokuapp.com/)



# The technical part is described in the client repo

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |



### Reset Database without dropping

This is not a task developers should run often, but it is sometimes necessary.

**locally**

```sh
bin/rake db:migrate VERSION=0
bin/rake db:migrate db:seed db:examples
```

**heroku**

```sh
heroku run rake db:migrate VERSION=0
heroku run rake db:migrate db:seed db:examples
```

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
